--- menu.c.orig	Sat May 27 11:50:16 2000
+++ menu.c	Fri Aug 18 14:54:25 2000
@@ -172,7 +172,7 @@
     {
       XUnmapWindow(dpy, c->parent);
       XUnmapWindow(dpy, c->window);
-      setstate(c, IconicState);
+      _setstate(c, IconicState);
       if (c == current)
 	nofocus();
     }
@@ -186,7 +186,7 @@
 	{
 	  XMapWindow(dpy, c->window);
 	  XMapWindow(dpy, c->parent);
-	  setstate(c, NormalState);
+	  _setstate(c, NormalState);
 	  if (currents[virtual] == c)
 	    active(c); 
 	}
@@ -281,7 +281,7 @@
     }
     XUnmapWindow(dpy, c->parent);
     XUnmapWindow(dpy, c->window);
-    setstate(c, IconicState);
+    _setstate(c, IconicState);
     if (c == current)
         nofocus();
     hiddenc[numhidden] = c;
@@ -312,7 +312,7 @@
     if (map) {
         XMapWindow(dpy, c->window);
         XMapRaised(dpy, c->parent);
-        setstate(c, NormalState);
+        _setstate(c, NormalState);
         active(c);
     }
 
