$OpenBSD: patch-jnet.c,v 1.3 2004/01/14 17:18:12 naddy Exp $

Using the good type to make it compile with g++-2.95.x

--- imlib/port/unix/jnet.c.orig	1996-05-24 22:48:19.000000000 +0200
+++ imlib/port/unix/jnet.c	2004-01-14 18:14:33.000000000 +0100
@@ -146,7 +146,7 @@ out_socket *unix_in_socket::check_for_co
 
   if (FD_ISSET(fd,&set))
   {
-    int len=sizeof(sockaddr_in);
+    socklen_t len=sizeof(sockaddr_in);
     int new_fd=accept(fd, (struct sockaddr *) &host, &len);
     if (new_fd<0)
     {
