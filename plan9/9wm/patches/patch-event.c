--- event.c.orig	Wed Nov 29 22:08:48 2000
+++ event.c	Wed Nov 29 22:08:48 2000
@@ -200,7 +200,7 @@
 		XMapWindow(dpy, c->window);
 		XMapRaised(dpy, c->parent);
 		top(c);
-		setstate(c, NormalState);
+		_setstate(c, NormalState);
 		if (c->trans != None && current && c->trans == current->window)
 				active(c);
 		break;
