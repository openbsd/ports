$OpenBSD: patch-oss.c,v 1.2 2001/10/27 14:02:22 naddy Exp $
--- oss.c.orig	Wed Feb 21 21:57:01 2001
+++ oss.c	Sun Oct 21 00:56:31 2001
@@ -30,6 +30,9 @@
 #include <stdlib.h>
 #include <stdio.h>
 #include <fcntl.h>
+#ifdef HAVE_SOUNDCARD_H
+#include <soundcard.h>
+#endif
 #ifdef HAVE_SYS_SOUNDCARD_H
 #include <sys/soundcard.h>
 #endif
