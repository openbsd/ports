# $Id: Screen.pm,v 1.1.1.1 2003/01/27 23:34:38 margarida Exp $

package Term::Screen;

use strict;

use vars qw($VERSION);

$VERSION = '1.02';

=head1 NAME

Term::Screen -  A Simple all perl Term::Cap based screen positioning module

=head1 SYNOPSIS

   require Term::Screen;

   $scr = new Term::Screen;
   unless ($scr) { die " Something's wrong \n"; }
   $scr->clrscr();
   $scr->at(5,3);
   $scr->puts("this is some stuff");
   $scr->at(10,10)->bold()->puts("hi!")->normal();
      # you can concatenate many calls (not getch)
   $c = $scr->getch();      # doesn't need Enter key 
   ...
   if ($scr->key_pressed()) { print "ha you hit a key!"; }



=head1 DESCRIPTION

Term::Screen is a very simple screen positioning module that should
work wherever C<Term::Cap> does. It is set up for Unix using stty's but
these dependences are isolated by evals in the C<new> constructor. Thus
you may create a child module implementing Screen with MS-DOS, ioctl,
or other means to get raw and unblocked input. This is not a replacement
for Curses -- it has no memory.  This was written so that it could be
easily changed to fit nasty systems, and to be available first thing.

The input functions getch, key_pressed, echo, and noecho are implemented
so as to work under a fairly standard Unix system. They use 'stty'
to set raw and no echo modes and turn on auto flush. All of these are
'eval'ed so that this class can be inherited for new definitions easily.

Term::Screen was designed to be "required", then used with object syntax
as shown above. One quirk (which the author was used to so he didn't
care) is that for function key translation, no delay is set. So for many
terminals to get an esc character, you have to hit another char after it,
generally another esc.

=head1 PUBLIC INTERFACE

Term::Screen has a very minimal set of of fixed character terminal position
and character reading commands:

=over 4

=cut

require Term::Cap;

=item new()      	

Initialize the screen. Does not clear the screen, but does home the cursor.

=cut


sub new 
{
  my ($prototype, @args) = @_;

  my $classname = ref($prototype) || $prototype;

  my ($ospeed);
  # adjust OSPEED below to your system.
  eval { $ospeed = `stty speed`; }; 	# Unixish way to get OSpeed - works
  $ospeed = 9600 if ($@);		# on Linux, Gnuish, Suns ...
  my $term = Tgetent Term::Cap { 'TERM' => '', 'OSPEED' => $ospeed };

  my $this = {};              # create object
  bless $this, $classname; 
  $this->term($term);        # keep termcap entry reference 
  $this->{IN} = ''; 		# clear input buffer
  $this->{ROWS} = 0;
  $this->{COLS} = 0;
  $this->resize();              # sets $this->{ROWS} & {COLS}
  $this->{KEYS} = {};           # set up fn key hash of hashes
  $this->get_fn_keys() ;        # define function key table from defaults
  $this->at(0,0);		# home cursor
  $this->{ECHO} = 1;            # start off echoing 
  $| = 1;			# for output flush on writes
  # wrapped so inherited versions can call with different input codes 
  eval { system('stty raw -echo'); };     # turn on raw input
                                          # ignore errors
  return $this;
}

sub DESTROY { eval { system('stty -raw echo'); } }

=item term(term)

Sets or Gets the Term::Cap object used by this object.

=cut

sub term
{
   my ( $self, $term ) = @_;

   if ( defined $term && ref $term and UNIVERSAL::isa($term,'Term::Cap'))
   {
       $self->{TERM} = $term;
   }
   return $self->{TERM};
}

=item rows(rows)

Returns and/or sets the number of rows on the terminal.

=cut

sub rows
{
   my ( $self, $rows ) = @_;

   if ( defined $rows and $rows =~ /\d+/ )
   {
      $self->{ROWS} = $rows; 
   }

   return $self->{ROWS};
}

=item cols(cols)

