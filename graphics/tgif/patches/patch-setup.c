--- setup.c.orig	Thu Mar 28 04:32:12 2002
+++ setup.c	Mon May  5 17:32:12 2003
@@ -228,7 +228,7 @@ char	drawPath[MAXPATHLENGTH]; /* last ch
 char	bootDir[MAXPATHLENGTH+2];
 char	homeDir[MAXPATHLENGTH];
 char	tgifDir[MAXPATHLENGTH];
-char	tmpDir[MAXPATHLENGTH];
+char	tmpDir[MAXPATHLENGTH] = "/tmp";
 
 int	symPathNumEntries = INVALID;
 char	* * symPath=NULL;
