--- gnats/internal.c.orig	Tue Mar  2 17:18:53 1999
+++ gnats/internal.c	Wed May  8 21:41:29 2002
@@ -32,28 +32,25 @@ write_index (index_start)
 
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
@@ -83,6 +80,7 @@ write_index (index_start)
 #endif
     }
 
+  fchmod (fileno(fp), 0644);
   fclose (fp);
 
   block_signals ();
