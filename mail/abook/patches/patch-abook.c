$OpenBSD: patch-abook.c,v 1.2 2000/06/22 13:10:22 reinhard Exp $
--- abook.c.orig	Thu Jun 15 13:17:32 2000
+++ abook.c	Thu Jun 22 14:29:48 2000
@@ -5,7 +5,7 @@
  * Copyright (C) 1999, 2000 Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <string.h>
 #include <unistd.h>
 #include <stdlib.h>
