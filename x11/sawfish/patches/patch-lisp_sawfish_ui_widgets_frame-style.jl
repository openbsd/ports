--- lisp/sawfish/ui/widgets/frame-style.jl.orig	Tue Nov 28 05:13:51 2000
+++ lisp/sawfish/ui/widgets/frame-style.jl	Mon Feb  5 19:16:00 2001
@@ -99,8 +99,7 @@
 					  (setq full dir)
 					  (throw 'out t))
 				      (error))))
-				'("%s" "%s.tar#tar/%s" "%s.tar.gz#tar/%s"
-				  "%s.tar.Z#tar/%s" "%s.tar.bz2#tar/%s"))
+				'("%s"))
 			  nil)
 		    (setq full (i18n-filename
 				(expand-file-name "README" full)))
