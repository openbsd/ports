--- menu.c.orig	Wed Nov 29 22:08:48 2000
+++ menu.c	Wed Nov 29 22:08:48 2000
@@ -191,7 +191,7 @@
 	}
 	XUnmapWindow(dpy, c->parent);
 	XUnmapWindow(dpy, c->window);
-	setstate(c, IconicState);
+	_setstate(c, IconicState);
 	if (c == current)
 		nofocus();
 	hiddenc[numhidden] = c;
@@ -222,7 +222,7 @@
 	if (map) {
 		XMapWindow(dpy, c->window);
 		XMapRaised(dpy, c->parent);
-		setstate(c, NormalState);
+		_setstate(c, NormalState);
 		active(c);
 		top(c);
 	}
