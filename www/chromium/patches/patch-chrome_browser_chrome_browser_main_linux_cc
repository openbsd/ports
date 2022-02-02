Index: chrome/browser/chrome_browser_main_linux.cc
--- chrome/browser/chrome_browser_main_linux.cc.orig
+++ chrome/browser/chrome_browser_main_linux.cc
@@ -86,7 +86,7 @@ void ChromeBrowserMainPartsLinux::PreProfileInit() {
 }
 
 void ChromeBrowserMainPartsLinux::PostCreateMainMessageLoop() {
-#if BUILDFLAG(IS_CHROMEOS_ASH) || BUILDFLAG(IS_CHROMEOS_LACROS)
+#if BUILDFLAG(IS_CHROMEOS_ASH) || BUILDFLAG(IS_CHROMEOS_LACROS) || defined(OS_BSD)
   // No-op: Ash and Lacros Bluetooth DBusManager initialization depend on
   // FeatureList, and is done elsewhere.
 #else
@@ -115,7 +115,7 @@ void ChromeBrowserMainPartsLinux::PostBrowserStart() {
 #endif  // defined(USE_DBUS) && !defined(OS_CHROMEOS)
 
 void ChromeBrowserMainPartsLinux::PostDestroyThreads() {
-#if BUILDFLAG(IS_CHROMEOS_ASH) || BUILDFLAG(IS_CHROMEOS_LACROS)
+#if BUILDFLAG(IS_CHROMEOS_ASH) || BUILDFLAG(IS_CHROMEOS_LACROS) || defined(OS_BSD)
   // No-op; per PostBrowserStart() comment, this is done elsewhere.
 #else
   bluez::BluezDBusManager::Shutdown();
