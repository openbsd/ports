$OpenBSD: patch-estr.c,v 1.1 2000/06/22 13:10:22 reinhard Exp $
--- estr.c.orig	Mon Jun 19 19:13:01 2000
+++ estr.c	Thu Jun 22 14:31:48 2000
@@ -17,7 +17,7 @@
 /*#undef ABOOK_SRC*/
 
 #include <stdlib.h>
-#include <ncurses.h>
+#include <curses.h>
 #include <ctype.h>
 #include <string.h>
 #include "estr.h"
@@ -144,7 +144,7 @@ out:
 #include <stdlib.h>
 #include <sys/stat.h>
 #include <unistd.h>
-#include <ncurses.h>
+#include <curses.h>
 
 
 #define FILESEL_STATUSLINE      2
@@ -193,7 +193,7 @@ my_getcwd()
 #endif
 
 
-#include <ncurses.h>
+#include <curses.h>
 
 
 #define FILESEL_LAST_ITEM       (filesel_items -1)
