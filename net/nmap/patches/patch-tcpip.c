$OpenBSD: patch-tcpip.c,v 1.2 2001/01/09 16:10:17 naddy Exp $
--- tcpip.c.orig	Sun Oct  8 23:30:03 2000
+++ tcpip.c	Mon Jan  8 02:29:18 2001
@@ -317,27 +317,19 @@ inline int Sendto(char *functionname, in
 
 struct sockaddr_in *sin = (struct sockaddr_in *) to;
 int res;
-int retries = 0;
-int sleeptime = 0;
 
-do {
-  if (TCPIP_DEBUGGING > 1) {  
-    log_write(LOG_STDOUT, "trying sendto(%d, packet, %d, 0, %s, %d)",
-	   sd, len, inet_ntoa(sin->sin_addr), tolen);
-  }
-  if ((res = sendto(sd, (const char *) packet, len, flags, to, tolen)) == -1) {
+if (TCPIP_DEBUGGING > 1) {  
+  log_write(LOG_STDOUT, "trying sendto(%d, packet, %d, 0, %s, %d)",
+	    sd, len, inet_ntoa(sin->sin_addr), tolen);
+}
+while ((res = sendto(sd, (const char *) packet, len, flags, to, tolen)) == -1) {
+  if (errno != ENOBUFS) {
     error("sendto in %s: sendto(%d, packet, %d, 0, %s, %d) => %s",
 	  functionname, sd, len, inet_ntoa(sin->sin_addr), tolen,
 	  strerror(errno));
-    if (retries > 2 || errno == EPERM) 
-      return -1;
-    sleeptime = 15 * (1 << (2 * retries));
-    error("Sleeping %d seconds then retrying", sleeptime);
-    fflush(stderr);
-    sleep(sleeptime);
+    return -1;
   }
-  retries++;
-} while( res == -1);
+}
 
 if (TCPIP_DEBUGGING > 1)
   log_write(LOG_STDOUT, "successfully sent %d bytes of raw_tcp!\n", res);
