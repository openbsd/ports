--- src/command.c.orig	1999-11-02 08:34:13.000000000 -0800
+++ src/command.c	2004-04-23 18:40:51.000000000 -0700
@@ -248,11 +248,7 @@ ioctl (fd, TIOCLSET, &(tt->local));\
 # define CQUIT		'\034'	/* ^\ */
 #endif
 #ifndef CERASE
-# ifdef linux
 #  define CERASE	'\177'	/* ^? */
-# else
-#  define CERASE	'\010'	/* ^H */
-# endif
 #endif
 #ifndef CKILL
 # define CKILL		'\025'	/* ^U */
@@ -284,6 +280,9 @@ ioctl (fd, TIOCLSET, &(tt->local));\
 #ifndef CLNEXT
 # define CLNEXT		'\026'	/* ^V */
 #endif
+#ifndef STATUS
+# define STATUS		'\024'	/* ^T */
+#endif
 
 #ifndef VDISCRD
 # ifdef VDISCARD
@@ -676,6 +675,8 @@ privileges(int mode)
 
 #ifdef HAVE_SETRESGID
       setresgid(my_rgid, my_rgid, my_egid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEGID)
+      setegid(my_rgid);
 #elif defined(HAVE_SAVED_UIDS)
       setregid(my_rgid, my_rgid);
 #else
@@ -685,6 +686,8 @@ privileges(int mode)
 
 #ifdef HAVE_SETRESUID
       setresuid(my_ruid, my_ruid, my_euid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEUID)
+      seteuid(my_ruid);
 #elif defined(HAVE_SAVED_UIDS)
       setreuid(my_ruid, my_ruid);
 #else
@@ -705,6 +708,8 @@ privileges(int mode)
 
 #ifdef HAVE_SETRESUID
       setresuid(my_ruid, my_euid, my_euid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEUID)
+      seteuid(my_euid);
 #elif defined(HAVE_SAVED_UIDS)
       setreuid(my_ruid, my_euid);
 #else
@@ -714,6 +719,8 @@ privileges(int mode)
 
 #ifdef HAVE_SETRESGID
       setresgid(my_rgid, my_egid, my_egid);
+#elif defined(HAVE_SAVED_UIDS) && defined(HAVE_SETEGID)
+      setegid(my_egid);
 #elif defined(HAVE_SAVED_UIDS)
       setregid(my_rgid, my_egid);
 #else
@@ -2057,6 +2064,9 @@ get_ttymode(ttymode_t * tio)
 # ifdef VLNEXT
     tio->c_cc[VLNEXT] = CLNEXT;
 # endif
+# ifdef VSTATUS
+    tio->c_cc[VSTATUS] = STATUS;
+# endif
   }
   tio->c_cc[VEOF] = CEOF;
   tio->c_cc[VEOL] = VDISABLE;
@@ -2298,8 +2308,16 @@ run_command(char *argv[])
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
 
