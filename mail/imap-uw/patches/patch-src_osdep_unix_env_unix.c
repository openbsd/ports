$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.6 2005/07/29 17:30:11 jakob Exp $

--- src/osdep/unix/env_unix.c.orig	Mon Sep 13 23:31:19 2004
+++ src/osdep/unix/env_unix.c	Fri Jul 29 09:17:44 2005
@@ -809,15 +809,12 @@ char *myhomedir ()
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
 
