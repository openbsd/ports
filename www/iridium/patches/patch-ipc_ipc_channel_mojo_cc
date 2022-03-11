Index: ipc/ipc_channel_mojo.cc
--- ipc/ipc_channel_mojo.cc.orig
+++ ipc/ipc_channel_mojo.cc
@@ -112,7 +112,7 @@ class ThreadSafeChannelProxy : public mojo::ThreadSafe
 };
 
 base::ProcessId GetSelfPID() {
-#if defined(OS_LINUX) || defined(OS_CHROMEOS)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
   if (int global_pid = Channel::GetGlobalPid())
     return global_pid;
 #endif  // defined(OS_LINUX) || defined(OS_CHROMEOS)
