$OpenBSD: patch-lib_libdefs.h,v 1.1.1.1 2000/11/27 15:41:46 avsm Exp $
--- lib/libdefs.h.orig	Thu Nov  9 20:25:32 2000
+++ lib/libdefs.h	Thu Nov  9 20:25:45 2000
@@ -8,6 +8,10 @@
 # include <byteswap.h>
 #endif
 
+#ifdef HAVE_SYS_TYPES_H
+# include <sys/types.h>
+#endif
+
 #ifdef HAVE_SYS_ENDIAN_H
 # include <sys/endian.h>
 #endif
@@ -47,10 +51,6 @@
 # include <string.h>
 # include <stdlib.h>
 # include <stdio.h>
-#endif
-
-#ifdef HAVE_SYS_TYPES_H
-# include <sys/types.h>
 #endif
 
 #ifdef HAVE_DIRENT_H
