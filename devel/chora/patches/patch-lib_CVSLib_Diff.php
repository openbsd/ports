$OpenBSD: patch-lib_CVSLib_Diff.php,v 1.1 2004/06/12 19:18:36 avsm Exp $
===================================================================
--- lib/CVSLib/Diff.php	2002/12/28 18:54:02	1.18.2.4
+++ lib/CVSLib/Diff.php	2004/06/12 14:06:20	1.18.2.5
@@ -56,10 +56,10 @@ class CVSLib_Diff {
         }
         switch ($type) {
         case CVSLIB_DIFF_CONTEXT:
-            $options = $opts . '-p --context=' . $num;
+            $options = $opts . '-p --context=' . (int)$num;
             break;
         case CVSLIB_DIFF_UNIFIED:
-            $options = $opts . '-p --unified=' . $num;
+            $options = $opts . '-p --unified=' . (int)$num;
             break;
         case CVSLIB_DIFF_COLUMN:
             $options = $opts . '--side-by-side --width=120';
