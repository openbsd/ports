--- named/pathtemplate.h.orig	Sun Feb  4 16:03:25 2001
+++ named/pathtemplate.h	Sun Feb  4 16:03:03 2001
@@ -1,4 +1,4 @@
-/* $OpenBSD: patch-named_pathtemplate.h,v 1.1 2001/02/04 15:24:01 ho Exp $ */
+/* $OpenBSD: patch-named_pathtemplate.h,v 1.1 2001/02/04 15:24:01 ho Exp $ */
 /*
  *	$ISC: pathtemplate.h,v 8.6 2000/04/21 06:54:15 vixie Exp $
  */
@@ -60,6 +60,10 @@
 
 #ifndef _PATH_TMPXFER
 #define _PATH_TMPXFER	"%DESTTMP%/xfer.ddt.XXXXXX"
+#endif
+
+#ifndef _PATH_TMPXFERSTUB
+#define _PATH_TMPXFERSTUB	"%DESTTMP%/NsTmp"
 #endif
 
 #ifndef _PATH_XFER
