$OpenBSD: patch-sh.exp.c,v 1.2 2002/07/24 01:12:32 brad Exp $
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
