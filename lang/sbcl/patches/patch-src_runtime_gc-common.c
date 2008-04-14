$OpenBSD: patch-src_runtime_gc-common.c,v 1.1.1.1 2008/04/14 12:29:40 deanna Exp $
--- src/runtime/gc-common.c.orig	Wed Feb 20 09:55:27 2008
+++ src/runtime/gc-common.c	Thu Apr 10 14:13:34 2008
@@ -25,6 +25,7 @@
  *   <ftp://ftp.cs.utexas.edu/pub/garbage/bigsurv.ps>.
  */
 
+#include <sys/param.h>
 #include <stdio.h>
 #include <signal.h>
 #include <string.h>
@@ -53,7 +54,7 @@
 #endif
 #endif
 
-size_t dynamic_space_size = DEFAULT_DYNAMIC_SPACE_SIZE;
+size_t dynamic_space_size = MIN(DEFAULT_DYNAMIC_SPACE_SIZE, 400 * 1024 * 1024);
 
 inline static boolean
 forwarding_pointer_p(lispobj *pointer) {
