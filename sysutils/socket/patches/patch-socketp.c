$OpenBSD: patch-socketp.c,v 1.2 2002/04/17 21:38:11 naddy Exp $
--- socketp.c.orig	Sun Aug  9 03:41:42 1992
+++ socketp.c	Wed Apr 17 23:20:31 2002
@@ -11,10 +11,16 @@ Please read the file COPYRIGHT for furth
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
@@ -52,7 +58,7 @@ int port ;
 {
     struct sockaddr_in sa ;
     struct hostent *hp ;
-    int a, s ;
+    int s ;
     long addr ;
 
 
@@ -76,7 +82,7 @@ int port ;
     if ((s = socket(sa.sin_family, SOCK_STREAM, 0)) < 0) { /* get socket */
 	return -1 ;
     }
-    if (connect(s, &sa, sizeof(sa)) < 0) {                  /* connect */
+    if (connect(s, (struct sockaddr *)&sa, sizeof(sa)) < 0) { /* connect */
 	close(s) ;
 	return -1 ;
     }
