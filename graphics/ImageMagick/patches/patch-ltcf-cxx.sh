--- ltcf-cxx.sh.orig	Fri Nov  3 19:51:15 2000
+++ ltcf-cxx.sh	Sun Feb  4 22:43:40 2001
@@ -54,6 +54,13 @@
 compiler=$2
 cc_basename=`$echo X"$compiler" | $Xsed -e 's%^.*/%%'`
 
+case "$host_os" in
+  openbsd*)
+    with_gnu_ld=no
+  ;;
+
+esac
+
 # Check if we are using GNU gcc  (taken/adapted from configure script)
 # We need to check here since "--with-gcc" is set at configure time,
 # not ltconfig time!
@@ -67,6 +74,7 @@
 
   # Set up default GNU C++ configuration
 
+ if test "$with_gnu_ld" != no; then
   # Check if GNU C++ uses GNU ld as the underlying linker, since the
   # archiving commands below assume that GNU ld is being used.
   if eval "`$CC -print-prog-name=ld` --version 2>&1" | \
@@ -91,6 +99,7 @@
     else
       whole_archive_flag_spec=
     fi
+   fi
   else
     with_gnu_ld=no
     wlarc=
@@ -300,6 +309,22 @@
   netbsd*)
     # NetBSD uses g++ - do we need to do anything?
     ;;
+  openbsd*)
+    case "$host_os" in
+      openbsd[01].* | openbsd2.[0-7] | openbsd2.[0-7].*)
+	ld_shlibs=no
+      ;;
+      *)
+	wlarc='${wl}'
+	archive_cmds='$CC -shared $pic_flag -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $lib'
+	hardcode_libdir_flag_spec='${wl}-rpath,$libdir'
+	output_verbose_link_cmds='$CC -shared $pic_flag $CFLAGS -v conftest.$objext 2>&1 | egrep "\-L"'
+	if [ "`/usr/bin/file /usr/lib/libc.so.* | grep ELF`" != "" ]; then
+	  export_dynamic_flag_spec='${wl}-E'
+	fi
+      ;;
+    esac
+    ;;
   osf3*)
     if test "$with_gcc" = yes && test "$with_gnu_ld" = no; then
       allow_undefined_flag=' ${wl}-expect_unresolved ${wl}\*'
@@ -695,6 +720,8 @@
       esac   
       ;;
     netbsd*)
+      ;;
+    openbsd*)
       ;;
     osf3* | osf4* | osf5*)
       case "$cc_basename" in
