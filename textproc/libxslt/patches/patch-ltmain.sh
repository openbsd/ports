$OpenBSD: patch-ltmain.sh,v 1.7 2003/06/28 15:54:26 sturm Exp $
--- ltmain.sh.orig	Fri Oct 18 13:44:01 2002
+++ ltmain.sh	Sat Jun 28 17:46:24 2003
@@ -745,6 +745,7 @@ compiler."
     linker_flags=
     dllsearchpath=
     lib_search_path=`pwd`
+    inst_prefix_dir=
 
     avoid_version=no
     dlfiles=
@@ -875,6 +876,11 @@ compiler."
 	  prev=
 	  continue
 	  ;;
+	inst_prefix)
+	  inst_prefix_dir="$arg"
+	  prev=
+	  continue
+	  ;;
 	release)
 	  release="-$arg"
 	  prev=
@@ -975,6 +981,10 @@ compiler."
 	fi
 	continue
 	;;
+      -inst-prefix-dir)
+	prev=inst_prefix
+	continue
+	;;
 
       # The native IRIX linker understands -LANG:*, -LIST:* and -LNO:*
       # so, if we see these flags be careful not to treat them like -L
@@ -1068,6 +1078,17 @@ compiler."
 
       -o) prev=output ;;
 
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
       -release)
 	prev=release
 	continue
@@ -1473,6 +1494,9 @@ compiler."
 	  fi
 	  continue
 	  ;;
+	-pthread)
+	  continue
+	  ;;
 	%DEPLIBS%)
 	  alldeplibs=yes
 	  continue
@@ -1845,6 +1869,7 @@ compiler."
 
 	  if test "$linkmode" = prog || test "$mode" = relink; then
 	    add_shlibpath=
+	    add_prefix_dir=
 	    add_dir=
 	    add=
 	    # Finalize command for both is simple: just hardcode it.
@@ -1865,10 +1890,20 @@ compiler."
 	      add="-l$name"
 	    fi
 
+	    if test -n "$inst_prefix_dir"; then
+	      case "$libdir" in
+	      [\\/]*)
+		add_prefix_dir="-L$inst_prefix_dir$libdir"
+	      ;;
+	      esac
+	    fi
+
 	    if test "$linkmode" = prog; then
 	      test -n "$add_dir" && finalize_deplibs="$add_dir $finalize_deplibs"
+	      test -n "$add_prefix_dir" && finalize_deplibs="$finalize_deplibs $add_prefix_dir"
 	      test -n "$add" && finalize_deplibs="$add $finalize_deplibs"
 	    else
+	      test -n "$add_prefix_dir" && deplibs="$deplibs $add_prefix_dir"
 	      test -n "$add_dir" && deplibs="$add_dir $deplibs"
 	      test -n "$add" && deplibs="$add $deplibs"
 	    fi
@@ -3823,7 +3858,7 @@ fi\
 	fi
       done
       # Quote the link command for shipping.
-      relink_command="cd `pwd`; $SHELL $0 --mode=relink $libtool_args"
+      relink_command="cd `pwd`; $SHELL $0 --mode=relink $libtool_args @inst_prefix_dir@"
       relink_command=`$echo "X$relink_command" | $Xsed -e "$sed_quote_subst"`
 
       # Only create the output if not a dry run.
@@ -4124,6 +4159,23 @@ relink_command=\"$relink_command\""
 	dir="$dir$objdir"
 
 	if test -n "$relink_command"; then
+	  # Determine the prefix the user has applied to our future dir.
+	  inst_prefix_dir=`$echo "$destdir" | sed "s%$libdir\$%%"`
+
+	  # Don't allow the user to place us outside of our expected
+	  # location b/c this prevents finding dependent libraries that
+	  # are installed to the same prefix.
+	  if test "$inst_prefix_dir" = "$destdir"; then
+	    $echo "$modename: error: cannot install \`$file' to a directory not ending in $libdir" 1>&2
+	    exit 1
+	  fi
+
+	  if test -n "$inst_prefix_dir"; then
+	    # Stick the inst_prefix_dir data into the link command.
+	    relink_command=`$echo "$relink_command" | sed "s%@inst_prefix_dir@%-inst-prefix-dir $inst_prefix_dir%"`
+	  else
+	    relink_command=`$echo "$relink_command" | sed "s%@inst_prefix_dir@%%"`
+	  fi
 	  $echo "$modename: warning: relinking \`$file'" 1>&2
 	  $show "$relink_command"
 	  if $run eval "$relink_command"; then :
@@ -4412,40 +4464,6 @@ relink_command=\"$relink_command\""
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
 
