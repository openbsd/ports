--- lisp/sawfish/ui/widgets/frame-style.jl.orig	Sun Jul 29 11:45:04 2007
+++ lisp/sawfish/ui/widgets/frame-style.jl	Sun Sep 27 18:54:31 2009
@@ -112,8 +112,7 @@
 					  (setq full dir)
 					  (throw 'out t))
 				      (error))))
-				'("%s" "%s.tar#tar/%s" "%s.tar.gz#tar/%s"
-				  "%s.tar.Z#tar/%s" "%s.tar.bz2#tar/%s"))
+				'("%s"))
 			  nil)
 		    (setq full (i18n-filename
 				(expand-file-name "README" full)))
