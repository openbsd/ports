--- unix/unix.mak.orig	Sat Mar  6 23:43:28 1999
+++ unix/unix.mak	Sat May 22 16:24:59 2010
@@ -22,7 +22,6 @@ BUILDERS   = Makefile
 install:  _failmsg _all $(TF) LIBRARY $(MANPAGE) $(SYMLINK)
 	@echo '#####################################################' > exitmsg
 	@echo '## TinyFugue installation successful.' >> exitmsg
-	@echo "## You can safely delete everything in `cd ..; pwd`". >> exitmsg
 	@DIR=`echo $(TF) | sed 's;/[^/]*$$;;'`; \
 	echo ":$(PATH):" | egrep ":$${DIR}:" >/dev/null 2>&1 || { \
 	    echo ; \
@@ -35,7 +34,6 @@ install:  _failmsg _all $(TF) LIBRARY $(MANPAGE) $(SYM
 all files:  _all
 	@echo '#####################################################' > exitmsg
 	@echo '## TinyFugue build successful.' >> exitmsg
-	@echo '## Use "unixmake install" to install the files.' >> exitmsg
 
 _all:  tf$(X) ../tf-lib/tf-help.idx
 
