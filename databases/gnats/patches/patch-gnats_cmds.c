$OpenBSD: patch-gnats_cmds.c,v 1.2 2002/05/09 16:16:02 millert Exp $
--- gnats/cmds.c.orig	Sun Feb  4 13:56:10 2001
+++ gnats/cmds.c	Wed May  8 22:08:48 2002
@@ -115,28 +115,26 @@ get_text ()
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
 
