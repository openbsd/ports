$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.2 2002/07/09 19:34:17 jakob Exp $

--- src/osdep/unix/env_unix.c.orig	Thu Dec 21 01:12:13 2000
+++ src/osdep/unix/env_unix.c	Thu Jan 18 16:11:09 2001
@@ -767,14 +767,12 @@
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

@@ -971,7 +971,8 @@ long dotlock_lock (char *file,DOTLOCK *b
       }
       close (pi[0]); close (pi[1]);
     }
-    if (lockEaccesError) {	/* punt silently if paranoid site */
+    if (strncmp(base->lock,"/var/mail/",10) && lockEaccesError) {
+	/* punt silently if paranoid site */
       sprintf (tmp,"Mailbox vulnerable - directory %.80s",base->lock);
       if (s = strrchr (tmp,'/')) *s = '\0';
       strcat (tmp," must have 1777 protection");
 
