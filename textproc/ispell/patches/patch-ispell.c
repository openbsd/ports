--- ispell.c.orig	Tue Jan  4 00:05:12 2000
+++ ispell.c	Tue Jan  4 00:05:14 2000
@@ -857,8 +857,8 @@
 
     (void) fstat (fileno (infile), &statbuf);
     (void) strcpy (tempfile, TEMPNAME);
-    if (mktemp (tempfile) == NULL  ||  tempfile[0] == '\0'
-      ||  (outfile = fopen (tempfile, "w")) == NULL)
+    if (((outfile = fdopen (mkstemp(tempfile), "w")) == NULL) ||
+        (tempfile[0] == '\0'))
 	{
 	(void) fprintf (stderr, CANT_CREATE,
 	  (tempfile == NULL  ||  tempfile[0] == '\0')
