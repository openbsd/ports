--- 9wm.c.orig	Sat May 27 11:20:14 2000
+++ 9wm.c	Fri Aug 18 14:54:24 2000
@@ -472,7 +472,7 @@
     case NormalState:
         XMapRaised(dpy, c->parent);
         XMapWindow(dpy, c->window);
-        setstate(c, NormalState);
+        _setstate(c, NormalState);
         if (c->trans != None && current && c->trans == current->window)
                 active(c);
         break;
