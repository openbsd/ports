--- manage.c.orig	Fri Aug 18 21:27:31 2000
+++ manage.c	Fri Aug 18 21:27:34 2000
@@ -131,7 +131,7 @@
             active(c);
         else
             setactive(c, 0);
-        setstate(c, NormalState);
+        _setstate(c, NormalState);
     }
     if (current != c)
         cmapfocus(current);
@@ -161,7 +161,7 @@
     XReparentWindow(dpy, c->window, root, c->x, c->y);
     gravitate(c, 0);
     XRemoveFromSaveSet(dpy, c->window);
-    setstate(c, WithdrawnState);
+    _setstate(c, WithdrawnState);
 
     /* flush any errors */
     ignore_badwindow = 1;
@@ -417,7 +417,7 @@
 }
 
 void
-setstate(c, state)
+_setstate(c, state)
 Client *c;
 int state;
 {
