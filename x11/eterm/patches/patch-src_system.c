--- src/system.c.orig	Wed Oct 27 12:44:06 1999
+++ src/system.c	Sat Aug 12 05:02:38 2000
@@ -67,8 +67,16 @@
   D_OPTIONS(("system_wait(%s) called.\n", command));
 
   if (!(pid = fork())) {
+#ifdef HAVE_SETEUID
+    seteuid(my_ruid);
+#else
     setreuid(my_ruid, my_ruid);
+#endif
+#ifdef HAVE_SETEGID
+    setegid(my_rgid);
+#else
     setregid(my_rgid, my_rgid);
+#endif
     execl("/bin/sh", "sh", "-c", command, (char *) NULL);
     print_error("system_wait():  execl(%s) failed -- %s", command, strerror(errno));
     exit(EXIT_FAILURE);
@@ -87,8 +95,16 @@
   D_OPTIONS(("system_no_wait(%s) called.\n", command));
 
   if (!(pid = fork())) {
+#ifdef HAVE_SETEUID
+    seteuid(my_ruid);
+#else
     setreuid(my_ruid, my_ruid);
+#endif
+#ifdef HAVE_SETEGID
+    setegid(my_rgid);
+#else
     setregid(my_rgid, my_rgid);
+#endif
     execl("/bin/sh", "sh", "-c", command, (char *) NULL);
     print_error("system_no_wait():  execl(%s) failed -- %s", command, strerror(errno));
     exit(EXIT_FAILURE);
