$OpenBSD: patch-edit.c,v 1.2 2000/06/22 13:10:22 reinhard Exp $
--- edit.c.orig	Thu Jun 15 15:38:17 2000
+++ edit.c	Thu Jun 22 14:31:09 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <string.h>
 #include <stdlib.h>
 #include "abook.h"
