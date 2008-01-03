$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.10 2008/01/03 10:52:25 ajacoutot Exp $

--- src/osdep/unix/env_unix.c.orig	Mon Dec 17 22:56:08 2007
+++ src/osdep/unix/env_unix.c	Thu Jan  3 10:58:07 2008
@@ -942,15 +942,12 @@ char *myhomedir ()
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
 
