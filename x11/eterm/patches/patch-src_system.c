--- src/system.c.orig	Wed Oct 27 09:44:06 1999
+++ src/system.c	Wed Aug 9 15:46:15 2000
@@ -70,2 +70,2 @@
-    setreuid(my_ruid, my_ruid);
-    setregid(my_rgid, my_rgid);
+	seteuid(my_ruid);
+	setegid(my_rgid);
@@ -90,2 +90,2 @@
-    setreuid(my_ruid, my_ruid);
-    setregid(my_rgid, my_rgid);
+	seteuid(my_ruid);
+	setegid(my_rgid);
