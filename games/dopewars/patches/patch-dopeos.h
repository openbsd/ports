--- dopeos.h.orig	Sun Jul  9 16:07:11 2000
+++ dopeos.h	Sun Jul  9 21:16:26 2000
@@ -126,6 +126,7 @@
 #else /* Definitions for Unix build */
 
 #if NETWORKING
+#include <sys/types.h>
 #include <sys/socket.h>
 #include <netinet/in.h>
 #include <arpa/inet.h>
