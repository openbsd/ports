--- src/queue.c.orig	Mon Apr  5 13:34:55 1999
+++ src/queue.c	Wed Feb  2 15:19:34 2000
@@ -19,6 +19,11 @@
 #undef _POSIX_SOURCE
 #endif
 
+/* OpenBSD 2.6 needs this to get fd_set */
+#ifdef __OpenBSD__
+#undef _POSIX_SOURCE
+#endif
+
 /* We only want object code generated if we have queued reminders */
 #ifdef HAVE_QUEUED
 #include <stdio.h>
