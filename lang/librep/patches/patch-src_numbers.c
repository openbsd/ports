--- src/numbers.c.orig	Sat Aug 19 22:33:24 2000
+++ src/numbers.c	Sat Aug 19 22:43:04 2000
@@ -80,6 +80,11 @@
 # endif
 #endif
 
+#ifdef __OpenBSD__
+#  define LONG_LONG_MIN LONG_MIN
+#  define LONG_LONG_MAX LONG_MAX
+#endif
+
 typedef struct {
     repv car;
 #ifdef HAVE_GMP
