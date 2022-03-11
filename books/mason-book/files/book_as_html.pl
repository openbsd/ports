#!/usr/bin/perl -w
# Originally from http://www.masonbook.com/
# Hacked by Anil Madhavapeddy <avsm@openbsd.org> for HTML output

use strict;

package MasonBook::ToHTML;

use Pod::Simple 0.96;
use base qw( Pod::Simple );

use File::Basename;
use File::Spec;
use HTML::Entities;
use Image::Size qw( html_imgsize );
use Text::Wrap;
use URI;
use URI::Heuristic qw( uf_uristr );

$Text::Wrap::columns = 80;

sub new
{
    my $class = shift;
    my %p = @_;

    my $self = $class->SUPER::new(%p);

    $self->accept_code( qw( A G H K M N Q R T U ) );
    $self->accept_targets( qw( figure listing table ) );
    $self->accept_targets_as_text( qw( blockquote  ) );
    $self->accept_directive_as_processed( qw( head0 headrow row cell bodyrows ) );
    $self->merge_text(1);
    # set to 0 for debugging POD errors
    $self->no_errata_section(1);

    $self->{index} = $p{index};
    $self->{toc} = $p{toc};

    $self->{state} = { stack  => [],
                       text   => '',
                       last   => '',
                       ext    => $p{ext},
                       target => undef,
                       table_data        => undef,
                       toc_anchor_count  => 0,
                       current_file      => $p{current_file},
                       chapter_number    => $p{chapter_number},
                       listing           => 1,
                       figure            => 1,
                       table             => 1,
                       last_index_anchor => '',
                       last_a_link       => '',
                       save_for_toc      => 0,
                       item_count        => 0,
                       chapter_name      => $p{chapter_name},
                       in_footnote       => 0,
                       footnote_buffer   => '',
                       footnotes         => [],
                     };

    return $self;
}

# why did ORA use Z<> when it could have used something not in use?  I
# dunno.  But Pod::Simple simply drops Z<> on the floor normally, so
# this hack undoes that.
sub _treat_Zs {}

my @actions = ( [ qr/^head(?:0|1|2)$/ => '_toc_flag_on', '_toc_flag_off' ],
                [ qr/^Para$/          => '_para_begin', '_para_end' ],
                [ qr/^over-text$/     => '_over_text_begin', '_over_text_end' ],
                [ qr/^item-text$/     => '_item_text_begin', '_item_text_end' ],
                [ qr/^over-number$/   => '_over_number_begin', '_over_number_end' ],
                [ qr/^item-number$/   => '_item_number_begin', undef ],
                [ qr/^over-bullet$/   => '_over_bullet_begin', '_over_bullet_end' ],
                [ qr/^item-bullet$/   => '_item_bullet_begin', undef ],
                [ qr/^N$/             => '_N_begin', '_N_end' ],
                [ qr/^for$/           => '_for_begin', '_for_end' ],
                [ qr/^Document$/      => undef, '_append_footnotes' ],
                [ qr/^headrow$/       => '_headrow_begin', undef ],
                [ qr/^bodyrows$/      => '_bodyrows_begin', undef ],
                [ qr/^row$/           => '_row_begin', undef ],
                [ qr/^cell$/          => '_cell_begin', undef ],
              );

sub _handle_element_start
{
    my ( $self, $elt, $data ) = @_;

    $self->_push_elt_stack($elt);

    foreach my $a (@actions)
    {
        if ( $elt =~ /$a->[0]/ && $a->[1] )
        {
            my $m = $a->[1];
            $self->$m($elt, $data);
        }
    }

    $self->{state}{text} = '';
}

sub _toc_flag_on  { my ($level) = ($_[1] =~ /(\d+)/);
                    $_[0]->{state}{save_for_toc} = $level + 1; }
sub _toc_flag_off { $_[0]->{state}{save_for_toc} = 0 }

sub _para_begin   { $_[0]->_out( qq|<p class="content">\n| ) }
sub _para_end     { $_[0]->_out( "\n</p>\n" ) }

sub _over_text_begin { $_[0]->_reset_item_count; $_[0]->_out( qq|<ul>\n| ) }
sub _over_text_end   { $_[0]->_reset_item_count; $_[0]->_out( "\n</ul>\n" ) }

sub _item_text_begin { $_[0]->_out( "</li>\n" )
                           if $_[0]->_item_count;
                       $_[0]->_out( qq|<li>\n<div class="book-list-item-heading">\n| );
                       $_[0]->_increment_item_count }
sub _item_text_end   { $_[0]->_out("</div>\n") }

