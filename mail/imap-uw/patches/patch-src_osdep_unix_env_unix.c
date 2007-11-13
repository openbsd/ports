$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.9 2007/11/13 14:11:17 ajacoutot Exp $

--- src/osdep/unix/env_unix.c.orig	Fri Sep 14 18:05:57 2007
+++ src/osdep/unix/env_unix.c	Tue Nov 13 14:57:52 2007
@@ -936,15 +936,12 @@ char *myhomedir ()
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
 
