$OpenBSD: patch-gcc_c-typeck.c,v 1.1 2005/01/04 23:05:54 espie Exp $
--- gcc/c-typeck.c.orig	Thu Apr  1 18:20:12 2004
+++ gcc/c-typeck.c	Mon Jan  3 10:17:41 2005
@@ -3232,18 +3232,19 @@ static void
 pedantic_lvalue_warning (code)
      enum tree_code code;
 {
-  switch (code)
-    {
-    case COND_EXPR:
-      pedwarn ("use of conditional expressions as lvalues is deprecated");
-      break;
-    case COMPOUND_EXPR:
-      pedwarn ("use of compound expressions as lvalues is deprecated");
-      break;
-    default:
-      pedwarn ("use of cast expressions as lvalues is deprecated");
-      break;
-    }
+  if (pedantic)
+    switch (code)
+      {
+      case COND_EXPR:
+	pedwarn ("use of conditional expressions as lvalues is deprecated");
+	break;
+      case COMPOUND_EXPR:
+	pedwarn ("use of compound expressions as lvalues is deprecated");
+	break;
+      default:
+	pedwarn ("use of cast expressions as lvalues is deprecated");
+	break;
+      }
 }
 
 /* Warn about storing in something that is `const'.  */
