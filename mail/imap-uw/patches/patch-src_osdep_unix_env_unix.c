$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.4 2003/04/17 08:06:30 jakob Exp $

--- src/osdep/unix/env_unix.c.orig	Wed Apr 16 23:03:26 2003
+++ src/osdep/unix/env_unix.c	Thu Apr 17 09:21:27 2003
@@ -783,15 +783,12 @@ char *myhomedir ()
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
 
