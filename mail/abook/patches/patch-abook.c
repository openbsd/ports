$OpenBSD: patch-abook.c,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- abook.c.orig	Wed May 17 11:10:05 2000
+++ abook.c	Mon May 29 15:47:39 2000
@@ -5,7 +5,7 @@
  * Copyright (C) 1999, 2000 Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <string.h>
 #include <unistd.h>
 #include <stdlib.h>
