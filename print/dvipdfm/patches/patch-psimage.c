$OpenBSD: patch-psimage.c,v 1.1.1.1 2001/01/12 23:21:07 avsm Exp $

Cures a /tmp race condition when converting embedded eps/ps formats
to pdf, using external applications.  It needs cleaning up, and fallback
via autoconf before submission back to authors - avsm@

--- psimage.c.orig	Fri Oct 13 21:36:47 2000
+++ psimage.c	Thu Jan 11 23:40:40 2001
@@ -113,10 +113,18 @@ pdf_obj *ps_include (char *file_name, 
 {
 #ifdef HAVE_SYSTEM
   pdf_obj *result = NULL;
-  char *tmp, *cmd;
+  char *cmd, tmp[30];
   FILE *pdf_file = NULL;
-  /* Get a full qualified tmp name */
-  tmp = tmpnam (NULL);
+  int fd = -1;
+
+  strlcpy(tmp, "/tmp/dvipdfm.XXXXXXXXXXXX", sizeof(tmp));
+  /* Get a full qualified tmp name and create it in one operation */
+  if ((fd=mkstemp(tmp)) == -1) {
+    fprintf(stderr, "\nError opening tmp file %s: %s\n", tmp, strerror(errno));
+    return NULL;
+  }
+  close(fd);
+
   if ((cmd = build_command_line (file_name, tmp))) {
     if (!system (cmd) && (pdf_file = MFOPEN (tmp, FOPEN_RBIN_MODE))) {
       result = pdf_include_page (pdf_file, p, res_name);
@@ -125,10 +133,11 @@ pdf_obj *ps_include (char *file_name, 
     }
     if (pdf_file) {
       MFCLOSE (pdf_file);
-      remove (tmp);
     }
     RELEASE (cmd);
   }
+
+  unlink(tmp);
   return result;
 #else
   fprintf (stderr, "\n\nCannot include PS/EPS files unless you have and enable system() command.\n");
