$OpenBSD: patch-database.c,v 1.2 2000/06/22 13:10:22 reinhard Exp $
--- database.c.orig	Wed Jun 14 17:32:21 2000
+++ database.c	Thu Jun 22 14:34:42 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
