--- utils.c.orig	Wed Sep  9 10:31:16 1992
+++ utils.c	Fri Mar 31 17:08:21 2000
@@ -25,8 +25,10 @@
 #else
 #include <sys/resource.h>
 #endif
+#include <unistd.h>
 #include "globals.h"
 
+extern void initialize_siglist A((void)) ;
 
 /* Signal handler, print message and exit */
 SIG_HANDLER_RET exitsig(sig)
@@ -70,7 +72,7 @@
 
 /* set up signal handling. All except TSTP, CONT, CLD, and QUIT
  * are caught with exitsig(). */
-init_signals()
+void init_signals()
 {
     int i ;
 #ifdef SIG_SETMASK		/* only with BSD signals */
