--- imap/src/osdep/unix/env_unix.c.orig	Mon Nov  1 16:08:55 1999
+++ imap/src/osdep/unix/env_unix.c	Thu Nov 18 14:45:32 1999
@@ -839,7 +839,8 @@
 	    }
 	    close (pi[0]); close (pi[1]);
 	  }
-	  if (lockEaccesError) {/* punt silently if paranoid site */
+	  if (strncmp(base->lock,"/var/mail/",10) && lockEaccesError) {
+	  /* punt silently if paranoid site */
 	    sprintf (tmp,"Mailbox vulnerable - directory %.80s",hitch);
 	    if (s = strrchr (tmp,'/')) *s = '\0';
 	    strcat (tmp," must have 1777 protection");
