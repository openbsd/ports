$OpenBSD: patch-globals.h,v 1.2 2002/04/17 21:38:11 naddy Exp $
--- globals.h.orig	Sun Aug 30 21:04:27 1992
+++ globals.h	Wed Apr 17 23:20:31 2002
@@ -8,6 +8,11 @@ Please read the file COPYRIGHT for furth
 */
 
 #include "patchlevel.h"
+ 
+#if HAVE_SYS_PARAM_H
+# include <sys/param.h>
+#endif
+
 
 /* globals for socket */
 
@@ -49,4 +54,7 @@ extern int quitflag ;
 extern int crlfflag ;
 extern int active_socket ;
 extern char *progname ;
-extern char *sys_errlist[], *sys_siglist[] ;
+
+#if !(defined(BSD) && (BSD >=199306))
+     extern char *sys_errlist[], *sys_siglist[] ;
+#endif
