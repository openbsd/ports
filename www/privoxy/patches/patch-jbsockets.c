$OpenBSD: patch-jbsockets.c,v 1.1 2003/02/24 06:44:26 pvalchev Exp $
--- jbsockets.c.orig	Sun May 26 16:41:27 2002
+++ jbsockets.c	Thu Feb 13 13:44:58 2003
@@ -185,6 +185,7 @@ const char jbsockets_rcs[] = "$Id: jbsoc
 
 #include "config.h"
 
+#include <pthread.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <string.h>
@@ -710,8 +711,13 @@ int accept_connection(struct client_stat
          host = NULL;
       }
 #else
-      host = gethostbyaddr((const char *)&server.sin_addr, 
-                           sizeof(server.sin_addr), AF_INET);
+		{
+				  static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
+				  pthread_mutex_lock(&mutex);
+				  host = gethostbyaddr((const char *)&server.sin_addr, 
+											  sizeof(server.sin_addr), AF_INET);
+				  pthread_mutex_unlock(&mutex);
+		}
 #endif
       if (host == NULL)
       {
@@ -784,7 +790,12 @@ unsigned long resolve_hostname_to_ip(con
          hostp = NULL;
       }
 #else
-      hostp = gethostbyname(host);
+		{
+				  static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
+				  pthread_mutex_lock(&mutex);
+				  hostp = gethostbyname(host);
+				  pthread_mutex_unlock(&mutex);
+		}
 #endif /* def HAVE_GETHOSTBYNAME_R_(6|5|3)_ARGS */
       if (hostp == NULL)
       {
