--- config_f.h.orig	Wed Aug  2 02:43:55 2000
+++ config_f.h	Wed Aug  2 02:45:50 2000
@@ -65,7 +65,11 @@
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
@@ -92,12 +96,12 @@
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
@@ -143,7 +147,7 @@
  *		This can be much slower and no memory statistics will be
  *		provided.
  */
-#if defined(__MACHTEN__) || defined(PURIFY) || defined(MALLOC_TRACE) || defined(_OSD_POSIX) || defined(__MVS__)
+#if defined(__MACHTEN__) || defined(PURIFY) || defined(MALLOC_TRACE) || defined(_OSD_POSIX) || defined(__MVS__) || defined(__FreeBSD__) || defined(__OpenBSD__)
 # define SYSMALLOC
 #else
 # undef SYSMALLOC
