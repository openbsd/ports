--- b.h.orig	Wed Jan 17 11:21:38 2001
+++ b.h	Wed Jan 17 11:22:05 2001
@@ -60,6 +60,7 @@
  int rdonly;			/* Set for read-only */
  int internal;			/* Set for internal buffers */
  int er;			/* Error code when file was loaded */
+ int filehandle;		/* File handle for locking */
  };
 
 extern int force;	/* Set to have final '\n' added to file */
