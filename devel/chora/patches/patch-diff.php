$OpenBSD: patch-diff.php,v 1.1 2004/06/12 19:18:36 avsm Exp $
===================================================================
--- diff.php	2004/03/26 22:43:22	1.43.2.14
+++ diff.php	2004/06/12 14:06:20	1.43.2.15
@@ -23,7 +23,7 @@ if (!$r1) $r1 = Horde::getFormData('tr1'
 if (!$r2) $r2 = Horde::getFormData('tr2');

 /* If no context-size has been specified, default to 3. */
-$num = Horde::getFormData('num', 3);
+$num = (int)Horde::getFormData('num', 3);

 /* If no type has been specified, then default to human readable. */
 $ty = Horde::getFormData('ty', 'h');
