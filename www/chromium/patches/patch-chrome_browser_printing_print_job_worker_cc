Index: chrome/browser/printing/print_job_worker.cc
--- chrome/browser/printing/print_job_worker.cc.orig
+++ chrome/browser/printing/print_job_worker.cc
@@ -231,7 +231,7 @@ void PrintJobWorker::UpdatePrintSettings(base::Value n
     crash_key = std::make_unique<crash_keys::ScopedPrinterInfo>(
         print_backend->GetPrinterDriverInfo(printer_name));
 
-#if defined(OS_LINUX) && defined(USE_CUPS)
+#if (defined(OS_LINUX) || defined(OS_BSD)) && defined(USE_CUPS)
     PrinterBasicInfo basic_info;
     if (print_backend->GetPrinterBasicInfo(printer_name, &basic_info) ==
         mojom::ResultCode::kSuccess) {
