--- fns.h.orig	Fri Aug 18 21:27:33 2000
+++ fns.h	Fri Aug 18 21:27:34 2000
@@ -31,7 +31,7 @@
 Window  getwprop();
 int     getiprop();
 int     getstate();
-void    setstate();
+void    _setstate();
 void    setlabel();
 void    getproto();
 void    gettrans();
