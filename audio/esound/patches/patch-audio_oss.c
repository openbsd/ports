--- audio_oss.c.orig	Tue Jul 18 12:34:13 2000
+++ audio_oss.c	Sun Aug  6 03:27:01 2000
@@ -38,7 +38,7 @@
     mode |= O_NONBLOCK;
 
     /* open the sound device */
-    device = esd_audio_device ? esd_audio_device : "/dev/dsp";
+    device = esd_audio_device ? esd_audio_device : "/dev/sound";
     if ((afd = open(device, mode, 0)) == -1)
     {   /* Opening device failed */
         perror(device);
