--- ltmain.sh.orig	Thu Aug 23 19:24:25 2001
+++ ltmain.sh	Wed Sep  5 15:11:27 2001
@@ -1031,12 +1031,28 @@ compiler."
 	    # These systems don't actually have a C library (as such)
 	    test "X$arg" = "X-lc" && continue
 	    ;;
+	  *-*-openbsd*)
+	    # Do not include libc due to us having libc/libc_r.
+	    test "X$arg" = "X-lc" && continue
+	    ;;
+	  esac
+	fi
+	if test "X$arg" = "X-lc_r"; then
+	  case $host in
+	  *-*-openbsd*)
+	    # Do not include libc_r directly, use -pthread flag.
+	    continue
+	    ;;
 	  esac
 	fi
 	deplibs="$deplibs $arg"
 	continue
 	;;
 
+      -?thread)
+	deplibs="$deplibs $arg"
+	;;
+
       -module)
 	module=yes
 	continue
@@ -2401,6 +2417,9 @@ compiler."
 	  *-*-cygwin* | *-*-mingw* | *-*-pw32* | *-*-os2* | *-*-beos*)
 	    # these systems don't actually have a c library (as such)!
 	    ;;
+	  *-*-openbsd*)
+	    # Do not include libc due to us having libc/libc_r.
+	    ;;
 	  *-*-rhapsody* | *-*-darwin1.[012])
 	    # Rhapsody C library is in the System framework
 	    deplibs="$deplibs -framework System"
@@ -4412,40 +4431,6 @@ relink_command=\"$relink_command\""
     # Exit here if they wanted silent mode.
     test "$show" = ":" && exit 0
 
-    echo "----------------------------------------------------------------------"
-    echo "Libraries have been installed in:"
-    for libdir in $libdirs; do
-      echo "   $libdir"
-    done
-    echo
-    echo "If you ever happen to want to link against installed libraries"
-    echo "in a given directory, LIBDIR, you must either use libtool, and"
-    echo "specify the full pathname of the library, or use the \`-LLIBDIR'"
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
 
