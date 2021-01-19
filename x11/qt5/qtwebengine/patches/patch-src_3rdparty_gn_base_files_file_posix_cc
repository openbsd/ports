$OpenBSD: patch-src_3rdparty_gn_base_files_file_posix_cc,v 1.1 2021/01/19 06:16:35 rsadowski Exp $

Index: src/3rdparty/gn/base/files/file_posix.cc
--- src/3rdparty/gn/base/files/file_posix.cc.orig
+++ src/3rdparty/gn/base/files/file_posix.cc
@@ -414,7 +414,7 @@ void File::DoInitialize(const FilePath& path, uint32_t
 bool File::Flush() {
   DCHECK(IsValid());
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
   return !HANDLE_EINTR(fdatasync(file_.get()));
 #else
   return !HANDLE_EINTR(fsync(file_.get()));
