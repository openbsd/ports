--- setup.c.orig	Mon Oct 30 16:09:01 2000
+++ setup.c	Fri Feb 23 00:22:09 2001
@@ -241,7 +241,7 @@
 char	bootDir[MAXPATHLENGTH+2];
 char	homeDir[MAXPATHLENGTH];
 char	tgifDir[MAXPATHLENGTH];
-char	tmpDir[MAXPATHLENGTH];
+char	tmpDir[MAXPATHLENGTH] = "/tmp";
 
 int	symPathNumEntries = INVALID;
 char	* * symPath=NULL;

