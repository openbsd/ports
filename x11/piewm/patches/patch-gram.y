$OpenBSD: patch-gram.y,v 1.2 2007/05/30 18:57:20 jasper Exp $
--- gram.y.orig	Thu Jan  1 07:33:42 1998
+++ gram.y	Wed May 30 20:54:10 2007
@@ -71,7 +71,7 @@ unsigned int mods_used = (ShiftMask | ControlMask | Mo
 extern int do_single_keyword(), do_string_keyword(), do_number_keyword();
 extern name_list **do_colorlist_keyword();
 extern int do_color_keyword();
-extern int yylineno;
+int yylineno;
 %}
 
 %union
