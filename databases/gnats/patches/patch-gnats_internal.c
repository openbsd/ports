--- gnats/internal.c.orig	Tue Mar  2 19:18:53 1999
+++ gnats/internal.c	Thu Jan 11 10:56:08 2001
@@ -32,28 +32,25 @@
 
   FILE *fp;
   char *path, *workfile;
-#ifndef HAVE_MKTEMP
-  char name[L_tmpnam];
-#endif
+  int fd;
   Index *i;
 
-#ifdef HAVE_MKTEMP
   workfile = (char *) xmalloc (strlen (gnats_root) +
 			       strlen ("/gnats-adm/indXXXXXX") +
 			       1 /* null */ );
   sprintf (workfile, "%s/gnats-adm/indXXXXXX", gnats_root);
-  mktemp (workfile);
-#else
-  workfile = (char *) xmalloc (L_tmpnam);
-  tmpnam (name);
-  strcpy (workfile, name);
-#endif
 
-  fp = fopen (workfile, "w");
-  if (fp == NULL)
+  if ((fd = mkstemp (workfile)) < 0) {
+	  fprintf (stderr, "%s: can't open the temporary file %s\n",
+		   program_name, workfile);
+	  xfree (workfile);
+	  return;
+  }
+  if ((fp = fdopen (fd, "w")) == NULL)
     {
       fprintf (stderr, "%s: can't open the temporary file %s\n",
                program_name, workfile);
+      close(fd);
       xfree (workfile);
       return;
     }
