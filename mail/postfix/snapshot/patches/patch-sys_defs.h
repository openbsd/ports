--- sys_defs.h.orig	Sat Sep 15 00:38:11 2001
+++ src/util/sys_defs.h	Sat Sep 15 00:40:13 2001
@@ -26,7 +26,7 @@
 #if defined(FREEBSD2) || defined(FREEBSD3) || defined(FREEBSD4) \
     || defined(FREEBSD5) \
     || defined(BSDI2) || defined(BSDI3) || defined(BSDI4) \
-    || defined(OPENBSD2) || defined(NETBSD1)
+    || defined(OPENBSD2) || defined(OPENBSD3) || defined(NETBSD1)
 #define SUPPORTED
 #include <sys/types.h>
 #include <sys/param.h>
@@ -58,7 +58,7 @@
 #define HAS_DUPLEX_PIPE
 #endif
 
-#if defined(OPENBSD2) || defined(FREEBSD3) || defined(FREEBSD4)
+#if defined(OPENBSD2) || defined(OPENBSD3) || defined(FREEBSD3) || defined(FREEBSD4)
 #define HAS_ISSETUGID
 #endif
 
