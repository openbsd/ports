require Font::AFM;

eval {
   $font = Font::AFM->new("Helvetica");
};
if ($@) {
   if ($@ =~ /Can't find the AFM file for/) {
	print "1..0\n";
	print $@;
	print "ok 1\n";
   } else {
	print "1..1\n";
	print $@;
	print "not ok 1\n";
   }
   exit;
}
print "1..1\n";

$sw = $font->stringwidth("Gisle Aas");

if ($sw == 4279) {
    print "Stringwith for Helvetica seems to work\n";
    print "ok 1\n";
} else {
    print "not ok 1\n";
    print "The stringwidth of 'Gisle Aas' should be 4279 (is was $sw)\n";
}

