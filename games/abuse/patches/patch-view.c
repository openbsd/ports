"foo" is now a 'const char *' in C++ and thus can't be passed to a method
requiring a 'char *'.

--- abuse/src/view.c.orig	Wed Oct 20 23:24:07 1999
+++ abuse/src/view.c	Wed Oct 20 23:25:13 1999
@@ -179,7 +179,7 @@
 
 #else
 char *get_login()
-{  if (cur_user_name[0]) return cur_user_name; else return (getlogin() ? getlogin() : "unknown"); }
+{  if (cur_user_name[0]) return cur_user_name; else return (getlogin() ? getlogin() : (char *) "unknown"); }
 
 #endif
 
