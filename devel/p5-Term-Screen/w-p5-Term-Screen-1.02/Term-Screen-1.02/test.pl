#
# TCtest.pl
#
# test program to exercise the screen contol module
#
# by Mark Kaehny 1995
# this file is available under the same terms as the perl language 
# distribution. See the Artistic License.
#

require Term::Screen;

$scr = new Term::Screen;

#test clear screen and output
$scr->clrscr();
$scr->puts("Test series for Screen.pm module for perl5");

# test cursor movement, output and linking together
$scr->at(2,3)->puts("1. Should be at row 2 col 3 (upper left is 0,0)");

#test current position update
$r = $scr->{'r'}; $c = $scr->{'c'};
$scr->at(3,0)->puts("2. Last position $r $c -- should be 2 50.");

#test rows and cols ( should be updated for signal )
$scr->at(4,0)->puts("3. Screen size: " . $scr->{'rows'} . " rows and " . 
                                           $scr->{'cols'} . " columns.");
# test standout and normal test
$scr->at(6,0);
$scr->puts("4. Testing ")->reverse()->puts("reverse");
$scr->normal()->puts(" mode, ");
$scr->bold()->puts("bold")->normal()->puts(" mode, ");
$scr->bold()->reverse()->puts("and both")->normal()->puts(" together.");

# test clreol 
# first put some stuff up
$line = "0---------10--------20--------30--------40--------50--------60--------70-------";
$scr->at(7,0)->puts("5. Testing clreol - " . 
                      "   The next 2 lines should end at col 20 and 30.");
for (8 .. 10) {$scr->at($_,0)->puts($line);}
$scr->at(8,20)->clreol()->at(9,30)->clreol();

# test clreos
for (11 .. 20) { $scr->at($_,0)->puts($line); }
$scr->at(11,0)->puts("6. Clreos - Hit a key to clear all right and below:");
$scr->getch();
$scr->clreos();

#test insert line and delete line
$scr->at(12,0)->puts("7. Test insert and delete line - 15 deleted, and ...");
for (13 .. 16) { $scr->at($_,0)->puts($_ . substr($line,2)); }
$scr->at(15,0)->dl();
$scr->at(14,0)->il()->at(14,0)->puts("... this is where line 14 was");

# test key_pressed
$scr->at(18,0)->puts("8. Key_pressed - Don't Hit a key in the next 5 seconds: ");
if ($scr->key_pressed(5)) { $scr->puts("HEY A KEY WAS HIT"); } 
  else { $scr->puts("GOOD - NO KEY HIT!"); }
$scr->at(19,0)->puts("Hit a key in next 15 seconds: ");
if ($scr->key_pressed(15)) { $scr->puts("KEY HIT!"); } 
  else { $scr->puts("NO KEY HIT"); }

# test getch
# clear buffer out
$scr->flush_input();
$scr->at(21,0)->puts("Testing getch, Enter Key (q to quit): ")->at(21,40);
$ch = '';
while(($ch = $scr->getch()) ne 'q') 
{
  if (length($ch) == 1) 
    {
      $scr->at(21,50)->clreol()->puts("ord of char is: ");
      $scr->puts(ord($ch))->at(21,40);
    }
  else 
    {
      $scr->at(21,50)->clreol()->puts("function value: $ch");
      $scr->at(21,40);
    }
}

$scr->at(22,0);


