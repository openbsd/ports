$OpenBSD: patch-database.h,v 1.1.1.1 2000/05/29 16:46:51 reinhard Exp $
# ncurses.h->curses.h
--- database.h.orig	Wed May 17 11:10:05 2000
+++ database.h	Mon May 29 15:41:32 2000
@@ -44,7 +44,7 @@ void		print_database();
 
 #define LAST_ITEM	(items - 1)
 
-#include <ncurses.h>
+#include <curses.h>
 #ifndef	getnstr
 #	define getnstr(s, n)           wgetnstr(stdscr, s, n)
 #endif
