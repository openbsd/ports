--- socket.c.orig	Wed Sep  9 10:14:34 1992
+++ socket.c	Fri Mar 31 17:08:21 2000
@@ -18,6 +18,8 @@
 #else
 #include <string.h>
 #endif
+#include <stdlib.h>
+#include <unistd.h>
 #include "globals.h"
 
 /* global variables */
@@ -37,6 +39,8 @@
 void server A((int port, char *service_name)) ;
 void handle_server_connection A((void)) ;
 void client A((char *host, int port, char *service_name)) ;
+extern void init_signals A((void)) ;
+extern void do_io A((void)) ;
 
 int main(argc, argv)
 int argc ;
@@ -46,7 +50,7 @@
     int opt ;			/* option character */
     int error = 0 ;		/* usage error occurred */
     extern int optind ;		/* from getopt() */
-    char *host ;		/* name of remote host */
+    /* char *host ; */		/* name of remote host */
     int port ;			/* port number for socket */
     char *service_name ;	/* name of service for port */
 
@@ -58,7 +62,7 @@
 
     /* set up progname for later use */
     progname = argv[0] ;
-    if (cp = strrchr(progname, '/')) progname = cp + 1 ;
+    if ((cp = strrchr(progname, '/'))) progname = cp + 1 ;
 
     /* parse options */
     while ((opt = getopt(argc, argv, "bcflp:qrsvw?")) != -1) {
@@ -185,15 +189,15 @@
 		long norder ;
 		char dotted[20] ;
 
-		he = gethostbyaddr(&sa.sin_addr.s_addr,
+		he = gethostbyaddr((char *)&sa.sin_addr.s_addr,
 				   sizeof(sa.sin_addr.s_addr), AF_INET) ;
 		if (!he) {
 		    norder = htonl(sa.sin_addr.s_addr) ;
 		    sprintf(dotted, "%d.%d.%d.%d",
-			    (norder >> 24) & 0xff,
-			    (norder >> 16) & 0xff,
-			    (norder >>  8) & 0xff,
-			    norder & 0xff) ;
+			    (int)((norder >> 24) & 0xff),
+			    (int)((norder >> 16) & 0xff),
+			    (int)((norder >>  8) & 0xff),
+			    (int)(norder & 0xff)) ;
 		}
 		fprintf(stderr, "connection from %s\n",
 			(he ? he->h_name : dotted)) ;
