--- fns.h.orig	Sat May 27 11:01:17 2000
+++ fns.h	Fri Aug 18 14:54:25 2000
@@ -31,7 +31,7 @@
 Window  getwprop();
 int     getiprop();
 int     getstate();
-void    setstate();
+void    _setstate();
 void    setlabel();
 void    getproto();
 void    gettrans();
