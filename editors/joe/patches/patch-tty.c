--- tty.c.orig	Mon Jan 23 00:17:20 1995
+++ tty.c	Wed Jan 17 11:45:33 2001
@@ -672,7 +672,7 @@
 char *cmd;
  {
  int x,omode=ttymode;
- char *s=getenv("SHELL");
+ char *s=(char *)getenv("SHELL");
  if(!s) return;
  ttclsn();
  if(x=fork())
