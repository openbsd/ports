$OpenBSD: patch-filter.c,v 1.2 2000/06/22 13:10:22 reinhard Exp $
--- filter.c.orig	Thu Jun 15 13:44:56 2000
+++ filter.c	Thu Jun 22 14:32:33 2000
@@ -9,7 +9,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <ncurses.h>
+#include <curses.h>
 #include <pwd.h>
 #include <sys/types.h>
 #include "filter.h"
