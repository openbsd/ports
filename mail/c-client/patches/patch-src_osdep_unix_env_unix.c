--- src/osdep/unix/env_unix.c.orig	Tue Dec 12 09:52:27 2000
+++ src/osdep/unix/env_unix.c	Tue Dec 12 09:55:10 2000
@@ -952,7 +952,8 @@
       }
       close (pi[0]); close (pi[1]);
     }
-    if (lockEaccesError) {	/* punt silently if paranoid site */
+    if (strncmp(base->lock,"/var/mail/",10) && lockEaccesError) {
+	/* punt silently if paranoid site */
       sprintf (tmp,"Mailbox vulnerable - directory %.80s",base->lock);
       if (s = strrchr (tmp,'/')) *s = '\0';
       strcat (tmp," must have 1777 protection");
