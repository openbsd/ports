$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.12 2008/10/15 14:29:04 ajacoutot Exp $

--- src/osdep/unix/env_unix.c.orig	Tue May 13 03:17:54 2008
+++ src/osdep/unix/env_unix.c	Sat Oct 11 18:33:06 2008
@@ -963,15 +963,12 @@ char *myhomedir ()
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
 
