$OpenBSD: patch-src_osdep_unix_env_unix.c,v 1.8 2007/10/30 10:12:41 ajacoutot Exp $

--- src/osdep/unix/env_unix.c.orig	Tue May 29 22:29:52 2007
+++ src/osdep/unix/env_unix.c	Thu Oct 25 00:13:05 2007
@@ -935,15 +935,12 @@ char *myhomedir ()
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
 
