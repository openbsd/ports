$OpenBSD: patch-list.c,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- list.c.orig	Sat May  6 17:26:47 2000
+++ list.c	Mon May 29 15:51:33 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <stdio.h>
 #include <string.h>
 #include "abook.h"
