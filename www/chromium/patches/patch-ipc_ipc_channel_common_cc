Index: ipc/ipc_channel_common.cc
--- ipc/ipc_channel_common.cc.orig
+++ ipc/ipc_channel_common.cc
@@ -10,7 +10,7 @@
 
 namespace IPC {
 
-#if defined(OS_LINUX) || defined(OS_CHROMEOS)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
 
 namespace {
 int g_global_pid = 0;
