$OpenBSD: patch-src_runtime_runtime.c,v 1.3 2010/08/24 12:20:30 jasper Exp $

Don't hardcode /usr/local, patch and use SUBST_COMMAND.

--- src/runtime/runtime.c.orig	Thu May 21 09:22:55 2009
+++ src/runtime/runtime.c	Mon Jun 29 07:53:42 2009
@@ -67,7 +67,7 @@
 #endif
 
 #ifndef SBCL_HOME
-#define SBCL_HOME "/usr/local/lib/sbcl/"
+#define SBCL_HOME "${PREFIX}/lib/sbcl/"
 #endif
 
 #ifdef LISP_FEATURE_HPUX
