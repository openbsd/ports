--- fns.h.orig	Wed Nov 29 22:09:24 2000
+++ fns.h	Wed Nov 29 22:09:24 2000
@@ -47,7 +47,7 @@
 Window	getwprop();
 int 	getiprop();
 int 	getstate();
-void	setstate();
+void	_setstate();
 void	setlabel();
 void	getproto();
 void	gettrans();
