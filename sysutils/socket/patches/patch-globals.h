--- globals.h.orig	Sun Aug 30 15:04:27 1992
+++ globals.h	Fri Mar 31 17:08:20 2000
@@ -8,6 +8,11 @@
 */
 
 #include "patchlevel.h"
+ 
+#if HAVE_SYS_PARAM_H
+# include <sys/param.h>
+#endif
+
 
 /* globals for socket */
 
@@ -49,4 +54,7 @@
 extern int crlfflag ;
 extern int active_socket ;
 extern char *progname ;
-extern char *sys_errlist[], *sys_siglist[] ;
+
+#if !(defined(BSD) && (BSD >=199306))
+     extern char *sys_errlist[], *sys_siglist[] ;
+#endif
