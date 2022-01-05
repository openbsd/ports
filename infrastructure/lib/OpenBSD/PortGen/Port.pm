# $OpenBSD: Port.pm,v 1.22 2022/01/05 09:12:50 espie Exp $
#
# Copyright (c) 2015 Giannis Tsaraias <tsg@openbsd.org>
# Copyright (c) 2019 Andrew Hewus Fresh <afresh1@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

package OpenBSD::PortGen::Port;

use 5.012;
use warnings;

use Cwd;
use Fcntl qw( :mode );
use File::Find qw();
use File::Path qw( make_path );
use JSON::PP;
use Text::Wrap;

use OpenBSD::PortGen::License qw( is_good pretty_license );
use OpenBSD::PortGen::Utils qw(
    add_to_new_ports
    module_in_ports
    fetch
    base_dir
    ports_dir
);

my @make_options;

sub add_make_options
{
	my $self = shift;
	push(@make_options, @_);
}

sub _cp {
    my (@args) = @_;
    system('/bin/cp', @args) == 0;
}

sub new
{
	my ( $class, %args ) = @_;
	my $self = bless {%args}, $class;
	return $self;
}

sub get
{
	return fetch( shift->base_url() . shift );
}

sub get_json
{
	return decode_json( shift->get(shift) );
}

sub get_json_file
{
	my ( $self, $file ) = @_;

	open my $h, '<', $file or die $!;
	my $data = do { local $/ = undef; <$h> };
	return decode_json $data;
}

sub set_descr
{
	my ( $self, $text ) = @_;

	$self->{descr} = $self->_format_descr($text);
}

sub write_descr
{
	my $self = shift;

	my $text = $self->{descr};

	if ( not -d 'pkg' ) {
		mkdir 'pkg' or die $!;
	}

	open my $descr, '>', 'pkg/DESCR'
	    or die $!;

	say $descr $text;
}

sub _format_descr
{
	my ( $self, $text ) = @_;

	return 'No description available for this module.'
	    if not $text or $text =~ /^\s*$/;

	$text =~ s/^ *//mg;
	$text =~ s/^\s*|\s*$//g;

	my $lines = split /\n/, $text;

	if ( $lines > 5 ) {
		my @paragraphs = split /\n\n/, $text;
		$text = $paragraphs[0];
	}

	local $Text::Wrap::columns = 80;
	return Text::Wrap::wrap( '', '', $text );
}

sub set_comment
{
	my ( $self, $comment ) = @_;

	unless ($comment) {
		$self->{COMMENT} = 'no comment available';
		return;
	}

	$comment =~ s/\n/ /g;
	$self->{full_comment} = $comment if length $comment > 60;
	$comment = $self->_format_comment($comment);
	$self->add_notice( "Comment starts with an uppercase letter" )
	    if $comment =~ /^\p{Upper}/;
	$self->{COMMENT} = $comment;
}

sub set_pkgname {
	my ( $self, $pkgname ) = @_;

	$self->{PKGNAME} = $pkgname;
}

sub pick_distfile
{
	my ( $self, @files ) = @_;

	my ($distname, $ext);
	foreach my $filename (@files) {
		# from EXTRACT_CASES
		($distname, $ext) = $filename =~ /^(.*)(\.(?:
		    tar\.xz  | tar\.lzma
		  | tar\.lz
		  | zip
		  | tar\.bz2 | tbz2    | tbz
		  | shar\.gz | shar\.Z | sh\.Z | sh\.gz
		  | shar     | shar\.sh
		  | tar
		  | tar\.gz  | tgz
		))$/xms;

		next unless $ext;

		# These are our preferred suffixes
		if ( $ext eq '.tar.gz' or $ext eq '.tgz' or $ext eq '.tar' ) {
			last;
		}
	}

	$self->add_notice("Failed to pick a distname from @files") unless $distname;

	$self->set_other( EXTRACT_SUFX => $ext ) if $ext;
	return $self->set_distname($distname);
}

sub set_distname
{
	my ( $self, $distname ) = @_;

	$self->{DISTNAME} = $distname;
}

