$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.5 2003/10/05 22:00:00 jakob Exp $

--- src/osdep/unix/env_unix.c.orig	Tue Jul 15 03:30:00 2003
+++ src/osdep/unix/env_unix.c	Sun Oct  5 23:44:26 2003
@@ -799,15 +799,12 @@ char *myhomedir ()
 static char *mymailboxdir ()
 {
   char *home = myhomedir ();
-				/* initialize if first time */
-  if (!myMailboxDir && myHomeDir) {
     if (mailsubdir) {
       char tmp[MAILTMPLEN];
       sprintf (tmp,"%s/%s",home,mailsubdir);
       myMailboxDir = cpystr (tmp);/* use pre-defined subdirectory of home */
     }
     else myMailboxDir = cpystr (home);
-  }
   return myMailboxDir ? myMailboxDir : "";
 }
 
