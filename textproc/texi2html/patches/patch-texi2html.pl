--- texi2html.pl.orig	Mon Jan  5 20:14:05 2009
+++ texi2html.pl	Sat Jun 19 12:19:54 2010
@@ -1,7 +1,5 @@
 #! @PERL@ --
 # perl
-'di ';
-'ig 00 ';
 #+##############################################################################
 #
 # texi2html: Program to transform Texinfo documents to HTML
@@ -27,8 +25,6 @@
 #    02110-1301  USA
 #
 #-##############################################################################
-# The man page for this program is included at the end of this file and can be
-# viewed using the command 'nroff -man texi2html'.
 
 # for POSIX::setlocale and File::Spec
 require 5.00405;
