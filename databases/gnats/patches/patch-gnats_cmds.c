--- gnats/cmds.c.orig	Wed Mar 17 18:45:36 1999
+++ gnats/cmds.c	Thu Jan 11 11:06:54 2001
@@ -115,28 +115,26 @@
 {
   register FILE *tf;
   char *path = (char *) xmalloc (PATH_MAX);
-#ifndef HAVE_MKTEMP
-  char name[L_tmpnam];
-#endif
   char *buf, *tmpdir;
   MsgType r;
-  int i;
+  int i, fd;
 
   tmpdir = getenv ("TMPDIR");
   if (tmpdir == NULL)
     tmpdir = "/tmp"; /* XXX */
-#ifdef HAVE_MKTEMP
-  sprintf (path, "%s/gnatsXXXXXX", tmpdir);
-  mktemp (path);
-#else
-  tmpnam (name);
-  strcpy (path, name);
-#endif
-
-  if ((tf = fopen (path, "w")) == (FILE *) NULL)
+  
+  snprintf (path, PATH_MAX, "%s/gnatsXXXXXX", tmpdir);
+  if ((fd = mkstemp (path)) < 0)
+    {
+      xfree(path); 
+      return (NULL);
+    }
+  
+  if ((tf = fdopen (fd, "w")) == (FILE *) NULL)
     {
       /* give error that we can't create the temp and leave. */
-      xfree (path);
+      close(fd);
+      xfree(path);
       return NULL;
     }
 
