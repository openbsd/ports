Index: remoting/host/host_attributes.cc
--- remoting/host/host_attributes.cc.orig
+++ remoting/host/host_attributes.cc
@@ -122,7 +122,7 @@ std::string GetHostAttributes() {
       media::InitializeMediaFoundation()) {
     result.push_back("HWEncoder");
   }
-#elif defined(OS_LINUX) || defined(OS_CHROMEOS)
+#elif defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
   result.push_back("HWEncoder");
 #endif
 
