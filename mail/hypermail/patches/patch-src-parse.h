# $OpenBSD: patch-src-parse.h,v 1.1.1.1 2000/05/24 09:27:55 form Exp $

--- src/parse.h.orig	Wed May 24 15:57:30 2000
+++ src/parse.h	Wed May 24 15:57:37 2000
@@ -5,7 +5,9 @@
 int ignorecontent(char *);
 int inlinecontent(char *);
 int preferedcontent(int *, char *);
+#if 0
 char *tmpname(char *, char *);
+#endif
 char *safe_filename(char *);
 char *getmaildate(char *);
 char *getfromdate(char *);
