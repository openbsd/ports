$OpenBSD: patch-audio-LINUXaudio.c,v 1.2 2004/03/05 22:56:42 naddy Exp $
--- audio/LINUXaudio.c.orig	1996-11-22 02:28:33.000000000 +0100
+++ audio/LINUXaudio.c	2004-03-05 23:30:39.000000000 +0100
@@ -55,7 +55,8 @@
 #include <unistd.h>
 #include <stdio.h>
 #include <fcntl.h>
-#include <linux/soundcard.h>
+#include <sys/ioctl.h>
+#include <soundcard.h>
 
 #include "include/error.h"
 #include "include/audio.h"
