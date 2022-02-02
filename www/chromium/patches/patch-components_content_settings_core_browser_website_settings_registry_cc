Index: components/content_settings/core/browser/website_settings_registry.cc
--- components/content_settings/core/browser/website_settings_registry.cc.orig
+++ components/content_settings/core/browser/website_settings_registry.cc
@@ -67,7 +67,7 @@ const WebsiteSettingsInfo* WebsiteSettingsRegistry::Re
 #if defined(OS_WIN)
   if (!(platform & PLATFORM_WINDOWS))
     return nullptr;
-#elif defined(OS_LINUX)
+#elif defined(OS_LINUX) || defined(OS_BSD)
   if (!(platform & PLATFORM_LINUX))
     return nullptr;
 #elif defined(OS_MAC)
