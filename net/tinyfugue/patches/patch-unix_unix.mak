$OpenBSD: patch-unix_unix.mak,v 1.1 2000/09/20 22:42:12 avsm Exp $
--- unix/unix.mak.orig	Wed Sep 20 18:04:05 2000
+++ unix/unix.mak	Wed Sep 20 18:04:53 2000
@@ -22,7 +22,6 @@
 install:  _failmsg _all $(TF) LIBRARY $(MANPAGE) $(SYMLINK)
 	@echo '#####################################################' > exitmsg
 	@echo '## TinyFugue installation successful.' >> exitmsg
-	@echo "## You can safely delete everything in `cd ..; pwd`". >> exitmsg
 	@DIR=`echo $(TF) | sed 's;/[^/]*$$;;'`; \
 	echo ":$(PATH):" | egrep ":$${DIR}:" >/dev/null 2>&1 || { \
 	    echo ; \
@@ -35,7 +34,6 @@
 all files:  _all
 	@echo '#####################################################' > exitmsg
 	@echo '## TinyFugue build successful.' >> exitmsg
-	@echo '## Use "unixmake install" to install the files.' >> exitmsg
 
 _all:  tf$(X) ../tf-lib/tf-help.idx
 
