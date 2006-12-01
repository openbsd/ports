$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.7 2006/12/01 14:40:00 jakob Exp $

--- src/osdep/unix/env_unix.c.orig	Fri Sep 15 19:00:55 2006
+++ src/osdep/unix/env_unix.c	Wed Nov 22 11:50:47 2006
@@ -888,15 +888,12 @@ char *myhomedir ()
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
 
