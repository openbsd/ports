--- src/lat_tcp.c.orig	Sat Feb 28 23:53:39 1998
+++ src/lat_tcp.c	Sat Feb 28 23:54:15 1998
@@ -81,8 +81,10 @@
 	micro(buf, N);
 }
 
-child()
+void
+child( int ignored )
 {
+	(void) ignored;
 	wait(0);
 	signal(SIGCHLD, child);
 }
