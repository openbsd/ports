Index: components/crash/core/browser/crash_upload_list_crashpad.cc
--- components/crash/core/browser/crash_upload_list_crashpad.cc.orig
+++ components/crash/core/browser/crash_upload_list_crashpad.cc
@@ -51,9 +51,13 @@ std::vector<UploadList::UploadInfo> CrashUploadListCra
 
 void CrashUploadListCrashpad::ClearUploadList(const base::Time& begin,
                                               const base::Time& end) {
+#if !defined(OS_BSD)
   crash_reporter::ClearReportsBetween(begin, end);
+#endif
 }
 
 void CrashUploadListCrashpad::RequestSingleUpload(const std::string& local_id) {
+#if !defined(OS_BSD)
   crash_reporter::RequestSingleCrashUpload(local_id);
+#endif
 }
