Index: gpu/vulkan/x/vulkan_implementation_x11.cc
--- gpu/vulkan/x/vulkan_implementation_x11.cc.orig
+++ gpu/vulkan/x/vulkan_implementation_x11.cc
@@ -72,7 +72,11 @@ bool VulkanImplementationX11::InitializeVulkanInstance
 
       path = path.Append("libvk_swiftshader.so");
     } else {
+#if defined(OS_BSD)
+      path = base::FilePath("libvulkan.so");
+#else
       path = base::FilePath("libvulkan.so.1");
+#endif
     }
 
     VulkanFunctionPointers* vulkan_function_pointers =
