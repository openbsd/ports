$OpenBSD: patch-sn_resolv.c,v 1.2 2002/09/11 05:49:59 pvalchev Exp $
--- sn_resolv.c.orig	Sun Aug 27 02:47:58 2000
+++ sn_resolv.c	Sun Aug 27 02:48:28 2000
@@ -2,6 +2,8 @@
 /*  - getaddrbyname: Godmar Back / Shudoh Kazuyuki                       */
 
 #include "sn_defines.h"
+#include <sys/types.h>
+#include <netinet/in.h>
 #include <netdb.h>
 #include <arpa/inet.h>
 
