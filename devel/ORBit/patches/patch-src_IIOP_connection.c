--- src/IIOP/connection.c.orig	Fri Feb 18 11:18:00 2000
+++ src/IIOP/connection.c	Mon Aug 21 05:54:57 2000
@@ -1,3 +1,6 @@
+#include <sys/types.h>
+#include <sys/param.h>
+#include <stdio.h>
 #include "config.h"
 #ifndef _XOPEN_SOURCE_EXTENDED
 #   define _XOPEN_SOURCE_EXTENDED 1
@@ -13,7 +16,6 @@
 #include <stdlib.h>
 #include <unistd.h>
 #include <errno.h>
-#include <sys/types.h>
 #include <fcntl.h>
 #include <sys/socket.h>
 #include <sys/un.h>
