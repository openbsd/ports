$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.3 2002/09/18 08:19:06 jakob Exp $

--- src/osdep/unix/env_unix.c.orig	Tue Sep  3 08:39:10 2002
+++ src/osdep/unix/env_unix.c	Sun Sep  8 14:55:34 2002
@@ -773,14 +773,12 @@ char *myhomedir ()
 static char *mymailboxdir ()
 {
   char *home = myhomedir ();
-  if (!myMailboxDir && home) {	/* initialize if first time */
     if (mailsubdir) {
       char tmp[MAILTMPLEN];
       sprintf (tmp,"%s/%s",home,mailsubdir);
       myMailboxDir = cpystr (tmp);/* use pre-defined subdirectory of home */
     }
     else myMailboxDir = cpystr (home);
-  }
   return myMailboxDir ? myMailboxDir : "";
 }
 
@@ -1036,7 +1034,8 @@ long dotlock_lock (char *file,DOTLOCK *b
       }
       close (pi[0]); close (pi[1]);
     }
-    if (lockEaccesError) {	/* punt silently if paranoid site */
+    if (strncmp(base->lock,"/var/mail/",10) && lockEaccesError) {
+	/* punt silently if paranoid site */
       sprintf (tmp,"Mailbox vulnerable - directory %.80s",base->lock);
       if (s = strrchr (tmp,'/')) *s = '\0';
       strcat (tmp," must have 1777 protection");
