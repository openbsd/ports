Index: net/socket/udp_socket_posix.cc
--- net/socket/udp_socket_posix.cc.orig
+++ net/socket/udp_socket_posix.cc
@@ -636,7 +636,7 @@ int UDPSocketPosix::SetDoNotFragment() {
 }
 
 void UDPSocketPosix::SetMsgConfirm(bool confirm) {
-#if !defined(OS_APPLE)
+#if !defined(OS_APPLE) && !defined(OS_BSD)
   if (confirm) {
     sendto_flags_ |= MSG_CONFIRM;
   } else {
