$OpenBSD: patch-tcpip.hpp,v 1.3 2004/01/14 17:18:12 naddy Exp $

Use the good type, stricter type checking now...

--- abuse/src/net/mac/tcpip.hpp.orig	1997-07-08 01:03:29.000000000 +0200
+++ abuse/src/net/mac/tcpip.hpp	2004-01-14 18:14:33.000000000 +0100
@@ -176,7 +176,7 @@ class tcp_socket : public unix_fd
     if (listening)
     {
       struct sockaddr_in from;
-      int addr_len=sizeof(from);
+      socklen_t addr_len=sizeof(from);
       int new_fd=::accept(fd,(sockaddr *)&from,&addr_len);
       if (new_fd>=0)
       {
@@ -200,7 +200,7 @@ class udp_socket : public unix_fd
     if (addr) 
     {
       *addr=new ip_address;
-      int addr_size=sizeof(sockaddr_in);
+      socklen_t addr_size=sizeof(sockaddr_in);
       tr=recvfrom(fd,buf,size,0, (sockaddr *) &((ip_address *)(*addr))->addr,&addr_size);
     } else
       tr=recv(fd,buf,size,0);
