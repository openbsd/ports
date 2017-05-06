$OpenBSD: patch-gram.y,v 1.3 2017/05/06 10:19:04 naddy Exp $
Index: gram.y
--- gram.y.orig
+++ gram.y
@@ -45,6 +45,7 @@
 #include "util.h"
 #include "screen.h"
 #include "parse.h"
+#include "icons.h"
 #include <X11/Xos.h>
 #include <X11/Xmu/CharSet.h>
 
@@ -71,7 +72,7 @@ unsigned int mods_used = (ShiftMask | ControlMask | Mo
 extern int do_single_keyword(), do_string_keyword(), do_number_keyword();
 extern name_list **do_colorlist_keyword();
 extern int do_color_keyword();
-extern int yylineno;
+int yylineno;
 %}
 
 %union
@@ -645,18 +646,21 @@ number		: NUMBER		{ $$ = $1; }
 		;
 
 %%
+static void
 yyerror(s) char *s;
 {
     twmrc_error_prefix();
     fprintf (stderr, "error in input file:  %s\n", s ? s : "");
     ParseError = 1;
 }
+
+static void
 RemoveDQuote(str)
 char *str;
 {
     register char *i, *o;
-    register n;
-    register count;
+    register int n;
+    register int count;
 
     for (i=str+1, o=str; *i && *i != '\"'; o++)
     {
@@ -868,6 +872,7 @@ static Bool CheckColormapArg (s)
 }
 
 
+void
 twmrc_error_prefix ()
 {
     fprintf (stderr, "%s:  line %d:  ", ProgramName, yylineno);
