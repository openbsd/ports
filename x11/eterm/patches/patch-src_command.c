--- src/command.c.orig	Tue Nov  2 11:34:35 1999
+++ src/command.c	Sat Aug 12 04:58:09 2000
@@ -676,6 +676,8 @@
 
 #ifdef HAVE_SETRESGID
       setresgid(my_rgid, my_rgid, my_egid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEGID)
+      setegid(my_rgid);
 #elif defined(HAVE_SAVED_UIDS)
       setregid(my_rgid, my_rgid);
 #else
@@ -685,6 +687,8 @@
 
 #ifdef HAVE_SETRESUID
       setresuid(my_ruid, my_ruid, my_euid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEUID)
+      seteuid(my_ruid);
 #elif defined(HAVE_SAVED_UIDS)
       setreuid(my_ruid, my_ruid);
 #else
@@ -705,6 +709,8 @@
 
 #ifdef HAVE_SETRESUID
       setresuid(my_ruid, my_euid, my_euid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEUID)
+      seteuid(my_euid);
 #elif defined(HAVE_SAVED_UIDS)
       setreuid(my_ruid, my_euid);
 #else
@@ -714,6 +720,8 @@
 
 #ifdef HAVE_SETRESGID
       setresgid(my_rgid, my_egid, my_egid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEGID)
+      setegid(my_egid);
 #elif defined(HAVE_SAVED_UIDS)
       setregid(my_rgid, my_egid);
 #else
@@ -2298,8 +2306,16 @@
        because the exec*() calls reset the saved uid/gid to the
        effective uid/gid                               -- mej */
 # ifndef __CYGWIN32__
+#ifdef HAVE_SETEGID
+    setegid(my_rgid);
+#else
     setregid(my_rgid, my_rgid);
+#endif
+#ifdef HAVE_SETEUID
+    seteuid(my_ruid);
+#else
     setreuid(my_ruid, my_ruid);
+#endif
 # endif				/* __CYGWIN32__ */
 #endif /* _HPUX_SOURCE */
 
