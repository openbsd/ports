$OpenBSD: patch-sh.h,v 1.2 2002/07/24 01:12:32 brad Exp $
--- sh.h.orig	Tue Jul 23 12:13:22 2002
+++ sh.h	Tue Jul 23 20:53:26 2002
@@ -283,7 +283,7 @@ typedef int sigret_t;
  * redefines malloc(), so we define the following
  * to avoid it.
  */
-# if defined(SYSMALLOC) || defined(linux) || defined(sgi) || defined(_OSD_POSIX)
+# if defined(SYSMALLOC) || defined(linux) || defined(sgi) || defined(_OSD_POSIX) || defined(__FreeBSD__) || defined(__OpenBSD__)
 #  define NO_FIX_MALLOC
 #  include <stdlib.h>
 # else /* linux */
