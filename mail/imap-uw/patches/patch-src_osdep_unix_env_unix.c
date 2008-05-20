$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.11 2008/05/20 07:16:16 ajacoutot Exp $

--- src/osdep/unix/env_unix.c.orig	Fri Feb 15 17:26:44 2008
+++ src/osdep/unix/env_unix.c	Sun May 18 16:23:38 2008
@@ -957,15 +957,12 @@ char *myhomedir ()
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
 
