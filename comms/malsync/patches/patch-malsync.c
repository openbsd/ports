$OpenBSD: patch-malsync.c,v 1.1 2001/05/23 20:45:03 jakob Exp $

--- malsync.c	Fri Jan  5 17:04:06 2001
+++ malsync.c	Sat May 19 19:55:26 2001
@@ -227,7 +227,11 @@
 #ifdef __linux__
         h  = dlopen(seclib, RTLD_GLOBAL|RTLD_NOW);
 #else /* __linux__ */
+#    ifdef OpenBSD
+        h  = dlopen(seclib, RTLD_LAZY);
+#    else /* OpenBSD */
         h  = dlopen(seclib, RTLD_NOW);
+#    endif /*OpenBSD*/
 #endif /* __linux */
         
         if (h) {
