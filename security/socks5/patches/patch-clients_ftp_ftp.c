$OpenBSD: patch-clients_ftp_ftp.c,v 1.1 2000/08/03 00:04:47 brad Exp $

This patch prevents some file handles from accidentally being closed.

--- clients/ftp/ftp.c.orig	Wed Aug  2 19:11:35 2000
+++ clients/ftp/ftp.c	Wed Aug  2 19:14:29 2000
@@ -913,6 +913,10 @@
     if (closefunc != NULL)
 	(*closefunc)(fin);
     fclose(dout);
+    if(data >= 0) {
+	close(data);
+	data = -1;
+    }
     getreply(0);
     Signal(SIGINT, oldintr);
     if (oldintp)
@@ -1252,6 +1256,10 @@
 
     gettimeofday(&stop, (struct timezone *)0);
     fclose(din);
+    if(data >= 0) {
+	close(data);
+	data = -1;
+    }
     getreply(0);
 
     if (bytes > 0 && is_retr) {
