--- ltcf-c.sh.orig	Sun Feb  4 20:19:31 2001
+++ ltcf-c.sh	Sun Feb  4 20:54:25 2001
@@ -47,6 +47,9 @@
     with_gnu_ld=no
   fi
   ;;
+openbsd*)
+  with_gnu_ld=no
+  ;;
 
 esac
 
@@ -378,10 +381,21 @@
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
