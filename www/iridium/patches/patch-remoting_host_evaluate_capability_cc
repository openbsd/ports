Index: remoting/host/evaluate_capability.cc
--- remoting/host/evaluate_capability.cc.orig
+++ remoting/host/evaluate_capability.cc
@@ -55,7 +55,7 @@ base::FilePath BuildHostBinaryPath() {
   }
 #endif
 
-#if defined(OS_LINUX) || defined(OS_CHROMEOS)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
   if (path.BaseName().value() ==
       FILE_PATH_LITERAL("chrome-remote-desktop-host")) {
     return path;
