$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.3 2001/09/27 16:28:09 brad Exp $
--- src/osdep/unix/env_unix.c.orig	Mon Jun 25 23:10:04 2001
+++ src/osdep/unix/env_unix.c	Wed Sep 26 23:49:57 2001
@@ -992,7 +992,8 @@ long dotlock_lock (char *file,DOTLOCK *b
       }
       close (pi[0]); close (pi[1]);
     }
-    if (lockEaccesError) {	/* punt silently if paranoid site */
+    if (strncmp(base->lock,"/var/mail/",10) && lockEaccesError) {
+	/* punt silently if paranoid site */
       sprintf (tmp,"Mailbox vulnerable - directory %.80s",base->lock);
       if (s = strrchr (tmp,'/')) *s = '\0';
       strcat (tmp," must have 1777 protection");
