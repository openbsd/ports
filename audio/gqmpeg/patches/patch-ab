--- mixer.c.orig	Sat Jul  3 07:39:09 1999
+++ mixer.c	Mon Dec  6 18:43:13 1999
@@ -24,7 +24,7 @@
 #include <linux/soundcard.h>
 #endif
 
-#if defined(sun) && defined(__svr4__) || defined(__NetBSD__)
+#if defined(sun) && defined(__svr4__) || defined(__NetBSD__) || defined(__OpenBSD__)
 #include <sys/audioio.h>
 #endif
 
@@ -177,7 +177,7 @@
 	return vol;
 }
 
-#elif defined(__NetBSD__)
+#elif defined(__NetBSD__) || defined(__OpenBSD__)
 mixer_devinfo_t *infos;
 mixer_ctrl_t *values;
 void mixer_init(gint init_device_id)
@@ -189,7 +189,7 @@
 
   mixer_device = getenv("MIXERDEVICE");
   if (mixer_device == NULL)
-    mixer_device = "/dev/mixer0";
+    mixer_device = "/dev/mixer";
 
   if ((fd = open(mixer_device, O_RDWR)) == -1) {
     perror(mixer_device);
@@ -259,7 +259,7 @@
 
   mixer_device = getenv("MIXERDEVICE");
   if (mixer_device == NULL)
-    mixer_device = "/dev/mixer0";
+    mixer_device = "/dev/mixer";
 
   if ((fd = open(mixer_device, O_RDWR)) == -1) {
     perror(mixer_device);
@@ -303,7 +303,7 @@
 
   mixer_device = getenv("MIXERDEVICE");
   if (mixer_device == NULL)
-    mixer_device = "/dev/mixer0";
+    mixer_device = "/dev/mixer";
 
   if ((fd = open(mixer_device, O_RDWR)) == -1) {
     perror(mixer_device);
@@ -595,7 +595,7 @@
 
 #endif
 
-#if defined(sun) && defined(__svr4__) || defined(__NetBSD__)
+#if defined(sun) && defined(__svr4__) || defined(__NetBSD__) || defined(__OpenBSD__)
 /* from 0 through 100% */
 void set_volume(gint vol)
 {