sub _over_number_begin { $_[0]->_reset_item_count; $_[0]->_out( qq|<ol>\n| ) }
sub _over_number_end   { $_[0]->_reset_item_count; $_[0]->_out( "\n</ol>\n" ) }


sub _item_number_begin { $_[0]->_out( "</li>\n" )
                             if $_[0]->_item_count;
                         $_[0]->_out( "<li>\n" );
                         $_[0]->_increment_item_count }

sub _over_bullet_begin { $_[0]->_reset_item_count; $_[0]->_out( qq|<ul>\n| ) }
sub _over_bullet_end   { $_[0]->_reset_item_count; $_[0]->_out( "\n</ul>\n" ) }


sub _item_bullet_begin { $_[0]->_out( "</li>\n" )
                             if $_[0]->_item_count;
                         $_[0]->_out( "<li>\n" );
                         $_[0]->_increment_item_count }

sub _headrow_begin  { $_[0]->{state}{table_data}{current} = 'head' }
sub _bodyrows_begin { $_[0]->{state}{table_data}{current} = 'body' }

sub _row_begin
{
    my $self = shift;

    $self->_out( "  </td>\n" )
        if $self->{state}{table_data}{cell_count};

    $self->{state}{table_data}{row_count} ||= 0;
    $self->_out( " </tr>\n" )
        if $self->{state}{table_data}{row_count};

    $self->_out( qq| <tr valign="top">\n| );

    $self->{state}{table_data}{row_count}++;

    $self->{state}{table_data}{cell_count} = 0;
}

sub _cell_begin
{
    my $self = shift;

    $self->_out( "  </td>\n" )
        if $self->{state}{table_data}{cell_count};

    my $attr =
        $self->{state}{table_data}{current} eq 'head' ? ' class="table-head"' : '';

    $self->_out( "  <td$attr>\n" );

    $self->{state}{table_data}{cell_count}++;
}

sub _N_begin
{
    my $self = shift;

    my $number = scalar @{ $self->{state}{footnotes} } + 1;
    $self->_out( qq|<sup><a href="#FOOTNOTE-ANCHOR-$number">$number</a></sup>| );
    $self->_out( qq|<a name="RETURN-ANCHOR-$number"></a>| );

    $self->{state}{in_footnote} = 1;
}

sub _N_end
{
    my $self = shift;

    push @{ $self->{state}{footnotes} }, $self->{state}{footnote_buffer};
    $self->{state}{footnote_buffer} = '';
    $self->{state}{in_footnote} = 0;
}

sub _for_begin
{
    my ( $self, $elt, $data ) = @_;

    $self->{state}{target} = { name => $data->{target} };
    my $target = $data->{target};

    if ( $target eq 'listing' || $target eq 'figure' )
    {
        $self->_out( qq|\n<p class="content">\n| );
    }
    elsif ( $target eq 'blockquote' )
    {
        $self->_out( qq|<blockquote>\n| );
    }
    elsif ( $target eq 'table' )
    {
        $self->_out( qq|\n<table cellspacing="0" cellpadding="4">\n| );
    }

}
sub _for_end
{
    my $self = shift;

    my $target = $self->{state}{target}{name};

    if ( $target eq 'listing' || $target eq 'figure' )
    {
        $self->_out( "\n</p>\n" );
    }
    elsif ( $target eq 'blockquote' )
    {
        $self->_out( "\n</blockquote>\n\n" );
    }
    elsif ( $target eq 'table' )
    {
        $self->_out( "   </td>\n </tr>\n</table>\n" );

        $self->_out( '<span class="caption">' .
                     encode_entities( $self->{state}{target}{caption} ) .
                     "</span>\n" )
            if $self->{state}{target}{caption};
    }

    $self->{state}{target} = undef;
}

