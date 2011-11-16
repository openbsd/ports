$OpenBSD: patch-src_update.c,v 1.1 2011/11/16 23:34:53 kili Exp $
--- src/update.c.orig	Sun Oct 24 09:18:22 2010
+++ src/update.c	Sun Nov  7 14:53:04 2010
@@ -33,7 +33,10 @@
 #include <string.h>
 
 #ifndef WIN32
+#   include <sys/types.h>
 #   include <sys/socket.h>
+#   include <netinet/in.h>
+#   include <arpa/inet.h>
 #   include <sys/time.h>
 #   include <netdb.h>
 #   include <unistd.h>
