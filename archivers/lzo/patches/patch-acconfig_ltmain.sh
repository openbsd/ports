--- acconfig/ltmain.sh.orig	Mon Nov 29 12:37:24 1999
+++ acconfig/ltmain.sh	Sat Nov 11 16:32:09 2000
@@ -1789,6 +1789,9 @@
 	*-*-cygwin* | *-*-mingw* | *-*-os2* | *-*-beos*)
 	  # these systems don't actually have a c library (as such)!
 	  ;;
+	*-*-openbsd*)
+	  # do not include libc due to us having libc/libc_r.
+	  ;;
 	*)
 	  # Add libc to deplibs on all other systems.
 	  deplibs="$deplibs -lc"
@@ -3522,40 +3525,6 @@
     # Exit here if they wanted silent mode.
     test "$show" = : && exit 0
 
-    echo "----------------------------------------------------------------------"
-    echo "Libraries have been installed in:"
-    for libdir in $libdirs; do
-      echo "   $libdir"
-    done
-    echo
-    echo "If you ever happen to want to link against installed libraries"
-    echo "in a given directory, LIBDIR, you must either use libtool, and"
-    echo "specify the full pathname of the library, or use \`-LLIBDIR'"
-    echo "flag during linking and do at least one of the following:"
-    if test -n "$shlibpath_var"; then
-      echo "   - add LIBDIR to the \`$shlibpath_var' environment variable"
-      echo "     during execution"
-    fi
-    if test -n "$runpath_var"; then
-      echo "   - add LIBDIR to the \`$runpath_var' environment variable"
-      echo "     during linking"
-    fi
-    if test -n "$hardcode_libdir_flag_spec"; then
-      libdir=LIBDIR
-      eval flag=\"$hardcode_libdir_flag_spec\"
-
-      echo "   - use the \`$flag' linker flag"
-    fi
-    if test -n "$admincmds"; then
-      echo "   - have your system administrator run these commands:$admincmds"
-    fi
-    if test -f /etc/ld.so.conf; then
-      echo "   - have your system administrator add LIBDIR to \`/etc/ld.so.conf'"
-    fi
-    echo
-    echo "See any operating system documentation about shared libraries for"
-    echo "more information, such as the ld(1) and ld.so(8) manual pages."
-    echo "----------------------------------------------------------------------"
     exit 0
     ;;
 
