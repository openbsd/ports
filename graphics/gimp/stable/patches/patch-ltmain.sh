$OpenBSD: patch-ltmain.sh,v 1.1.1.1 2002/07/28 21:55:10 brad Exp $
--- ltmain.sh.orig	Sun Jul 28 15:41:41 2002
+++ ltmain.sh	Sun Jul 28 15:45:42 2002
@@ -1062,6 +1062,17 @@ compiler."
 	continue
 	;;
 
+      -pthread)
+	case $host in
+	*-*-openbsd*)
+	  deplibs="$deplibs $arg"
+	  ;;
+	*)
+	  continue
+	  ;;
+	esac
+	;;
+
       -module)
 	module=yes
 	continue
@@ -1747,11 +1758,6 @@ compiler."
 	    continue
 	  fi
 
-	  if test "$installed" = no; then
-	    notinst_deplibs="$notinst_deplibs $lib"
-	    need_relink=yes
-	  fi
-
 	  if test -n "$old_archive_from_expsyms_cmds"; then
 	    # figure out the soname
 	    set dummy $library_names
@@ -4491,40 +4497,6 @@ relink_command=\"$relink_command\""
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
 
