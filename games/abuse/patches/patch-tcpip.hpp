Use the good type, stricter type checking now...

--- abuse/src/net/mac/tcpip.hpp.orig	Tue Jul  8 01:03:29 1997
+++ abuse/src/net/mac/tcpip.hpp	Fri Oct 29 00:23:58 1999
@@ -176,7 +176,7 @@
     if (listening)
     {
       struct sockaddr_in from;
-      int addr_len=sizeof(from);
+      socklen_t addr_len=sizeof(from);
       int new_fd=::accept(fd,(sockaddr *)&from,&addr_len);
       if (new_fd>=0)
       {
@@ -200,7 +200,7 @@
     if (addr) 
     {
       *addr=new ip_address;
-      int addr_size=sizeof(sockaddr_in);
+      socklen_t addr_size=sizeof(sockaddr_in);
       tr=recvfrom(fd,buf,size,0, (sockaddr *) &((ip_address *)(*addr))->addr,&addr_size);
     } else
       tr=recv(fd,buf,size,0);
