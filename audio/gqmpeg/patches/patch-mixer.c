$OpenBSD: patch-mixer.c,v 1.2 2001/03/27 20:48:25 rohee Exp $

Our mixer device is /dev/mixer not /dex/mixer0

*** src/mixer.c.orig	Tue Mar 20 14:11:50 2001
--- src/mixer.c	Tue Mar 20 14:14:08 2001
***************
*** 275,281 ****
--- 275,285 ----
  
    mixer_device = getenv("MIXERDEVICE");
    if (mixer_device == NULL)
+ #ifdef __OpenBSD__
+     mixer_device = "/dev/mixer";
+ #else
      mixer_device = "/dev/mixer0";
+ #endif
  
    if ((fd = open(mixer_device, O_RDWR)) == -1) {
      perror(mixer_device);
***************
*** 352,358 ****
--- 356,366 ----
  
    mixer_device = getenv("MIXERDEVICE");
    if (mixer_device == NULL)
+ #ifdef __OpenBSD__
+     mixer_device = "/dev/mixer";
+ #else
      mixer_device = "/dev/mixer0";
+ #endif
  
    if ((fd = open(mixer_device, O_RDWR)) == -1) {
      perror(mixer_device);
***************
*** 396,402 ****
--- 404,414 ----
  
    mixer_device = getenv("MIXERDEVICE");
    if (mixer_device == NULL)
+ #ifdef __OpenBSD__
+     mixer_device = "/dev/mixer";
+ #else
      mixer_device = "/dev/mixer0";
+ #endif
  
    if ((fd = open(mixer_device, O_RDWR)) == -1) {
      perror(mixer_device);
