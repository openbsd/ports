$OpenBSD: patch-ltcf-c.sh,v 1.2 2002/09/15 03:52:04 brad Exp $
--- ltcf-c.sh.orig	Wed Nov 15 22:29:29 2000
+++ ltcf-c.sh	Sat Sep 14 23:34:44 2002
@@ -47,6 +47,9 @@ cygwin* | mingw*)
     with_gnu_ld=no
   fi
   ;;
+openbsd*)
+  with_gnu_ld=no
+  ;;
 
 esac
 
@@ -378,10 +381,21 @@ else
     ;;
 
   openbsd*)
-    archive_cmds='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'
-    hardcode_libdir_flag_spec='-R$libdir'
     hardcode_direct=yes
     hardcode_shlibpath_var=no
+    case "$host_os" in
+       openbsd[01].* | openbsd2.[0-7] | openbsd2.[0-7].*)
+	archive_cmds='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'
+	hardcode_libdir_flag_spec='-R$libdir'
+       ;;
+       *)
+	archive_cmds='$CC -shared $pic_flag -o $lib $libobjs $deplibs $linker_flags'
+	hardcode_libdir_flag_spec='${wl}-rpath,$libdir'
+	if [ "`/usr/bin/file /usr/lib/libc.so.* | grep ELF`" != "" ]; then
+	  export_dynamic_flag_spec='${wl}-E'
+	fi
+       ;;
+    esac
     ;;
 
   os2*)
