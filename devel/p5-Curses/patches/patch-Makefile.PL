$OpenBSD: patch-Makefile.PL,v 1.1.1.1 2000/12/05 19:09:46 avsm Exp $
--- Makefile.PL.orig	Sat Dec  2 07:46:36 2000
+++ Makefile.PL	Sat Dec  2 07:47:22 2000
@@ -138,13 +138,6 @@ my $guess_cfg = {
 my $gen;
 my $panels;
 
-while (@ARGV) {
-    my $arg = shift;
-
-    if ($arg eq 'GEN')    { $gen    = $arg }
-    if ($arg eq 'PANELS') { $panels = $arg }
-}
-
 my $guess  = $guess_cfg->{$^O};
 my $source = "hints/c-$^O";
 
