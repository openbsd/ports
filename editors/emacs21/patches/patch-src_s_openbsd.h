--- src/s/openbsd.h.orig	Wed Mar 22 07:08:40 2000
+++ src/s/openbsd.h	Wed Jan 30 18:53:08 2002
@@ -3,6 +3,10 @@
 /* Get most of the stuff from bsd4.3 */
 #include "bsd4-3.h"
 
+#if defined(__OpenBSD__) && defined(__powerpc__)
+#define __ELF__
+#endif
+
 /* Get the rest of the stuff from that less-POSIX-conformant system */
 #include "netbsd.h"
 
