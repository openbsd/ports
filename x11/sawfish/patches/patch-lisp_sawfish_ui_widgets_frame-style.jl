$OpenBSD: patch-lisp_sawfish_ui_widgets_frame-style.jl,v 1.3 2009/10/09 13:06:30 jasper Exp $
--- lisp/sawfish/ui/widgets/frame-style.jl.orig	Sun Sep 20 11:42:02 2009
+++ lisp/sawfish/ui/widgets/frame-style.jl	Sun Sep 27 19:54:16 2009
@@ -113,8 +113,7 @@
 					  (setq full dir)
 					  (throw 'out t))
 				      (error))))
-				'("%s" "%s.tar#tar/%s" "%s.tar.gz#tar/%s"
-				  "%s.tar.Z#tar/%s" "%s.tar.bz2#tar/%s"))
+				'("%s"))
 			  nil)
 		    (setq full (i18n-filename
 				(expand-file-name "README" full)))
