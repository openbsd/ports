$OpenBSD: patch-utils.c,v 1.2 2002/04/17 21:38:11 naddy Exp $
--- utils.c.orig	Wed Sep  9 16:31:16 1992
+++ utils.c	Wed Apr 17 23:20:31 2002
@@ -25,8 +25,10 @@ Please read the file COPYRIGHT for furth
 #else
 #include <sys/resource.h>
 #endif
+#include <unistd.h>
 #include "globals.h"
 
+extern void initialize_siglist A((void)) ;
 
 /* Signal handler, print message and exit */
 SIG_HANDLER_RET exitsig(sig)
@@ -70,7 +72,7 @@ char *s ;
 
 /* set up signal handling. All except TSTP, CONT, CLD, and QUIT
  * are caught with exitsig(). */
-init_signals()
+void init_signals()
 {
     int i ;
 #ifdef SIG_SETMASK		/* only with BSD signals */
