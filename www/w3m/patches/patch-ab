--- gc/gcconfig.h.orig	Thu Jul  6 15:46:53 2000
+++ gc/gcconfig.h	Thu Jul  6 15:49:15 2000
@@ -22,6 +22,25 @@
 
 /* Machine specific parts contributed by various people.  See README file. */
 
+#if defined(__unix__) && !defined(unix)
+#    define unix
+#endif
+#if defined(__i386__) && !defined(i386)
+#    define i386
+#endif
+#if defined(__sparc__) && !defined(sparc)
+#    define sparc
+#endif
+#if defined(__m68k__) && !defined(m68k)
+#    define m68k
+#endif
+#if defined(__m88k__) && !defined(m88k)
+#    define m88k
+#endif
+#if defined(__alpha__) && !defined(alpha)
+#    define alpha
+#endif
+
 /* First a unified test for Linux: */
 # if defined(linux) || defined(__linux__)
 #    define LINUX
