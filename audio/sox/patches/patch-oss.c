$OpenBSD: patch-oss.c,v 1.3 2002/01/17 00:25:52 naddy Exp $
--- oss.c.orig	Sat Dec  1 03:17:18 2001
+++ oss.c	Wed Jan 16 23:25:12 2002
@@ -33,6 +33,9 @@
 #include <stdlib.h>
 #include <stdio.h>
 #include <fcntl.h>
+#ifdef HAVE_SOUNDCARD_H
+#include <soundcard.h>
+#endif
 #ifdef HAVE_SYS_SOUNDCARD_H
 #include <sys/soundcard.h>
 #endif
