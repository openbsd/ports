--- aclocal.m4.orig	Sun Mar  4 14:23:29 2001
+++ aclocal.m4	Fri Jul 13 21:38:22 2001
@@ -4348,6 +4348,10 @@
   fi
   ;;
 
+openbsd* )
+  lt_cv_deplibs_check_method=pass_all
+  ;;
+
 gnu*)
   lt_cv_deplibs_check_method=pass_all
   ;;
