--- texi2html.pl.orig	Thu Sep  6 13:36:51 2001
+++ texi2html.pl	Thu Sep  6 13:38:08 2001
@@ -1,6 +1,4 @@
 #@BANGPERL@
-'di ';
-'ig 00 ';
 #+##############################################################################
 #
 # texi2html: Program to transform Texinfo documents to HTML
@@ -57,9 +55,6 @@
 $THISVERSION = '@T2H_VERSION@';
 $THISPROG = "texi2html $THISVERSION";	# program name and version
   
-# The man page for this program is included at the end of this file and can be
-# viewed using the command 'nroff -man texi2html'.
-
 # Identity:
 
 $T2H_TODAY = &pretty_date;		# like "20 September 1993"
