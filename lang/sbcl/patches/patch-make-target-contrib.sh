$OpenBSD: patch-make-target-contrib.sh,v 1.1.1.1 2008/04/14 12:29:40 deanna Exp $
--- make-target-contrib.sh.orig	Mon Oct  8 04:02:52 2007
+++ make-target-contrib.sh	Thu Apr 10 14:13:34 2008
@@ -42,6 +42,7 @@ export SBCL SBCL_BUILDING_CONTRIB
 # as SB-RT and SB-GROVEL, but FIXME: there's probably a better
 # solution.  -- CSR, 2003-05-30
 
+if [ -z "$RUN_CONTRIB_TESTS" ]; then
 find contrib/ \( -name '*.fasl' -o \
                  -name '*.FASL' -o \
                  -name 'foo.c' -o \
@@ -55,13 +56,17 @@ find contrib/ \( -name '*.fasl' -o \
   -print | xargs rm -f
 
 find output -name 'building-contrib.*' -print | xargs rm -f
+make_target=all
+else
+make_target=test
+fi
 
 for i in contrib/*; do
     test -d $i && test -f $i/Makefile || continue;
     # export INSTALL_DIR=$SBCL_HOME/`basename $i `
     test -f $i/test-passed && rm $i/test-passed
     # hack to get exit codes right.
-    if $GNUMAKE -C $i test 2>&1 && touch $i/test-passed ; then
+    if $GNUMAKE -C $i $make_target 2>&1 && touch $i/test-passed ; then
 	:
     else
 	exit $?
