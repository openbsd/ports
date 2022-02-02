Index: chrome/browser/ui/views/download/download_item_view.cc
--- chrome/browser/ui/views/download/download_item_view.cc.orig
+++ chrome/browser/ui/views/download/download_item_view.cc
@@ -195,7 +195,7 @@ bool UseNewWarnings() {
 }
 
 int GetFilenameStyle(const views::Label& label) {
-#if !defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if !defined(OS_LINUX) && !defined(OS_CHROMEOS) && !defined(OS_BSD)
   if (UseNewWarnings())
     return STYLE_EMPHASIZED;
 #endif
@@ -203,7 +203,7 @@ int GetFilenameStyle(const views::Label& label) {
 }
 
 int GetFilenameStyle(const views::StyledLabel& label) {
-#if !defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if !defined(OS_LINUX) && !defined(OS_CHROMEOS) && !defined(OS_BSD)
   if (UseNewWarnings())
     return STYLE_EMPHASIZED;
 #endif
