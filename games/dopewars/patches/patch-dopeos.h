--- dopeos.h.orig	Sat Mar 18 14:44:57 2000
+++ dopeos.h	Sat Mar 18 14:45:26 2000
@@ -127,6 +127,7 @@
 #else /* Definitions for Unix build */
 
 #if NETWORKING
+#include <sys/types.h>
 #include <sys/socket.h>
 #include <netinet/in.h>
 #include <arpa/inet.h>
