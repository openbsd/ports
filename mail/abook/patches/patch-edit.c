$OpenBSD: patch-edit.c,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- edit.c.orig	Mon May 22 10:04:25 2000
+++ edit.c	Mon May 29 15:48:59 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <string.h>
 #include <stdlib.h>
 #include "abook.h"
