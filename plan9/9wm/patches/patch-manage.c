--- manage.c.orig	Wed Nov 29 22:08:48 2000
+++ manage.c	Wed Nov 29 22:08:48 2000
@@ -135,7 +135,7 @@
 			active(c);
 		else
 			setactive(c, 0);
-		setstate(c, NormalState);
+		_setstate(c, NormalState);
 	}
 	if (current && (current != c))
 		cmapfocus(current);
@@ -195,7 +195,7 @@
 	XReparentWindow(dpy, c->window, c->screen->root, c->x, c->y);
 	gravitate(c, 0);
 	XRemoveFromSaveSet(dpy, c->window);
-	setstate(c, WithdrawnState);
+	_setstate(c, WithdrawnState);
 
 	/* flush any errors */
 	ignore_badwindow = 1;
@@ -452,7 +452,7 @@
 }
 
 void
-setstate(c, state)
+_setstate(c, state)
 Client *c;
 int state;
 {
