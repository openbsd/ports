--- src/s/openbsd.h.orig	Tue May  2 06:41:43 2000
+++ src/s/openbsd.h	Fri Oct 20 17:44:45 2000
@@ -3,6 +3,10 @@
 /* Get most of the stuff from bsd4.3 */
 #include "bsd4-3.h"
 
+#if defined(__OpenBSD__) && defined(__powerpc__)
+#define __ELF__
+#endif
+
 /* Get the rest of the stuff from that less-POSIX-conformant system */
 #include "netbsd.h"
 