sub set_license
{
	my ( $self, $license ) = @_;

	if ( is_good($license) ) {
		$self->{PERMIT_PACKAGE} = 'Yes';
	} else {
		$self->{PERMIT_PACKAGE}   = 'unknown license';
		$self->{PERMIT_DISTFILES} = 'unknown license';
	}

	$self->{license} = pretty_license($license);
}

sub set_modules
{
	my ( $self, $modules ) = @_;

	$self->{MODULES} = $modules;
}

sub set_categories
{
	my ( $self, $categories ) = @_;

	$self->{CATEGORIES} = $categories;
}

sub set_build_deps
{
	my ( $self, $build_deps ) = @_;

	$self->{BUILD_DEPENDS} = $build_deps;
}

sub set_run_deps
{
	my ( $self, $run_deps ) = @_;

	$self->{RUN_DEPENDS} = $run_deps;
}

sub set_test_deps
{
	my ( $self, $test_deps ) = @_;

	$self->{TEST_DEPENDS} = $test_deps;
}

sub set_fix_extract_permissions
{
	my ($self, $value) = @_;

	return $self->{FIX_EXTRACT_PERMISSIONS} = $value
	    if @_ == 2;

	my $perm_file = S_IRUSR | S_IRGRP | S_IROTH;
	my $perm_dir  = S_IXUSR | S_IXGRP | S_IXOTH | $perm_file;

	# Assume a cached stat on whatever mode we are checking
	my $perm_ok = sub {
		my $mode = ( stat _ )[2];
		return S_ISDIR($mode)
		    ? ($mode & $perm_dir ) == $perm_dir
		    : ($mode & $perm_file) == $perm_file;
	};

	my $wrksrc = $self->make_show('WRKSRC');

	# Look through WRKSRC for files that don't have
	# the necessary permissions.
	my $needs_fix;
	File::Find::find({ no_chdir => 1, wanted => sub {
		$needs_fix = $File::Find::prune = 1
		    if $needs_fix or not $perm_ok->();
	} }, $wrksrc );

	return $self->{FIX_EXTRACT_PERMISSIONS} = $needs_fix ? 'Yes' : undef;
}

sub set_other
{
	my ( $self, $var, $value ) = @_;

	$self->{$var} = $value;
}

sub get_other
{
	my ( $self, $var ) = @_;

	return $self->{$var};
}

sub name_new_port
{
	my ( $self, $name ) = @_;

	my $prefix = $self->ecosystem_prefix;

	if ( my $in_ports = module_in_ports( $name, $prefix ) ) {
		return $in_ports;
	}

	# If the port name has uppercase letters
	# and we didn't find it that way in the ports tree already
	# we really want a lowercase name, so try again like that.
	# The exception is for Perl that has traditionally
	# camel-cased names.
	if ( $name =~ /\p{Upper}/ and $prefix ne 'p5-' ) {
		return $self->name_new_port( lc $name );
	}

	$name = "$prefix$name" unless $name =~ /^\Q$prefix/;

	return $name;
}

