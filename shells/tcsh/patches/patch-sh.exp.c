$OpenBSD: patch-sh.exp.c,v 1.3 2003/01/15 20:46:56 mickey Exp $
--- sh.exp.c.orig	Fri Mar  8 12:36:46 2002
+++ sh.exp.c	Tue Jul 23 20:49:50 2002
@@ -153,7 +153,7 @@ sh_access(fname, mode)
      * and they define _SC_NGROUPS_MAX without having sysconf
      */
 #   undef _SC_NGROUPS_MAX	
-#   if defined(__NetBSD__) || defined(__FreeBSD__) || defined(__bsdi__)
+#   if defined(__NetBSD__) || defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__bsdi__)
 #    define GID_T gid_t
 #   else
 #    define GID_T int
@@ -661,7 +661,7 @@
     bool altout = 0;
     Char *ft = cp, *dp, *ep, *strdev, *strino, *strF, *str, valtest = '\0',
     *errval = STR0;
-    char *string, string0[8];
+    char *string, string0[16];
     time_t footime;
     struct passwd *pw;
     struct group *gr;
