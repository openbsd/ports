--- src/command.c.orig	Tue Nov  2 08:34:35 1999
+++ src/command.c	Thu Aug 10 20:56:03 2000
@@ -677,7 +677,7 @@
 #ifdef HAVE_SETRESGID
       setresgid(my_rgid, my_rgid, my_egid);
 #elif defined(HAVE_SAVED_UIDS)
-      setregid(my_rgid, my_rgid);
+      setegid(my_rgid);
 #else
       setregid(my_egid, -1);
       setregid(-1, my_rgid);
@@ -686,7 +686,7 @@
 #ifdef HAVE_SETRESUID
       setresuid(my_ruid, my_ruid, my_euid);
 #elif defined(HAVE_SAVED_UIDS)
-      setreuid(my_ruid, my_ruid);
+      seteuid(my_ruid);
 #else
       setreuid(my_euid, -1);
       setreuid(-1, my_ruid);
@@ -706,7 +706,7 @@
 #ifdef HAVE_SETRESUID
       setresuid(my_ruid, my_euid, my_euid);
 #elif defined(HAVE_SAVED_UIDS)
-      setreuid(my_ruid, my_euid);
+      seteuid(my_euid);
 #else
       setreuid(-1, my_euid);
       setreuid(my_ruid, -1);
@@ -715,7 +715,7 @@
 #ifdef HAVE_SETRESGID
       setresgid(my_rgid, my_egid, my_egid);
 #elif defined(HAVE_SAVED_UIDS)
-      setregid(my_rgid, my_egid);
+      setegid(my_egid);
 #else
       setregid(-1, my_egid);
       setregid(my_rgid, -1);
@@ -2298,8 +2298,8 @@
        because the exec*() calls reset the saved uid/gid to the
        effective uid/gid                               -- mej */
 # ifndef __CYGWIN32__
-    setregid(my_rgid, my_rgid);
-    setreuid(my_ruid, my_ruid);
+    setegid(my_rgid);
+    seteuid(my_ruid);
 # endif				/* __CYGWIN32__ */
 #endif /* _HPUX_SOURCE */
 
