--- io.c.orig	Sun Aug 30 13:15:26 1992
+++ io.c	Fri Mar 31 17:08:20 2000
@@ -16,6 +16,8 @@
 #endif
 #include <errno.h>
 #include <stdio.h>
+#include <string.h>
+#include <unistd.h>
 #include "globals.h"
 
 /* read from from, write to to. select(2) has returned, so input
@@ -90,7 +92,7 @@
 
 /* all IO to and from the socket is handled here. The main part is
  * a loop around select(2). */
-do_io()
+void do_io()
 {
     fd_set readfds ;
     int fdset_width ;
