$OpenBSD: patch-clients_ftp_cmds.c,v 1.1 2000/08/03 00:02:34 brad Exp $

This fixes a date related roll-over problem.

--- clients/ftp/cmds.c.orig	Wed Aug  2 19:03:51 2000
+++ clients/ftp/cmds.c	Wed Aug  2 19:05:11 2000
@@ -726,9 +726,9 @@
 		 &yy, &mo, &day, &hour, &min, &sec);
 	  tm = gmtime(&stbuf.st_mtime);
 	  tm->tm_mon++;
-	  if (tm->tm_year > yy%100)
+	  if ((tm->tm_year + 1900) > yy)
 	    return (1);
-	  else if (tm->tm_year == yy%100) {
+	  else if ((tm->tm_year + 1900) == yy) {
 	    if (tm->tm_mon > mo)
 	      return (1);
 	  } else if (tm->tm_mon == mo) {
