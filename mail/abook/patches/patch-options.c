$OpenBSD: patch-options.c,v 1.2 2000/06/22 13:10:23 reinhard Exp $
--- options.c.orig	Mon Jun  5 12:45:28 2000
+++ options.c	Thu Jun 22 14:33:49 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <stdlib.h>
 #include <string.h>
 #include <unistd.h>
