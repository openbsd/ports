--- ltmain.sh.orig	Mon Mar 22 00:28:21 1999
+++ ltmain.sh	Mon Mar 22 00:29:43 1999
@@ -2023,37 +2023,6 @@
       done
     fi
 
-    echo "------------------------------------------------------------------------------"
-    echo "Libraries have been installed in:"
-    for libdir in $libdirs; do
-      echo "   $libdir"
-    done
-    echo
-    echo "To link against installed libraries in a given directory, LIBDIR,"
-    echo "you must use the \`-LLIBDIR' flag during linking."
-    echo
-    echo " You will also need to do one of the following:"
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
-    if test -f /etc/ld.so.conf; then
-      echo "   - have your system administrator add LIBDIR to \`/etc/ld.so.conf'"
-    fi
-    echo
-    echo "See any operating system documentation about shared libraries for"
-    echo "more information, such as the ld(1) and ld.so(8) manual pages."
-    echo "------------------------------------------------------------------------------"
     exit 0
     ;;
 
