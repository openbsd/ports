--- path.c.orig	Thu Oct  6 08:47:37 1994
+++ path.c	Wed Jan 17 11:45:32 2001
@@ -225,7 +225,7 @@
  static int seq=0;
  char *name;
  int fd;
- if(!where) where=getenv("TEMP");
+ if(!where) where=(char *)getenv("TEMP");
 #ifdef __MSDOS__
  if(!where) where="";
 #else
