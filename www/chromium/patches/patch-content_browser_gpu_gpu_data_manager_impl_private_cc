Index: content/browser/gpu/gpu_data_manager_impl_private.cc
--- content/browser/gpu/gpu_data_manager_impl_private.cc.orig
+++ content/browser/gpu/gpu_data_manager_impl_private.cc
@@ -1341,7 +1341,7 @@ void GpuDataManagerImplPrivate::AppendGpuCommandLine(
       break;
     case gpu::GpuMode::SWIFTSHADER: {
       bool legacy_software_gl = true;
-#if defined(OS_LINUX) || defined(OS_WIN)
+#if defined(OS_LINUX) || defined(OS_WIN) || defined(OS_BSD)
       // This setting makes WebGL run on SwANGLE instead of SwiftShader GL.
       legacy_software_gl = false;
 #endif
