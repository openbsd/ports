--- gram.y.orig	Fri Jun  8 15:21:39 2001
+++ gram.y	Fri Jun  8 15:21:52 2001
@@ -71,7 +71,7 @@
 extern int do_single_keyword(), do_string_keyword(), do_number_keyword();
 extern name_list **do_colorlist_keyword();
 extern int do_color_keyword();
-extern int yylineno;
+int yylineno;
 %}
 
 %union
