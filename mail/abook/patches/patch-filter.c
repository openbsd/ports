$OpenBSD: patch-filter.c,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- filter.c.orig	Wed May 10 15:57:37 2000
+++ filter.c	Mon May 29 15:50:16 2000
@@ -9,7 +9,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <ncurses.h>
+#include <curses.h>
 #include "filter.h"
 #include "abook.h"
 #include "database.h"
