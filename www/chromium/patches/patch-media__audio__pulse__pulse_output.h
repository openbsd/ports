--- media/audio/pulse/pulse_output.h.orig	Wed Oct 31 20:01:19 2012
+++ media/audio/pulse/pulse_output.h	Tue Nov  6 22:45:35 2012
@@ -28,7 +28,7 @@
 
 namespace media {
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_FREEBSD)
 class AudioManagerLinux;
 typedef AudioManagerLinux AudioManagerPulse;
 #elif defined(OS_OPENBSD)
