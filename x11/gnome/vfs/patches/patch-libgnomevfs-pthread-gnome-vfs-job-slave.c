$OpenBSD: patch-libgnomevfs-pthread-gnome-vfs-job-slave.c,v 1.2 2001/09/18 15:18:52 naddy Exp $
--- libgnomevfs-pthread/gnome-vfs-job-slave.c.orig	Sun Feb  4 04:54:14 2001
+++ libgnomevfs-pthread/gnome-vfs-job-slave.c	Thu Aug 30 16:05:18 2001
@@ -60,14 +60,22 @@ thread_routine (void *data)
 	}
 	
 	JOB_DEBUG (("locking access_lock %u", GPOINTER_TO_UINT (job->job_handle)));
+#ifdef HAVE_SEMAPHORE_H
 	sem_wait (&job->access_lock);
+#else
+	pthread_mutex_lock (&job->access_lock);
+#endif
 	gnome_vfs_async_job_map_unlock ();
 
 	gnome_vfs_job_execute (job);
 	complete = gnome_vfs_job_complete (job);
 	
 	JOB_DEBUG (("Unlocking access lock %u", GPOINTER_TO_UINT (job->job_handle)));
+#ifdef HAVE_SEMAPHORE_H
 	sem_post (&job->access_lock);
+#else
+	pthread_mutex_unlock (&job->access_lock);
+#endif
 
 	if (complete) {
 		JOB_DEBUG (("job %u done, removing from map and destroying",
