$OpenBSD: patch-config_f.h,v 1.2 2002/07/24 01:12:31 brad Exp $
--- config_f.h.orig	Fri Mar  8 12:36:45 2002
+++ config_f.h	Tue Jul 23 20:49:50 2002
@@ -61,7 +61,11 @@
  *		if you don't have <nl_types.h>, you don't want
  *		to define this.
  */
+#ifdef __OpenBSD__
+#define NLS_CATALOGS
+#else
 #undef NLS_CATALOGS
+#endif
 
 /*
  * LOGINFIRST   Source ~/.login before ~/.cshrc
@@ -88,12 +92,12 @@
 /*
  * DOTLAST      put "." last in the default path, for security reasons
  */
-#define DOTLAST
+#undef DOTLAST
 
 /*
  * NODOT	Don't put "." in the default path, for security reasons
  */
-#undef NODOT
+#define NODOT
 
 /*
  * AUTOLOGOUT	tries to determine if it should set autologout depending
@@ -139,7 +143,7 @@
  *		This can be much slower and no memory statistics will be
  *		provided.
  */
-#if defined(__MACHTEN__) || defined(PURIFY) || defined(MALLOC_TRACE) || defined(_OSD_POSIX) || defined(__MVS__)
+#if defined(__MACHTEN__) || defined(PURIFY) || defined(MALLOC_TRACE) || defined(_OSD_POSIX) || defined(__MVS__) || defined(__FreeBSD__) || defined(__OpenBSD__)
 # define SYSMALLOC
 #else
 # undef SYSMALLOC
