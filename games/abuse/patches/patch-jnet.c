Using the good type to make it compile with g++-2.95.x

--- imlib/port/unix/jnet.c.orig	Fri Oct 29 00:07:47 1999
+++ imlib/port/unix/jnet.c	Fri Oct 29 00:09:28 1999
@@ -146,7 +146,7 @@
 
   if (FD_ISSET(fd,&set))
   {
-    int len=sizeof(sockaddr_in);
+    socklen_t len=sizeof(sockaddr_in);
     int new_fd=accept(fd, (struct sockaddr *) &host, &len);
     if (new_fd<0)
     {
