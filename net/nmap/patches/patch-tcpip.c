--- tcpip.c.orig	Sun Nov 19 09:13:48 2000
+++ tcpip.c	Sun Nov 19 09:18:17 2000
@@ -317,27 +317,19 @@
 
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
