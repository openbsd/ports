$OpenBSD: patch-ball.c,v 1.2 2004/03/05 22:56:42 naddy Exp $
--- ball.c.orig	1996-11-22 02:28:46.000000000 +0100
+++ ball.c	2004-03-05 23:30:39.000000000 +0100
@@ -50,7 +50,6 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <math.h>
-#include <values.h>
 #include <xpm.h>
 #include <X11/Xos.h>
 
