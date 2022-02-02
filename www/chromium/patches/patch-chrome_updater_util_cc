Index: chrome/updater/util.cc
--- chrome/updater/util.cc.orig
+++ chrome/updater/util.cc
@@ -213,7 +213,7 @@ GURL AppendQueryParameter(const GURL& url,
   return url.ReplaceComponents(replacements);
 }
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
 
 // TODO(crbug.com/1276188) - implement the functions below.
 absl::optional<base::FilePath> GetUpdaterFolderPath(UpdaterScope scope) {