sub parse_makefile
{
	my ( $self, $path ) = @_;

	return unless -e $path;

	my @makefile;

	my $parse = sub {
		state $line = '';
		$line .= shift;
		return if /\\\n$/x;

		chomp $line;

		if ( $line =~ /^
		    (?<comment> \#?       ) \s*
		    (?<key>     (?<name>[\p{Upper}_]+) (?<package>-\w+)? )
		    (?<equal>   \s* \?? = )
		    (?<spaces>  \s*       )
		    (?<value>   .*        )
		/xms ) {
			my %line   = %+;
			my $spaces = delete $line{spaces};
			$line{tabs}      = $spaces =~ tr/\t/\t/;
			$line{commented} = $line{comment} ? 1 : 0;

			push @makefile, \%line;
		} else {
			push @makefile, $line;
		}
		$line = '';
	};

	open my $fh, '<', $path or croak("Couldn't open $path: $!");
	$parse->($_) while <$fh>;
	close $fh;

	return @makefile;
}

sub write_makefile
{
	my ( $self, $di ) = @_;

	my %configs = %{$self};
	my $license = delete $configs{license};

	my @template = $self->parse_makefile("Makefile.orig");
	my %copy_values;

	# Decisions elsewhere might effect which values to copy from the template
	my %reset_values = %{ delete $configs{reset_values} || {} };

	if (@template) {
		%copy_values = map { $_->{key} => 1 }
		    grep { $_->{name} ne 'REVISION' }
		    grep { $_->{name} ne 'EXTRACT_SUFX' }
		    grep { ref } @template;
	} else {
		my $tag = 'OpenBSD';
		my $template =
		    ports_dir() . '/infrastructure/templates/Makefile.template';

		@template = (
		    "# \$$tag\$",
		    grep { $_ !~ /^\#/x } $self->parse_makefile($template)
		);
	}

        # Some folks prefer no space before the equal sign,
	# so lets default to whatever was most used in the template.
	# If they have a lot of ?= this could go terribly wrong.
	my ($default_equal) = do {
		my %equals;
		$equals{$_}++ for map { $_->{equal} } grep { ref } @template;
		sort { $equals{$b} <=> $equals{$a} } keys %equals;
	};
	$default_equal ||= ' =';

	# If we got an EXTRACT_SUFX, we don't need to print the default
	delete $configs{EXTRACT_SUFX}
	    if $configs{EXTRACT_SUFX} and $configs{EXTRACT_SUFX} eq '.tar.gz';

	my $format = sub {
		my ($key, $value, %opts) = @_;

		my $tabs = "\t" x ( $opts{tabs} || 1 );
		$key .= $opts{equal} || $default_equal;

		if (ref $value eq 'ARRAY') {
			my $key_tabs = "\t" x ( length($key) / 8 );
			$value = join " \\\n$key_tabs$tabs", @{ $value }
		}

		$key .= $tabs if length $value;

		return $key . $value;
	};

	my @makefile;
	foreach my $line (@template) {
		next    # no more than one blank line
		    if @makefile
		    && !ref $line
		    && $line         =~ /^[\s\n]*$/xms
		    && $makefile[-1] =~ /^[\s\n]*$/xms;

		if ( $line =~ /\.include \s+ <bsd.port.mk>/x ) {
			my @additions;
			foreach my $key ( sort keys %configs ) {
				next if $key !~ /^[\p{Upper}_]+(?:-\w+)?$/;
				my $value = $configs{$key};
				next unless defined $value;
				push @additions, $format->($key, $value);
			}
			if (@additions) {
				push @makefile,
				    "# Lines below not in the template";
				push @makefile, @additions;
			}
		}

		if ( ref $line eq 'HASH' ) {
			my $key = $line->{key};

			my $value = delete $configs{$key};

			# if we inherited a PKGNAME, someone decided it was
			# right, so just use that.
			if ( $key eq 'PKGNAME' and $copy_values{$key} ) {
				$value = $line->{value};
			}

			# If we didn't get a value, copy from the template
			$value ||= $line->{value}
			    if $copy_values{$key}
			    and not $reset_values{$key};

			next unless defined $value;

			if ( $key eq 'PERMIT_PACKAGE' && $license ) {
				# guess that the comment before this was
				# the license marker.
				pop @makefile if $makefile[-1] =~ /^#/;
				push @makefile, "# $license";
			}

			push @makefile, $format->($key, $value, %{$line});
		} else {
			push @makefile, $line;
		}
	}

	open my $fh, '>', 'Makefile' or die "Couldn't open Makefile: $!";
	print $fh map { "$_\n" } @makefile;
	close $fh;
}

sub _format_comment
{
	my ( $self, $text ) = @_;

	return unless $text;

	$text =~ s/^(a|an) //i;
	$text =~ s/\n/ /g;
	$text =~ s/\.$//;
	$text =~ s/\s+$//;

	# Max comment length is 60. Try to cut it, but print full
	# version in Makefile for the porter to edit as needed.
	$text =~ s/ \S+$// while length $text > 60;

	return $text;
}

sub _make
{
	my $self = shift;
	system( 'make', @_, @make_options);
	return $? >> 8;
}

sub make_clean
{
	my $self = shift;
	return $self->_make('clean');
}

sub make_makesum
{
	shift->_make('makesum');
}

sub make_checksum
{
	shift->_make('checksum');
}

sub make_extract
{
	shift->_make('extract');
}

sub make_configure
{
	shift->_make('configure');
}

sub make_fake
{
	shift->_make('fake');
}

sub make_plist
{
	shift->_make('update-plist');
}

sub make_show
{
	my ( $self, $var ) = @_;
	chomp( my $output = qx{ make show=$var } );
	return $output;
}

sub make_portdir
{
	my ( $self, $name ) = @_;

	my $old = ports_dir() . "/$name";
	my $new = base_dir()  . "/$name";

	if ( -e $old ) {
		my ($dst) = $new =~ m{^(.*)/[^/]+$};
		make_path($dst) unless -e $dst;
		_cp( '-a', $old, $dst )
		    or die "Unable to copy $old to $new: $!";

		unlink glob("$new/pkg/PLIST*.orig");

		foreach my $file ( 'Makefile', 'pkg/DESCR' ) {
			next unless -e "$new/$file";
			rename "$new/$file", "$new/$file.orig"
			    or die "Unable to rename $file.orig: $!";
		}
	}

	make_path($new) unless -e $new;

	return $new;
}

sub make_port
{
	my ( $self, $di, $vi ) = @_;

	my $old_cwd  = getcwd();
	my $portname = $self->name_new_port($di);

	if ( -e base_dir() . "/$portname" ) {
		$self->add_notice(
			"Not porting $portname, already exists in " . base_dir() );
		return;
	}

	my $portdir = $self->make_portdir($portname);
	chdir $portdir or die "couldn't chdir to $portdir: $!";

	if ( my ( $category, $name ) = split qr{/}, $portname, 2 ) {
		# Set the category to the subdir the port lives in by default
		$self->set_categories($category);
		$self->{name} = $name;
	}

	$self->fill_in_makefile( $di, $vi );
	$self->write_makefile();

	$self->make_makesum();
	$self->make_checksum();
	$self->make_clean();
	$self->make_extract();

	if ( $self->set_fix_extract_permissions() ) {
		$self->write_makefile();
		$self->make_clean();
		$self->make_extract();
	}

	my $wrksrc = $self->make_show('WRKSRC');

	# children can override this to set any variables
	# that require extracted distfiles
	$self->postextract( $di, $wrksrc );

	my $deps = $self->get_deps( $di, $wrksrc );
	$self->set_build_deps( $deps->{build} );
	$self->set_run_deps( $deps->{run} );
	$self->set_test_deps( $deps->{test} );

	$self->set_other( 'CONFIGURE_STYLE',
		$self->get_config_style( $di, $wrksrc ) );

	# If we set any BUILD_DEPENDS or CONFIGURE_STYLE,
	# the extract is out of date, so we need to clean and try again.
	$self->make_clean();

	$self->write_makefile();

	# sometimes a make_fake() is not enough, need to run it more than
	# once to figure out which CONFIGURE_STYLE actually works
	$self->try_building();

	$self->make_plist();
	$self->write_descr();
	chdir $old_cwd or die "couldn't chdir to $old_cwd: $!";

	return add_to_new_ports($portdir);
}

sub port
{
	my ( $self, $module ) = @_;

	my $di = eval { $self->get_dist_info($module) };

	unless ($di) {
		$self->add_notice("couldn't find dist for $module");
		return;
	}

	my $vi = eval { $self->get_ver_info($module) };

	unless ($vi) {
		$self->add_notice("couldn't get version info for $module");
		return;
	}

	return $self->make_port( $di, $vi );
}

sub add_notice
{
	my ( $self, @messages ) = @_;

	# Store the message and who generated it so we can display
	# all that info at the end.
	push @{ $self->{_notices} }, map { ref $_ ? $_ : {
	    name    => $self->{name},
	    message => $_,
	} } @messages;

	return 1;
}

sub notices
{
	my ($self) = @_;
	my $messages = delete $self->{_notices};
	return @{ $messages || [] };
}

sub DESTROY
{
	my ($self) = @_;

	for ( $self->notices ) {
		my $n = $_->{name} ? "[$_->{name}] " : '';
		print "$n$_->{message}\n";
	}
}

1;
