# $OpenBSD: patch-src-parse.c,v 1.1.1.1 2000/05/24 09:27:55 form Exp $

--- src/parse.c.orig	Wed May 24 15:56:31 2000
+++ src/parse.c	Wed May 24 15:56:51 2000
@@ -37,7 +37,7 @@
 #include <sys/dir.h>
 #endif
 
-extern char *mktemp(char *);
+/* extern char *mktemp(char *); */
 
 /*
  * Suffix to prepend to all saved attachments' filenames when the
@@ -267,6 +267,7 @@
     fflush(stdout);
 }
 
+#if 0
 char *tmpname(char *dir, char *pfx)
 {
     char *f, *name;
@@ -283,6 +284,7 @@
     free(name);
     return (NULL);
 }
+#endif
 
 char *safe_filename(char *name)
 {
