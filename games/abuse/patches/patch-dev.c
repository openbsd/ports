"foo" is now a 'const char *' in C++ and thus can't be passed to a method
requiring a 'char *'.

--- abuse/src/dev.c.orig	Wed Oct 20 23:18:11 1999
+++ abuse/src/dev.c	Wed Oct 20 23:22:47 1999
@@ -2057,7 +2057,7 @@
 	{ 	
 	  if (!mess_win)
 	  {
-	    mess_win=file_dialog(eh,symbol_str("level_name"),current_level ? current_level->name() : "",
+	    mess_win=file_dialog(eh,symbol_str("level_name"),current_level ? current_level->name() : (char *) "",
 				 ID_LEVEL_LOAD_OK,symbol_str("ok_button"),ID_CANCEL,symbol_str("cancel_button"),
 				 symbol_str("FILENAME"),ID_MESS_STR1);
 	    eh->grab_focus(mess_win);
@@ -2093,7 +2093,7 @@
 	{
 	  if (!mess_win)
 	  {
-	    mess_win=file_dialog(eh,symbol_str("saveas_name"),current_level ? current_level->name() : "untitled.spe",
+	    mess_win=file_dialog(eh,symbol_str("saveas_name"),current_level ? current_level->name() : (char *) "untitled.spe",
 			       ID_LEVEL_SAVEAS_OK,symbol_str("ok_button"),
 				 ID_CANCEL,symbol_str("cancel_button"),
 				 symbol_str("FILENAME"),ID_MESS_STR1);
