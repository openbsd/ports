--- tproxy.c.orig	Sun Oct  1 03:59:31 2000
+++ tproxy.c	Tue Oct  3 09:38:54 2000
@@ -44,7 +44,11 @@
 # include <netinet/ip.h>
 # include <netinet/tcp.h>
 # include <net/if.h>
-# include <netinet/ip_compat.h>
+#ifdef __OpenBSD__
+#  include <netinet/ip_fil_compat.h>
+#else
+#  include <netinet/ip_compat.h>
+#endif
 # include <netinet/ip_fil.h>
 # include <netinet/ip_nat.h>
 #endif
