--- src/bw_tcp.c.orig	Sat Feb 28 23:45:38 1998
+++ src/bw_tcp.c	Sat Feb 28 23:49:30 1998
@@ -111,8 +111,10 @@
 	return (s[-2]);
 }
 
-child()
+void
+child( int ignored )
 {
+	(void) ignored;
 	wait(0);
 	signal(SIGCHLD, child);
 }
