--- menu.c.orig	Fri Aug 18 21:27:32 2000
+++ menu.c	Fri Aug 18 21:27:34 2000
@@ -179,7 +179,7 @@
     }
     XUnmapWindow(dpy, c->parent);
     XUnmapWindow(dpy, c->window);
-    setstate(c, IconicState);
+    _setstate(c, IconicState);
     if (c == current)
         nofocus();
     hiddenc[numhidden] = c;
@@ -210,7 +210,7 @@
     if (map) {
         XMapWindow(dpy, c->window);
         XMapRaised(dpy, c->parent);
-        setstate(c, NormalState);
+        _setstate(c, NormalState);
         active(c);
     }
 
