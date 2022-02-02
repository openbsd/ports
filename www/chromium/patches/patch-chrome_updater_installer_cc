Index: chrome/updater/installer.cc
--- chrome/updater/installer.cc.orig
+++ chrome/updater/installer.cc
@@ -267,7 +267,7 @@ absl::optional<base::FilePath> Installer::GetCurrentIn
   return path->AppendASCII(pv_.GetString());
 }
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
 Installer::Result Installer::RunApplicationInstaller(
     const base::FilePath& /*app_installer*/,
     const std::string& /*arguments*/,
