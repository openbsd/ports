--- 9wm.c.orig	Fri Aug 18 21:27:31 2000
+++ 9wm.c	Fri Aug 18 21:27:34 2000
@@ -471,7 +471,7 @@
     case NormalState:
         XMapRaised(dpy, c->parent);
         XMapWindow(dpy, c->window);
-        setstate(c, NormalState);
+        _setstate(c, NormalState);
         if (c->trans != None && current && c->trans == current->window)
                 active(c);
         break;
