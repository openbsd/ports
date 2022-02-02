Index: remoting/host/host_details.cc
--- remoting/host/host_details.cc.orig
+++ remoting/host/host_details.cc
@@ -23,7 +23,7 @@ std::string GetHostOperatingSystemName() {
   return "Mac";
 #elif BUILDFLAG(IS_CHROMEOS_ASH)
   return "ChromeOS";
-#elif defined(OS_LINUX) || BUILDFLAG(IS_CHROMEOS_LACROS)
+#elif defined(OS_LINUX) || BUILDFLAG(IS_CHROMEOS_LACROS) || defined(OS_BSD)
   return "Linux";
 #elif defined(OS_ANDROID)
   return "Android";
