$OpenBSD: patch-sh.exp.c,v 1.4 2004/06/01 06:08:51 brad Exp $
--- sh.exp.c.orig	2002-03-08 12:36:46.000000000 -0500
+++ sh.exp.c	2004-06-01 01:26:56.000000000 -0400
@@ -153,7 +153,7 @@ sh_access(fname, mode)
      * and they define _SC_NGROUPS_MAX without having sysconf
      */
 #   undef _SC_NGROUPS_MAX	
-#   if defined(__NetBSD__) || defined(__FreeBSD__) || defined(__bsdi__)
+#   if defined(__NetBSD__) || defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__bsdi__)
 #    define GID_T gid_t
 #   else
 #    define GID_T int
@@ -661,7 +661,7 @@ filetest(cp, vp, ignore)
     bool altout = 0;
     Char *ft = cp, *dp, *ep, *strdev, *strino, *strF, *str, valtest = '\0',
     *errval = STR0;
-    char *string, string0[8];
+    char *string, string0[16];
     time_t footime;
     struct passwd *pw;
     struct group *gr;
