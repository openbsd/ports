# This test is here basically to work around Test::Harness bug.

print "1..2\n";
require Font::Metrics::TimesRoman;

print "not " unless @Font::Metrics::TimesRoman::wx == 256;
print "ok 1\n";

sub width
{
    my($string, $wx) = @_;
    my $w = 0;
    for (unpack("C*", $string)) {
	$w += $wx->[$_];
    }
    $w;
}

print "not " unless
    abs(width("Perl", \@Font::Metrics::TimesRoman::wx) - 1.611) < 1.0e-6;
print "ok 2\n";
