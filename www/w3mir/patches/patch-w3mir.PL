$OpenBSD: patch-w3mir.PL,v 1.1.1.1 2000/11/30 15:44:32 avsm Exp $
--- w3mir.PL.orig	Thu Nov 30 22:39:40 2000
+++ w3mir.PL	Thu Nov 30 22:40:31 2000
@@ -69,7 +69,6 @@ __END__
 #!/local/bin/perl5 -w
 # Perl 5.002 or later.  w3mir is mostly tested with perl 5.004
 #
-use lib '/hom/janl/lib/perl';
 #
 # Once upon a long time ago this was Oscar Nierstrasz's
 # <oscar@cui.unige.ch> htget script.
