$OpenBSD: patch-readRC.c,v 1.3 2002/09/07 07:09:13 pvalchev Exp $
--- readRC.c.orig	Tue Jun 12 20:04:32 2001
+++ readRC.c	Fri Sep  6 23:15:18 2002
@@ -30,12 +30,6 @@
 #include <unistd.h>
 #endif
 
-#ifdef __STDC__
-extern char *mktemp(char *);
-#else
-extern char *mktemp();
-#endif /* __STDC__ */
-
 #define RC_FILENAME	".XPaintrc"
 
 static String defaultRC[] =
@@ -66,17 +60,18 @@ openTemp(char **np)
 {
     char *n;
     char xx[256];
+    int fd;
 
     if ((n = getenv("TMPDIR")) == NULL)
 	n = "/tmp";
 
-    strcpy(xx, n);
-    strcat(xx, "/XPaintXXXXXXX");
-    n = mktemp(xx);
+    snprintf(xx, 256, "%s/%s", n, "/XPaintXXXXXXX");
+    fd = mkstemp(xx);
+    n = xx;
     tempName[++tempIndex] = XtNewString(n);
     if (np != NULL)
 	*np = tempName[tempIndex];
-    return fopen(tempName[tempIndex], "w");
+    return fdopen(fd, "w");
 }
 
 static void 
