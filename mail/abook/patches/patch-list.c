$OpenBSD: patch-list.c,v 1.2 2000/06/22 13:10:23 reinhard Exp $
--- list.c.orig	Tue Jun  6 11:03:21 2000
+++ list.c	Thu Jun 22 14:33:12 2000
@@ -6,7 +6,7 @@
  * Copyright (C) Jaakko Heinonen
  */
 
-#include <ncurses.h>
+#include <curses.h>
 #include <stdio.h>
 #include <string.h>
 #include "abook.h"
