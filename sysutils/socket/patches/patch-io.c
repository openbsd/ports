$OpenBSD: patch-io.c,v 1.2 2002/04/17 21:38:11 naddy Exp $
--- io.c.orig	Sun Aug 30 19:15:26 1992
+++ io.c	Wed Apr 17 23:20:31 2002
@@ -16,6 +16,8 @@ Please read the file COPYRIGHT for furth
 #endif
 #include <errno.h>
 #include <stdio.h>
+#include <string.h>
+#include <unistd.h>
 #include "globals.h"
 
 /* read from from, write to to. select(2) has returned, so input
@@ -90,7 +92,7 @@ int size, to ;
 
 /* all IO to and from the socket is handled here. The main part is
  * a loop around select(2). */
-do_io()
+void do_io()
 {
     fd_set readfds ;
     int fdset_width ;
