--- sh.exp.c.orig	Wed Aug  2 02:46:32 2000
+++ sh.exp.c	Wed Aug  2 02:47:12 2000
@@ -155,7 +155,7 @@
      * and they define _SC_NGROUPS_MAX without having sysconf
      */
 #   undef _SC_NGROUPS_MAX	
-#   if defined(__NetBSD__) || defined(__FreeBSD__) || defined(__bsdi__)
+#   if defined(__NetBSD__) || defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__bsdi__)
 #    define GID_T gid_t
 #   else
 #    define GID_T int
