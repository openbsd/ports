# $OpenBSD: patch-src-date.c,v 1.1.1.1 2000/05/24 09:27:55 form Exp $

--- src/date.c.orig	Tue Nov 16 05:13:15 1999
+++ src/date.c	Wed May 24 15:48:28 2000
@@ -137,15 +137,15 @@
     static char date[DATESTRLEN];
 
     if (set_dateformat != NULL) {
-	strftime(date, DATESTRLEN, set_dateformat, localtime(&yearsecs));
+	strftime(date, DATESTRLEN, set_dateformat, localtime((time_t *)&yearsecs));
     }
     else {
 	if (set_eurodate)
 	    strftime(date, DATESTRLEN, "%a %d %b %Y - %H:%M:%S %Z",
-		     localtime(&yearsecs));
+		     localtime((time_t *)&yearsecs));
 	else
 	    strftime(date, DATESTRLEN, "%a %b %d %Y - %H:%M:%S %Z",
-		     localtime(&yearsecs));
+		     localtime((time_t *)&yearsecs));
     }
     return date;
 }
