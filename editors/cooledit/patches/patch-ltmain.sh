--- ltmain.sh.orig	Sat Nov 27 09:46:02 2004
+++ ltmain.sh	Thu Apr 28 22:24:50 2005
@@ -1348,6 +1348,9 @@ EOF
 	  prev=
 	  continue
 	  ;;
+	*-*-openbsd*)
+	  # Do not include libc due to us having libc/libc_r.
+	  ;;
 	*)
 	  eval "$prev=\"\$arg\""
 	  prev=
