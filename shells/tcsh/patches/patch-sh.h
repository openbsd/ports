--- sh.h.orig	Wed Aug  2 02:42:54 2000
+++ sh.h	Wed Aug  2 02:43:22 2000
@@ -279,7 +279,7 @@
  * redefines malloc(), so we define the following
  * to avoid it.
  */
-# if defined(linux) || defined(sgi) || defined(_OSD_POSIX)
+# if defined(linux) || defined(sgi) || defined(_OSD_POSIX) || defined(__FreeBSD__) || defined(__OpenBSD__)
 #  define NO_FIX_MALLOC
 #  include <stdlib.h>
 # else /* linux */
