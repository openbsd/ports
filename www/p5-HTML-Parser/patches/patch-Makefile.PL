$OpenBSD: patch-Makefile.PL,v 1.2 2000/12/05 14:05:06 avsm Exp $
--- Makefile.PL.orig	Tue Sep 26 18:36:25 2000
+++ Makefile.PL	Tue Sep 26 18:38:07 2000
@@ -19,7 +19,8 @@ select no to the question below such ent
 only entities in the Latin-1 range is decoded.
 
 EOT
-    my $ans = prompt("Do you want decoding on unicode entities?", "no");
+#    my $ans = prompt("Do you want decoding on unicode entities?", "no");
+    my $ans = 'no';
     if ($ans =~ /^y(es)?$/i) {
 	push(@define, "-DUNICODE_ENTITIES");
     }
