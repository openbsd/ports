$OpenBSD: patch-database.c,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- database.c.orig	Wed May 17 11:10:05 2000
+++ database.c	Mon May 29 15:54:15 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
