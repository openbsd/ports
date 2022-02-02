Index: headless/lib/browser/headless_content_browser_client.h
--- headless/lib/browser/headless_content_browser_client.h.orig
+++ headless/lib/browser/headless_content_browser_client.h
@@ -48,7 +48,7 @@ class HeadlessContentBrowserClient : public content::C
       override;
   content::GeneratedCodeCacheSettings GetGeneratedCodeCacheSettings(
       content::BrowserContext* context) override;
-#if defined(OS_POSIX) && !defined(OS_MAC)
+#if defined(OS_POSIX) && !defined(OS_MAC) && !defined(OS_BSD)
   void GetAdditionalMappedFilesForChildProcess(
       const base::CommandLine& command_line,
       int child_process_id,