Returns and/or sets the number of cols on the terminal.

=cut

sub cols
{
   my ( $self, $cols ) = @_;

   
   if ( defined $cols and $cols =~ /\d+/ )
   {
      $self->{COLS} = $cols; 
   }

   return $self->{COLS};
}

=item at(row,col)    

Moves cursor to (row,col) where (0,0) is upper left corner, - if the spot is
illegal does whatever 'cm' in termcap does, since that is what it uses.

=cut

sub at
{
  my ($this, $r, $c) = @_;
  if ($r < 0) {$r = 0;}
  if ($c < 0) {$c = 0;}
  if ($r >= $this->{ROWS}) {$r = $this->{ROWS}-1;}
  if ($c >= $this->{COLS}) {$c = $this->{COLS}-1;}
  $this->term()->Tgoto('cm', $c, $r, *STDOUT);
  return $this;
}

=item resize(r,c)

Tell screen the new number of rows & cols physically you can skip the r & c
and get new checked vals from stty or termcap.  Term::Screen does not
handle resize signals internally, but you can do it by checking and updating
screen size using this function.

=cut

sub resize
{
  my ($this, $r, $c) = @_;
  my $size = '';

  # find screen size -- trying different methods
  if ($#_ != 2 || $r <= 0 || $c <= 0)
    {
      $r = 0; $c = 0; 
      eval { $size = `stty size`; };  # not portable but most accurate
      if ( $size =~ /^\s*(\d+)\s+(\d+)\s*/ )
         {
           ($r, $c) = ($1, $2);
         }
    }
  if ($r == 0 || $c == 0) # try getting rows and cols some other way
  {
       if (exists $ENV{'LINES'}) { $r = $ENV{'LINES'}; }
       else { $r = $this->term()->{'_li'}; } # this is often wrong
       if (exists $ENV{'COLUMNS'}) { $c = $ENV{'COLUMNS'}; }
       else { $c = $this->term()->{'_co'}; }
  }
  $this->{ROWS} = $r; $this->{COLS} = $c;
  return $this;
}

=item normal()

Turn off any highlightling (bold, reverse)

=cut

sub normal 
{
  my $this = shift;
  $this->term()->Tputs('me',1,*STDOUT);
  return $this;
}

=item bold()        

The md value from termcap - turn on bold usually

=cut

sub bold
{
  my $this = shift;
  $this->term()->Tputs('md',1,*STDOUT);
  return $this;
}

=item reverse()

The mr value from termcap - turn on reverse text often. these last 
two default to whatever is available.

=cut

sub reverse
{
  my $this = shift;
  $this->term()->Tputs('mr',1,*STDOUT);
  return $this;
}

=item clrscr()   	

Clear the screen and home cursor

=cut


sub clrscr
{
  my $this = shift;
  $this->term()->Tputs('cl',1, *STDOUT);
  $this->{'rc'} = [0,0];
  return $this;
}

=item clreol()      

Clear to the end of the line - cursor doesn't move

=cut

sub clreol
{
  my $this = shift;
  if (exists ($this->term()->{'_ce'})) 
  {
    $this->term()->Tputs('ce',1,*STDOUT);
  }
  return $this
}

=item clreos()       

Clear to end of screen - right and down, cursor doesn't move.

=cut


sub clreos
{
  my $this = shift;
  if (exists ($this->term()->{'_cd'})) 
  {
    $this->term()->Tputs('cd',1,*STDOUT);
  }
  return $this;
}

=item il()	

Insert blank line before line cursor is on, moving lower lines down.

=cut


sub il
{
  my $this = shift;
  $this->term()->Tputs('al', 1, *STDOUT);
  return $this;
}

=item dl()           

Delete line cursor is on, moving lower lines up.

=cut


sub dl
{
  my $this = shift;
  $this->term()->Tputs('dl',1, *STDOUT);
  return $this;
}

=item ic_exists()

Insert character option is available.

=cut


sub ic_exists { ( exists ($_[0]->term()->{'ic'}) ? 1 : 0 ); }

*exists_ic = \&ic_exists;

=item ic()    

Insert character at current position move rest to the right.

=cut

sub ic
{
  my $this = shift;
  $this->term()->Tputs('ic',1, *STDOUT);
  $this;
}

=item dc_exists()

Delete char option exists and is available.

=cut

sub dc_exists { ( exists ($_[0]->term()->{'dc'}) ? 1 : 0 ); }

*exists_dc = \&dc_exists;

=item dc()           

Delete character at current position moving rest to the left.

=cut

sub dc
{
  my $this = shift;
  $this->term()->Tputs('dc',1, *STDOUT);
  return $this;
}

=back

The following are the I/O functions. They provide standard useful
single character reading values. getch returns either a single char or
the name of a function key when a key is pressed. The only exception is
when you hit a character that is the start of a function key sequence.
In this case getch keeps waiting for the next char to see if it is fn key.
Generally this is the escape key, and why you need to hit esc twice.
To get a stright char, just use the regular 'gets' perl function. You
will need to echo it yourself if you want.

=over 4

=item puts(str)

Prints $s and returns the screen object. Used to do things like
C<$scr->at(10,0)->puts("Hi!")->at(0,0);>. You can just use
print if you want.

=cut

sub puts { print $_[1]; return $_[0]; }

=item getch()

Returns just a char in raw mode. Function keys are returned as their
capability names, e.g. the up key would return "ku".  See the 
C<get_fn_keys> function for what a lot of the names are. This will wait
for next char if in a possible fn key string, so you would need to type
'esc' 'esc' most likely to get out of getch, since 'esc' is usually the
leading char for function keys. You can use perl's getc, to go 'underneath'
getch if you want. See the table in Screen::get_fn_keys() for more
information.

=cut

sub getch
{
  my $this = shift;
  my ($c, $fn_flag) = ('', 0);
  my $partial_fn_str = '';
  
  if ($this->{IN}) { $c = chop($this->{IN}); }
  else { $c = getc(STDIN); } 	

  $partial_fn_str = $c;
  while (exists ($this->{KEYS}{$partial_fn_str})) 
    {  # in a possible function key sequence
      $fn_flag = 1;
      if ($this->{KEYS}{$partial_fn_str})	# key found
        {
          $c = $this->{KEYS}{$partial_fn_str};	  
          $partial_fn_str = '';
	  last;
        }
      else # wait for another key to see if were in FN yet
        {
          if ($this->{IN}) { $partial_fn_str .= chop($this->{IN}); }
          else { $partial_fn_str .= getc(); }
        }
    }
  if ($fn_flag)	# seemed like a fn key
    {
      if ($partial_fn_str) # oops not a fn key
        {  
          if ($partial_fn_str eq "\e\e") # take care of funny ESC case
            {
              $c = "\e";
              $partial_fn_str = "";
            }
          else		# buffer up the received chars
            {
              $this->{IN} = CORE::reverse($partial_fn_str) . $this->{IN};
              $c = chop($this->{IN});
              $this->puts($c) if ($this->{ECHO} && ($c ne "\e"));
            }
        }
      # if fn_key then never echo so do nothing here
    }
  elsif ($this->{ECHO} && ($c ne "\e")) { $this->puts($c); } # regular key
  return $c;
}  

=item def_key('name','input string')

Lets you define your own function key sequence.  'name' is what will be
returned by getch.  'input string' is what the fn key sends literally.  This
will override any prev definitions of the input.  A whole bunch of defaults
are defined for xterms rxvt's, etc. in the get_fn_keys function. 

=cut

sub def_key
{
  my ($this, $fn, $str) = @_;

  $this->{KEYS}{$str} = $fn if ($str ne '');
  while ($str ne '') 
  { 
      chop($str);
      $this->{KEYS}{$str} = '' if ($str ne '');
  }
  return $this;
}


=item key_pressed([sec])

Returns true if there is a character waiting.  You can pass an option time in
seconds to wait. 

=cut

sub key_pressed
{
  my ($this, $seconds) = @_;
  my $readfields = '';
  my $ready = 0;

  $seconds = 0 if (!defined $seconds);
  vec($readfields, fileno(STDIN), 1) = 1; 	# set up to check STDIN 
  eval { $ready = select($readfields, undef, undef, $seconds); };
  return $ready;
}

=item echo()

Tells getch to echo the input to the screen. (the default.)

=cut

sub echo { my $this = shift; $this->{ECHO} = 1; return $this; }

=item noecho()       

Tells getch NOT to echo input to the screen. 

=cut

sub noecho { my $this = shift; $this->{ECHO} = 0; return $this; }

=item flush_input()

Clears input buffer and removes any incoming chars.

=cut

sub flush_input
{
  my $this = shift;
  $this->{IN} = '';
  while ($this->key_pressed()) { getc(); }
  return $this;
}

=item stuff_input(str)

Lets you stuff chars into the input buffer to be read like keystrokes.
This is only the C<getch> method buffer, the underlying getc stuff 
is not touched.

=cut

sub stuff_input 
{ 
 my ($this, $str) = @_;
 $this->{IN} = CORE::reverse($str) . $this->{IN}; 
 return $this; 
}


# internal functions

# This function sets up the arrow keys from { ku kd kr kl }
# and the function keys from {k0 .. k9} with labels from { l0 .. l9}
# (if they exist of course.) 
# This is all encoded in a funny way -- as a hash with the
# characters as keys - check the code. It makes checking fn keys easy.

sub get_fn_keys
{
  my $this = shift;
  my $term = $this->term();
  my @keys = qw/ku kd kl kr k0 k1 k2 k3 k4 k5 k6 k7 k8 k9/;
  my ($fn, $ufn, $lfn);

  # throw in some defaults (xterm & rxvt arrows);
  $this->def_key("ku","\e[A");
  $this->def_key("kd","\e[B");
  $this->def_key("kr","\e[C");
  $this->def_key("kl","\e[D");

  # PC keyboard fn keys for xterm (some of them)
  $this->def_key("k1","\e[11~");
  $this->def_key("k2","\e[12~");
  $this->def_key("k3","\e[13~");
  $this->def_key("k4","\e[14~");
  $this->def_key("k5","\e[15~");
  $this->def_key("k6","\e[17~");
  $this->def_key("k7","\e[18~");
  $this->def_key("k8","\e[19~");
  $this->def_key("k9","\e[20~");
  $this->def_key("k10","\e[21~");
  $this->def_key("k11","\e[23~");
  $this->def_key("k12","\e[24~");

  $this->def_key("ins","\e[2~");
  $this->def_key("del","\e[3~");

  $this->def_key("home","\e[H");  # mult defs are no problem
  $this->def_key("home","\eO");   # these are some I have found
  $this->def_key("end","\eOw");
  $this->def_key("end","\eOe");
  $this->def_key("pgup", "\e[5~");
  $this->def_key("pgdn", "\e[6~");

      # try to get anything useful out of termcap 
      # (not too accurate in many cases

  foreach $fn (@keys)
  {
      $ufn = '_' . $fn;
      $lfn = $ufn; 
      $lfn =~ s/_k/_l/;

      if (exists $term->{$ufn}) 
      { 
	  if ((exists $term->{$lfn}) && ($term->{$lfn})) 
            { $fn = substr($lfn,1); }
	  $this->def_key($fn, $term->{$ufn});
      }
  }
  return $this;
}

1;

__END__

=back

=head1 AUTHOR

Term::Screen.pm by Mark Kaehny (kaehny@execpc.com)
Currently maintained by Jonathan Stowe <jns@gellyfish.com>

=head1 LICENSE AND COPYRIGHT

Please see the README file in the distribution kit for the license details
for this module.

=head1 SEE ALSO

Term::Cap, termcap, curses, stty, select

=cut
