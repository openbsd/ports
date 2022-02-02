Index: ui/gl/init/gl_factory.cc
--- ui/gl/init/gl_factory.cc.orig
+++ ui/gl/init/gl_factory.cc
@@ -171,7 +171,7 @@ bool InitializeGLOneOffPlatformHelper(bool init_extens
 }  // namespace
 
 GLImplementationParts GetSoftwareGLImplementationForPlatform() {
-#if defined(OS_WIN) || defined(OS_LINUX)
+#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_BSD)
   return GetSoftwareGLImplementation();
 #else
   return GetLegacySoftwareGLImplementation();
