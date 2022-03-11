Index: chrome/browser/ui/exclusive_access/exclusive_access_bubble.cc
--- chrome/browser/ui/exclusive_access/exclusive_access_bubble.cc.orig
+++ chrome/browser/ui/exclusive_access/exclusive_access_bubble.cc
@@ -16,7 +16,7 @@
 
 // NOTE(koz): Linux doesn't use the thick shadowed border, so we add padding
 // here.
-#if defined(OS_LINUX) || defined(OS_CHROMEOS)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
 const int ExclusiveAccessBubble::kPaddingPx = 8;
 #else
 const int ExclusiveAccessBubble::kPaddingPx = 15;
