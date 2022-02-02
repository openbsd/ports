Index: chrome/browser/sharing/sharing_device_registration.cc
--- chrome/browser/sharing/sharing_device_registration.cc.orig
+++ chrome/browser/sharing/sharing_device_registration.cc
@@ -327,7 +327,7 @@ bool SharingDeviceRegistration::IsSmsFetcherSupported(
 
 bool SharingDeviceRegistration::IsRemoteCopySupported() const {
 #if defined(OS_WIN) || defined(OS_MAC) || defined(OS_LINUX) || \
-    defined(OS_CHROMEOS)
+    defined(OS_CHROMEOS) || defined(OS_BSD)
   return true;
 #else
   return false;
