$OpenBSD: patch-libgnomevfs-pthread-gnome-vfs-job.h,v 1.2 2001/09/18 15:18:52 naddy Exp $
--- libgnomevfs-pthread/gnome-vfs-job.h.orig	Wed Mar  7 00:33:17 2001
+++ libgnomevfs-pthread/gnome-vfs-job.h	Thu Aug 30 16:05:18 2001
@@ -28,7 +28,11 @@
 
 #include "gnome-vfs.h"
 #include "gnome-vfs-private.h"
+#ifdef HAVE_SEMAPHORE_H
 #include <semaphore.h>
+#else
+#include <pthread.h>
+#endif
 
 typedef struct GnomeVFSJob GnomeVFSJob;
 
@@ -327,7 +331,11 @@ struct GnomeVFSJob {
 	gboolean failed;
 	
 	/* Global lock for accessing data.  */
+#ifdef HAVE_SEMAPHORE_H
 	sem_t access_lock;
+#else
+	pthread_mutex_t access_lock;
+#endif
 
 	/* This condition is signalled when the master thread gets a
            notification and wants to acknowledge it.  */
