$OpenBSD: patch-options.c,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- options.c.orig	Wed May 17 11:10:06 2000
+++ options.c	Mon May 29 15:52:39 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <stdlib.h>
 #include <string.h>
 #include <unistd.h>
