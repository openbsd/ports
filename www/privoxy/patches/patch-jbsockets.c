$OpenBSD: patch-jbsockets.c,v 1.2 2003/04/01 20:52:59 sturm Exp $
--- jbsockets.c.orig	Thu Mar  6 22:41:04 2003
+++ jbsockets.c	Sat Mar 29 18:40:39 2003
@@ -237,7 +237,7 @@ const char jbsockets_rcs[] = "$Id: jbsoc
 
 #endif
 
-#ifdef OSX_DARWIN
+#if defined(OSX_DARWIN) || defined(__OpenBSD__)
 #include <pthread.h>
 #include "jcc.h"
 /* jcc.h is for mutex semaphores only */
@@ -723,7 +723,7 @@ int accept_connection(struct client_stat
       {
          host = NULL;
       }
-#elif defined(OSX_DARWIN)
+#elif defined(OSX_DARWIN) || defined(__OpenBSD__)
       pthread_mutex_lock(&gethostbyaddr_mutex);
       host = gethostbyaddr((const char *)&server.sin_addr, 
                            sizeof(server.sin_addr), AF_INET);
@@ -802,7 +802,7 @@ unsigned long resolve_hostname_to_ip(con
       {
          hostp = NULL;
       }
-#elif OSX_DARWIN
+#elif defined(OSX_DARWIN) || defined(__OpenBSD__)
       pthread_mutex_lock(&gethostbyname_mutex);
       hostp = gethostbyname(host);
       pthread_mutex_unlock(&gethostbyname_mutex);
