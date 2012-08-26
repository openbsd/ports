--- media/audio/pulse/pulse_output.h.orig	Tue Aug 14 09:01:11 2012
+++ media/audio/pulse/pulse_output.h	Wed Aug 15 23:14:34 2012
@@ -30,7 +30,7 @@ namespace media {
 
 class SeekableBuffer;
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_FREEBSD)
 class AudioManagerLinux;
 typedef AudioManagerLinux AudioManagerPulse;
 #elif defined(OS_OPENBSD)
