$OpenBSD: patch-AGNet.h,v 1.1 2001/05/23 20:45:02 jakob Exp $

--- ../../common/AGNet.h	Fri Jan  5 16:50:07 2001
+++ ../../common/AGNet.h	Sat May 19 20:02:16 2001
@@ -53,6 +53,9 @@
 #           endif /* if (!defined(__palmos__)) */
 #       else /* defined(macintosh) */
 #           include <netdb.h>
+#           if (defined(__unix__) || defined(unix)) && !defined(USG)
+#               include <sys/param.h>
+#           endif
 #           include <sys/types.h>
 #           include <sys/socket.h>
 #           include <unistd.h>
@@ -61,7 +64,7 @@
 #               include <sys/filio.h>
 #               include <arpa/inet.h>
 #           else
-#               if defined(__FreeBSD__) || defined(_HPUX_SOURCE)
+#               if defined(__FreeBSD__) || defined(_HPUX_SOURCE) || defined (OpenBSD)
 #                   include <sys/ioctl.h>
 #                   include <arpa/inet.h>
 #               else
