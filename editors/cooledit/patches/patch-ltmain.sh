--- ltmain.sh.orig	2002-08-03 13:03:26.000000000 +0200
+++ ltmain.sh	2003-08-01 20:33:56.000000000 +0200
@@ -930,6 +930,9 @@ compiler."
 	  finalize_command="$finalize_command $wl$qarg"
 	  continue
 	  ;;
+	*-*-openbsd*)
+	  # Do not include libc due to us having libc/libc_r.
+	  ;;
 	*)
 	  eval "$prev=\"\$arg\""
 	  prev=
