--- netpipe.h.orig	Thu Aug 24 19:59:51 2000
+++ netpipe.h	Thu Aug 24 20:00:40 2000
@@ -20,6 +20,7 @@
 #include <stdlib.h>         /* malloc(3) */
 #include <string.h>
 #include <sys/types.h>
+#include <sys/param.h>
 #include <sys/time.h>       /* struct timeval */
 #ifdef HAVE_GETRUSAGE
 #include <sys/resource.h>
@@ -38,8 +39,12 @@
 #define  MAXINT             2147483647
 
 #define     ABS(x)     (((x) < 0)?(-(x)):(x))
+#ifndef MIN
 #define     MIN(x,y)   (((x) < (y))?(x):(y))
+#endif
+#ifndef MAX
 #define     MAX(x,y)   (((x) > (y))?(x):(y))
+#endif
 
 /* Need to include the protocol structure header file.                       */
 /* Change this to reflect the protocol                                       */
