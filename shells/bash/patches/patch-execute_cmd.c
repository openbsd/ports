--- execute_cmd.c.orig	Thu Jun  8 11:29:00 1995
+++ execute_cmd.c	Tue Jan 16 16:30:39 2001
@@ -2714,10 +2714,11 @@
 {
   WORD_DESC *redirectee = redirect->redirectee.filename;
   int redir_fd = redirect->redirectee.dest;
-  int fd, redirector = redirect->redirector;
+  int fd = -1, redirector = redirect->redirector;
   char *redirectee_word;
   enum r_instruction ri = redirect->instruction;
   REDIRECT *new_redirect;
+  mode_t um;
 
   if (ri == r_duplicating_input_word || ri == r_duplicating_output_word)
     {
@@ -2938,11 +2939,14 @@
 	  pid_t pid = getpid ();
 
 	  /* Make the filename for the temp file. */
-	  sprintf (filename, "/tmp/t%d-sh", pid);
+	  sprintf (filename, "/tmp/t-sh-XXXXXX", pid);
 
-	  fd = open (filename, O_TRUNC | O_WRONLY | O_CREAT, 0666);
-	  if (fd < 0)
+	  fd = mkstemp (filename);
+	  if (fd != -1)
 	    return (errno);
+	  um = umask (022);
+	  umask (um);
+	  fchmod (fd, 0666 & ~um);
 
 	  errno = 0;		/* XXX */
 	  if (redirectee->word)
