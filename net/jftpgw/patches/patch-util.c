--- util.c.orig	Tue Jun 20 09:58:08 2000
+++ util.c	Sat Jul 22 00:34:10 2000
@@ -68,7 +68,7 @@
 		uid = getuid();
 	}
 	if (what == EUID) {
-		i = setreuid(-1, uid);
+		i = seteuid(uid);
 	}
 	else {
 		i = setuid(uid);
