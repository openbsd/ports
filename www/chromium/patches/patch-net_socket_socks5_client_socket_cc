Index: net/socket/socks5_client_socket.cc
--- net/socket/socks5_client_socket.cc.orig
+++ net/socket/socks5_client_socket.cc
@@ -20,6 +20,9 @@
 #include "net/log/net_log_event_type.h"
 #include "net/traffic_annotation/network_traffic_annotation.h"
 
+#include <sys/types.h>
+#include <netinet/in.h>
+
 namespace net {
 
 const unsigned int SOCKS5ClientSocket::kGreetReadHeaderSize = 2;
