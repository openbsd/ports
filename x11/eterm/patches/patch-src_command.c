--- src/command.c.orig	Tue Nov 2 08:34:35 1999
+++ src/command.c	Wed Aug 9 15:44:45 2000
@@ -680,1 +680,1 @@
-      setregid(my_rgid, my_rgid);
+      setegid(my_rgid);
@@ -689,1 +689,1 @@
-      setreuid(my_ruid, my_ruid);
+      seteuid(my_ruid);
@@ -709,1 +709,1 @@
-      setreuid(my_ruid, my_euid);
+      seteuid(my_euid);
@@ -718,1 +718,1 @@
-      setregid(my_rgid, my_egid);
+      setegid(my_egid);
@@ -2301,2 +2301,2 @@
-    setregid(my_rgid, my_rgid);
-    setreuid(my_ruid, my_ruid);
+    setegid(my_rgid);
+    seteuid(my_ruid);
