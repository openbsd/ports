$OpenBSD: patch-w3mfix.PL,v 1.1.1.1 2000/11/30 15:44:32 avsm Exp $
--- w3mfix.PL.orig	Thu Nov 30 22:41:12 2000
+++ w3mfix.PL	Thu Nov 30 22:41:28 2000
@@ -70,7 +70,6 @@ __END__
 
 # Perl 5.002 or later.  w3mir is mostly tested with perl 5.004
 #
-use lib '/hom/janl/lib/perl';
 #
 # Can perform the following fixes:
 # - Rewrite redirected to URLs
