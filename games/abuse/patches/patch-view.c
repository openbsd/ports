$OpenBSD: patch-view.c,v 1.3 2004/01/14 17:18:12 naddy Exp $

"foo" is now a 'const char *' in C++ and thus can't be passed to a method
requiring a 'char *'.

--- abuse/src/view.c.orig	1996-04-12 20:20:43.000000000 +0200
+++ abuse/src/view.c	2004-01-14 18:14:33.000000000 +0100
@@ -179,7 +179,7 @@ char *get_login()
 
 #else
 char *get_login()
-{  if (cur_user_name[0]) return cur_user_name; else return (getlogin() ? getlogin() : "unknown"); }
+{  if (cur_user_name[0]) return cur_user_name; else return (getlogin() ? getlogin() : (char *) "unknown"); }
 
 #endif
 
