--- src/repint.h.orig	Mon Jul 31 23:41:55 2000
+++ src/repint.h	Sun Feb  4 10:38:00 2001
@@ -26,8 +26,18 @@
 #endif
 
 /* Maximum/minimum macros. Don't use when X or Y have side-effects! */
-#define MAX(x,y) (((x) > (y)) ? (x) : (y))
-#define MIN(x,y) (((x) < (y)) ? (x) : (y))
+
+#ifdef __OpenBSD__
+    /* MAX and MIN these are defined in <sys/param.h> on OpenBSD
+     * We include that here as sometimes it's included in other
+     * places and sometimes not - this ensures we don't redefine
+     * these two macros */
+# include <sys/param.h>
+#else
+# define MAX(x,y) (((x) > (y)) ? (x) : (y))
+# define MIN(x,y) (((x) < (y)) ? (x) : (y))
+#endif
+
 #define POS(x)   MAX(x, 0)
 #define ABS(x)   MAX(x, -(x))
 
