--- lib/Xm/TextF.c.orig	Mon Nov 20 13:42:59 2000
+++ lib/Xm/TextF.c	Mon Nov 20 17:28:52 2000
@@ -84,7 +84,7 @@
 #include <Xm/PrintSP.h>         /* for XmIsPrintShell */
 
 
-#if defined(__FreeBSD__)
+#if defined(__FreeBSD__) || defined(__OpenBSD__)
 /*
  * Modification by Integrated Computer Solutions, Inc.  May 2000
  *
