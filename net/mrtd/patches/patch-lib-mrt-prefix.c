--- lib/mrt/prefix.c.orig	Wed Apr 28 00:23:08 1999
+++ lib/mrt/prefix.c	Fri Apr 14 12:51:08 2000
@@ -22,6 +22,7 @@
 #ifdef HAVE_IPV6
 #include <api6.h>
 #endif /* HAVE_IPV6 */
+#include "../../include/config.h"
 
 #ifndef linux
 #ifdef __osf__
