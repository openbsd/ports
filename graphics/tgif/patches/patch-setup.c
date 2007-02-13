--- setup.c.orig	Wed Jun 14 01:29:59 2006
+++ setup.c	Sun Jan 21 12:08:33 2007
@@ -233,7 +233,7 @@ char	drawPath[MAXPATHLENGTH]; /* last ch
 char	bootDir[MAXPATHLENGTH+2];
 char	homeDir[MAXPATHLENGTH];
 char	tgifDir[MAXPATHLENGTH];
-char	tmpDir[MAXPATHLENGTH];
+char	tmpDir[MAXPATHLENGTH] = "/tmp";
 
 int	symPathNumEntries = INVALID;
 char	* * symPath=NULL;
