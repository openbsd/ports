--- xbreaky.snd.c.orig	Thu May 11 08:13:45 2000
+++ xbreaky.snd.c	Wed Apr 18 11:57:02 2001
@@ -20,20 +20,18 @@
  */
 
 #include <stdio.h>
-#include <malloc.h>
 #include <unistd.h>
 #include <stdlib.h>
-#include <getopt.h>
 #include <fcntl.h>
 #include <string.h>
 #include <strings.h>
 #include <signal.h>
-#include <sys/soundcard.h>
+#include <soundcard.h>
 #include <sys/ioctl.h>
 
 #define DEFAULT_DSP_SPEED 8000
-#define AUDIO "/dev/dsp"
-#define RAWFILESDIR PREFIX"/share/games/xbreaky"
+#define AUDIO "/dev/sound"
+#define RAWFILESDIR PREFIX"/share/xbreaky"
 
 int timelimit = 0, dsp_speed = DEFAULT_DSP_SPEED, dsp_stereo = 0;
 int samplesize = 8;
