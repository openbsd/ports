--- oss.c.orig	Sun Sep 10 09:39:12 2000
+++ oss.c	Sun Sep 10 09:39:38 2000
@@ -31,6 +31,9 @@
 #include <stdlib.h>
 #include <stdio.h>
 #include <fcntl.h>
+#ifdef HAVE_SOUNDCARD_H
+#include <soundcard.h>
+#endif
 #ifdef HAVE_SYS_SOUNDCARD_H
 #include <sys/soundcard.h>
 #endif
