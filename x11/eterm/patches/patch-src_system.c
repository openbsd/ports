--- src/system.c.orig	Wed Oct 27 09:44:06 1999
+++ src/system.c	Thu Aug 10 20:56:04 2000
@@ -67,8 +67,8 @@
   D_OPTIONS(("system_wait(%s) called.\n", command));
 
   if (!(pid = fork())) {
-    setreuid(my_ruid, my_ruid);
-    setregid(my_rgid, my_rgid);
+	seteuid(my_ruid);
+	setegid(my_rgid);
     execl("/bin/sh", "sh", "-c", command, (char *) NULL);
     print_error("system_wait():  execl(%s) failed -- %s", command, strerror(errno));
     exit(EXIT_FAILURE);
@@ -87,8 +87,8 @@
   D_OPTIONS(("system_no_wait(%s) called.\n", command));
 
   if (!(pid = fork())) {
-    setreuid(my_ruid, my_ruid);
-    setregid(my_rgid, my_rgid);
+	seteuid(my_ruid);
+	setegid(my_rgid);
     execl("/bin/sh", "sh", "-c", command, (char *) NULL);
     print_error("system_no_wait():  execl(%s) failed -- %s", command, strerror(errno));
     exit(EXIT_FAILURE);
