--- socketp.c.orig	Sat Aug  8 21:41:42 1992
+++ socketp.c	Fri Mar 31 17:08:21 2000
@@ -11,10 +11,16 @@
 #include <sys/socket.h>
 #include <sys/errno.h>
 #include <netinet/in.h>
+#include <arpa/inet.h>
 #include <netdb.h>
 #include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
 #include "globals.h"
 
+extern int is_number A((char *));
+
 /*
  * create a server socket on PORT accepting QUEUE_LENGTH connections
  */
@@ -52,7 +58,7 @@
 {
     struct sockaddr_in sa ;
     struct hostent *hp ;
-    int a, s ;
+    int s ;
     long addr ;
 
 
@@ -76,7 +82,7 @@
     if ((s = socket(sa.sin_family, SOCK_STREAM, 0)) < 0) { /* get socket */
 	return -1 ;
     }
-    if (connect(s, &sa, sizeof(sa)) < 0) {                  /* connect */
+    if (connect(s, (struct sockaddr *)&sa, sizeof(sa)) < 0) { /* connect */
 	close(s) ;
 	return -1 ;
     }
