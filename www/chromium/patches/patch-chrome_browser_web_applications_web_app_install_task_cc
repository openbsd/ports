Index: chrome/browser/web_applications/web_app_install_task.cc
--- chrome/browser/web_applications/web_app_install_task.cc.orig
+++ chrome/browser/web_applications/web_app_install_task.cc
@@ -919,7 +919,7 @@ void WebAppInstallTask::OnInstallFinalizedCreateShortc
         web_app->CanUserUninstallWebApp();
   }
 
-#if defined(OS_WIN) || defined(OS_MAC) || \
+#if defined(OS_WIN) || defined(OS_MAC) || defined(OS_BSD) || \
     (defined(OS_LINUX) && !BUILDFLAG(IS_CHROMEOS_LACROS))
   options.os_hooks[OsHookType::kUrlHandlers] = true;
 #else
