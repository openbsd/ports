$OpenBSD: patch-libgnomevfs-pthread-gnome-vfs-job.c,v 1.2 2001/09/18 15:18:52 naddy Exp $
--- libgnomevfs-pthread/gnome-vfs-job.c.orig	Thu Mar 15 00:20:06 2001
+++ libgnomevfs-pthread/gnome-vfs-job.c	Thu Aug 30 16:05:18 2001
@@ -166,13 +166,21 @@ job_notify (GnomeVFSJob *job, GnomeVFSNo
 	 * access lock at all in the case of synch operations like xfer.
 	 * Unlocking here is perfectly OK, even though it's a hack.
 	 */
+#ifdef HAVE_SEMAPHORE_H
 	sem_post (&job->access_lock);
+#else
+	pthread_mutex_unlock (&job->access_lock);
+#endif
 
 	JOB_DEBUG (("Wait notify condition %u", GPOINTER_TO_UINT (notify_result->job_handle)));
 	/* Wait for the notify condition.  */
 	g_cond_wait (job->notify_ack_condition, job->notify_ack_lock);
 
+#ifdef HAVE_SEMAPHORE_H
 	sem_wait (&job->access_lock);
+#else
+	pthread_mutex_lock (&job->access_lock);
+#endif
 
 	JOB_DEBUG (("Unlock notify ack lock %u", GPOINTER_TO_UINT (notify_result->job_handle)));
 	/* Acknowledgment got: unlock the mutex.  */
@@ -564,7 +572,11 @@ gnome_vfs_job_set (GnomeVFSJob *job,
 	GnomeVFSOp *op;
 
 	JOB_DEBUG (("locking access lock %u, op %d", GPOINTER_TO_UINT (job->job_handle), type));
+#ifdef HAVE_SEMAPHORE_H
 	sem_wait (&job->access_lock);
+#else
+	pthread_mutex_lock (&job->access_lock);
+#endif
 
 	op = g_new (GnomeVFSOp, 1);
 	op->type = type;
@@ -590,7 +602,11 @@ gnome_vfs_job_new (GnomeVFSOpType type, 
 	
 	new_job = g_new0 (GnomeVFSJob, 1);
 	
+#ifdef HAVE_SEMAPHORE_H
 	sem_init (&new_job->access_lock, 0, 1);
+#else
+	pthread_mutex_init (&new_job->access_lock, NULL);
+#endif
 	new_job->notify_ack_condition = g_cond_new ();
 	new_job->notify_ack_lock = g_mutex_new ();
 
@@ -612,7 +628,11 @@ gnome_vfs_job_destroy (GnomeVFSJob *job)
 
 	gnome_vfs_op_destroy (job->op);
 
+#ifdef HAVE_SEMAPHORE_H
 	sem_destroy (&job->access_lock);
+#else
+	pthread_mutex_destroy (&job->access_lock);
+#endif
 
 	g_cond_free (job->notify_ack_condition);
 	g_mutex_free (job->notify_ack_lock);
@@ -709,7 +729,11 @@ gnome_vfs_job_go (GnomeVFSJob *job)
 	JOB_DEBUG (("new job %u, op %d, unlocking access lock",
 		GPOINTER_TO_UINT (job->job_handle), job->op->type));
 
+#ifdef HAVE_SEMAPHORE_H
 	sem_post (&job->access_lock);
+#else
+	pthread_mutex_unlock (&job->access_lock);
+#endif
 }
 
 #define DEFAULT_BUFFER_SIZE 16384