sub _handle_text
{
    my ( $self, $text ) = @_;

    if ( $self->{state}{target} )
    {
        if ( $self->{state}{target}{name} eq 'listing' ||
             $self->{state}{target}{name} eq 'figure' ||
             $self->{state}{target}{name} eq 'table' )
        {
            unless ( $self->{state}{target}{caption} )
            {
                my $thing =
                    ( $self->{state}{target}{name} eq 'listing' ? 'Example' :
                      $self->{state}{target}{name} eq 'figure'  ? 'Figure' :
                      'Table'
                    );

                my $number = $self->{state}{ $self->{state}{target}{name} }++;

                if ( $self->{state}{target}{name} eq 'table' )
                {
                    $text =~ s/\s*picture//;
                }

                $self->{state}{target}{caption} =
                    "$thing $self->{state}{chapter_number}-$number.  $text";

                return;
            }

            if ( $text =~ s/Z<([^>]+)>// )
            {
                local $self->{state}{target} = undef;
                # no need to rewrite Z handling code
                $self->_push_elt_stack('Z');
                $self->_handle_text($1);
                $self->_pop_elt_stack;
            }

            return unless length $text;

            if ( $self->{state}{target}{name} eq 'listing' )
            {
                $self->_out( qq|<div class="example">\n<span class="caption">| .
                             encode_entities( $self->{state}{target}{caption} ) .
                             "</span>\n" );

                local $self->{state}{target} = undef;
                # see above
                $self->_push_elt_stack('Verbatim');
                $self->_handle_text($text);
                $self->_pop_elt_stack;

                $self->_out( "\n</div>\n" );

                return;
            }
            elsif ( $self->{state}{target}{name} eq 'figure' )
            {
                my ($image) = $text =~ /F<([^>]+)/;

                my $hw = html_imgsize( File::Spec->catfile( 'figures', $image ) );

                $self->_out( qq|<br />\n<img src="figures/$image" $hw /><br />\n| .
                             '<span class="caption">' .
                             encode_entities( $self->{state}{target}{caption} ) .
                             "</span>\n"
                           );

                return;
            }
        }
    }

    $text = "$self->{state}{chapter_name}: $text"
        if $self->_current_elt eq 'head0' && length $self->{state}{chapter_name};

    if ( $self->{state}{save_for_toc} && $self->{toc} )
    {
        my $anchor = "TOC-ANCHOR-" . $self->{state}{toc_anchor_count}++;
        $self->_add_to_toc($text, $anchor);

        $self->_out( qq|<a name="$anchor"></a>\n| );
    }

    if ( $self->_current_elt eq 'A' )
    {
        $self->{state}{last_a_link} = $text;

        return;
    }

    if ( $self->_last_elt eq 'A' && $self->_parent_elt ne 'X' )
    {
        return if $self->_handle_A_link($text);
    }

    if ( $self->_current_elt eq 'U' )
    {
        my $uri = uf_uristr($text);

        $text = encode_entities($text);

        $self->_out( qq|<a href="$uri">$text</a>| );

        return;
    }

    if ( $self->_current_elt eq 'X' )
    {
        return unless $self->{index} && $self->_parent_elt eq 'Z';

        $self->_remember_for_index($text);

        return;
    }

    return unless $text =~ /\S/;

    $text = encode_entities($text);

    if ( $self->_current_elt eq 'Z' )
    {
        $self->_out( qq|<a name="$text"></a>\n| );

        if ( $self->{do_index} )
        {
            $self->{state}{last_index_anchor} = $text;
        }

        return;
    }

    # ORA apparently put a space between the parens, which looks good
    # in the book, but not so good online.
    if ( $self->_current_elt eq 'C' )
    {
        $text =~ s/(\w+)\( \)/$1()/g;
    }

    my @text = $self->_current_elt eq 'Verbatim' ? $text : wrap( '', '', $text );

    $self->_out( "\n<br />\n" )
        if $self->_current_elt =~ /^head/ && $self->_last_elt eq 'Verbatim';

    my ( $start, $end ) = $self->_tag( $self->_current_elt );

    $self->_out( $start, @text, $end );
}

sub _add_to_toc
{
    my ( $self, $text, $anchor ) = @_;

    my $link = $self->{state}{current_file};
    $link .= "#$anchor" unless $self->{state}{save_for_toc} == 1;

    push @{ $self->{toc} }, { level => $self->{state}{save_for_toc},
                              text  => $text,
                              link  => $link,
                            };
}

sub _handle_A_link
{
    my ( $self, $text ) = @_;

    return unless
        $self->{state}{last_a_link} &&
        $self->{state}{last_a_link} =~ /^(?:(CHP-(\d\d?))|(APP-([ABCD])))(-?)/;

    my $url = $1 ? "chapter-$2$self->{state}{ext}" : "appendix-\L$4\E$self->{state}{ext}";
    $url .= "#$self->{state}{last_a_link}" if $5;

    $text =~ s/("[^"]+?"|\S+\s+(?:[^,.:\s]+))//s;

    my $link_text = encode_entities($1);
    my $href = qq|<a href="$url">$link_text</a>|;

    $self->_out( $href, encode_entities($text) );

    $self->{state}{last_a_link} = '';

    return 1;
}

sub _remember_for_index
{
    my ( $self, $text ) = @_;

    my @pieces;
    foreach my $piece ( split /\s*;\s*/, $text )
    {
        # split on single colons but not double colons!
        my @p = split /(?<!:):(?!:)/, $piece;

        my ( $term, $sort_as ) = @p == 1 ? ($p[0], $p[0]) : @p;

        for ( $term, $sort_as ) { s/^\s+|\s+$//; }

        push @pieces, { term => $term, sort_as => $sort_as };
    }


    my $heading =
        ( substr( $pieces[0]{sort_as}, 0, 1 ) =~ /[a-z]/i ?
          uc substr( $pieces[0]{sort_as}, 0, 1 ) :
          'Symbols'
        );

    push @{ $self->{index} }, { pieces  => \@pieces,
                                anchor  => $self->{state}{last_index_anchor},
                                heading => $heading,
                              };
}

sub _out
{
    my $self = shift;

    if ( $self->{state}{in_footnote} )
    {
        $self->{state}{footnote_buffer} .= join '', @_;
    }
    else
    {
        print { $self->{output_fh} } @_;
    }
}

my %tags = ( head0 => 'h1',
             head1 => 'h2',
             head2 => 'h3',
             head3 => 'h4',
             head4 => 'h5',

             'B'   => 'strong',
             'C'   => 'code',
             'F'   => 'u',
             'I'   => 'em',
             'R'   => 'em',
             'T'   => 'em',

             # URLs are handled specially
             'U'   => '',
             'X'   => '',
             'Z'   => '',

             'Verbatim' => [ qq|<div class="example-code">\n<pre>|, qq|</pre>\n</div>| ],
           );
sub _tag
{
    my ( $self, $elt ) = @_;

    my $tag = $tags{$elt};

    if ( ref $tag )
    {
        return @$tag;
    }
    elsif ( $tag )
    {
        return "<$tag>", "</$tag>";
    }

    # handle specially
    return '', '';
}

sub _handle_element_end
{
    my ( $self, $elt ) = @_;

    $self->_pop_elt_stack($elt);

    foreach my $a (@actions)
    {
        if ( $elt =~ /$a->[0]/ && $a->[2] )
        {
            my $m = $a->[2];
            $self->$m($elt);
        }
    }

    $self->{state}{last} = $elt;
}

sub _append_footnotes
{
    my $self = shift;

    return unless @{ $self->{state}{footnotes} };

    $self->_out( "\n<h4>Footnotes</h4>\n" );

    my $x = 1;
    foreach my $note ( @{ $self->{state}{footnotes} } )
    {
        $self->_out( qq|<a name="FOOTNOTE-ANCHOR-$x"></a>\n| .
                     qq|<p class="content">\n$x. $note| .
                     qq| -- <a href="#RETURN-ANCHOR-$x">Return</a>.\n| .
                     "</p>\n" );

        $x++;
    }
}

sub _current_elt { $_[0]->{state}{stack}[-1] }
sub _elt_at      { $_[0]->{state}{stack}[ $_[1] ] }
sub _parent_elt  { $_[0]->{state}{stack}[-2] || '' }
sub _last_elt    { $_[0]->{state}{last} || '' }

sub _push_elt_stack { push @{ $_[0]->{state}{stack} }, $_[1] }
sub _pop_elt_stack  { pop @{ $_[0]->{state}{stack} } }

sub _item_count           { $_[0]->{state}{item_count} }
sub _reset_item_count     { $_[0]->{state}{item_count} = 0; }
sub _increment_item_count { $_[0]->{state}{item_count}++ }

package main;

use File::Basename;
use File::Copy;
use File::Path;
use File::Spec;
use Getopt::Long;
use HTML::Entities;

my %opts;
GetOptions( 'index'    => \$opts{index},
            'toc'      => \$opts{toc},
            'all'      => \$opts{all},
            'target=s' => \$opts{target},
            'ext=s'    => \$opts{ext},
            'help'     => \$opts{help},
          );

unless ( $opts{target} )
{
    warn "Must provide a --target directory.\n";
    exit 1;
}

$opts{ext} ||= '.html';

mkpath( $opts{target}, 1, 0755 );
mkpath( File::Spec->catdir( $opts{target}, 'figures' ), 1, 0755 );

foreach my $fig ( glob File::Spec->catfile( 'figures', 'mas*.png' ) )
{
    my $to = File::Spec->catfile( $opts{target}, 'figures', basename($fig) );
    copy $fig => $to
        or die "Cannot copy $fig to $to: $!";
}

{
    my $to = File::Spec->catfile( $opts{target}, basename($0) );
    copy $0 => $to
        or die "Cannot copy $0 to $to: $!";
}

if ( $opts{all} )
{
    $opts{index} = $opts{toc} = 1;

    my @chapters = map { "ch$_.pod" } 1..12;
    my @apps = map { "appendix-$_.pod" } 'a'..'d';

    @ARGV = ( 'foreword.pod', 'preface.pod', @chapters, @apps,
              'glossary.pod', 'colophon.pod', 'copyright.pod' );
}

my (@toc, @index);
foreach my $file (@ARGV)
{
    my $target = $file;
    $target =~ s/^ch/chapter-/;
    $target =~ s/\.pod/$opts{ext}/;

    $target = File::Spec->catfile( $opts{target}, $target );

    my $chapter_name =
        ( $file =~ /^ch(\d+)/                ? "Chapter $1"    :
          $file =~ /^appendix-(\w)/          ? "Appendix \U$1" :
          ''
        );

    my ($chapter_number) = ($file =~ /^(?:ch|appendix-)([\dabcd]+)/);

    my $p = MasonBook::ToHTML->new( %opts,
                                    ext    => $opts{ext},
                                    current_file   => basename($target),
                                    chapter_name   => $chapter_name,
                                    chapter_number => uc $chapter_number,
                                    $opts{toc}   ? ( toc   => \@toc )   : (),
                                    $opts{index} ? ( index => \@index ) : (),
                                  );
    $p->output_fh(*FH);

    open IN, "<$file" or die "Cannot read $file: $!";
    my $data = join '', <IN>;

    # needed so Pod::Simple allows these as real =begin/=end constructs
    $data =~ s/=begin\s+(\S+)\s+(\S+)(.+?)=end(?!\s+\1)/=begin $1\n\n$2\n$3=end $1\n/sg;

    warn "$file => $target\n";
    open FH, ">$target"
        or die "Cannot write to $target: $!";

    print FH <<"EOF";
<html>
<head>
<title>Embedding Perl in HTML with Mason: $chapter_name</title>
<body>
<p class="book-menu">
<a href="index.html">Table of Contents</a>
|
<a href="foreword.html">Foreword</a>
|
<a href="preface.html">Preface</a>
<br>
Chapters: 
<a href="chapter-1.html">1</a>
<a href="chapter-2.html">2</a>
<a href="chapter-3.html">3</a>
<a href="chapter-4.html">4</a>
<a href="chapter-5.html">5</a>
<a href="chapter-6.html">6</a>
<a href="chapter-7.html">7</a>
<a href="chapter-8.html">8</a>
<a href="chapter-9.html">9</a>
<a href="chapter-10.html">10</a>
<a href="chapter-11.html">11</a>
<a href="chapter-12.html">12</a>
<br>
Appendices:
<a href="appendix-a.html">A</a>
<a href="appendix-b.html">B</a>
<a href="appendix-c.html">C</a>
<a href="appendix-d.html">D</a>
<br>
<a href="glossary.html">Glossary</a>
|
<a href="colophon.html">Colophon</a>
|
<a href="copyright.html">Copyright</a>
EOF

    $p->parse_string_document($data);

    print FH <<'EOF';
<hr>
</body>
</html>
EOF
}

if ( $opts{toc} )
{
    my $toc = File::Spec->catfile( $opts{target}, "index$opts{ext}" );

    warn "Writing TOC in $toc\n";

    open *FH, ">$toc"
        or die "Cannot write toc: $!";
    print FH (toc_as_html(@toc));
}

if ( $opts{index} )
{
    my $index = File::Spec->catfile( $opts{target}, "the-index$opts{ext}" );

    warn "Writing index in $index\n";

    open *FH, ">$index"
        or die "Cannot write index: $!";
    print FH (index_as_html(@index));
}

sub toc_as_html
{
    my $last_level = 0;

    my $html =
        qq|<html><head><title>Embedding Perl in HTML with Mason</title></head><body><h1>Embedding Perl in HTML with Mason</h1><hr width="80%" align="left">\n<h2>Table of Contents</h2>\n|;

    foreach my $item (@_)
    {
        if ( $item->{level} > $last_level )
        {
            until ( $last_level == $item->{level} )
            {
                $html .= "\n<ul>\n";
                $last_level++;
            }
        }
        elsif ( $item->{level} < $last_level )
        {
            until ( $last_level == $item->{level} )
            {
                $html .= "\n</ul>\n";
                $last_level--;
            }
        }

        $html .= qq|<li><a href="$item->{link}">|;
        $html .= encode_entities( $item->{text} );
        $html .= "</a></li>\n";

        $last_level = $item->{level};
    }

    while ( $last_level-- )
    {
        $html .= "\n</ul>\n";
    }

    $html .= qq|\n<hr width="80%" align="left">\n</body></html>|;

    return $html;
}

sub index_as_html
{
    return '';
}
