--- support/bashbug.sh.orig	Tue Jan 16 14:47:19 2001
+++ support/bashbug.sh	Tue Jan 16 14:47:46 2001
@@ -15,7 +15,7 @@
 PATH=/bin:/usr/bin:usr/local/bin:$PATH
 export PATH
 
-TEMP=/tmp/bashbug.$$
+TEMP=`/bin/mktemp /tmp/bashbug.XXXXXX`
 
 BUGADDR=${1-bug-bash@prep.ai.mit.edu}
 
