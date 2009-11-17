$OpenBSD: patch-make-target-contrib.sh,v 1.2 2009/11/17 10:45:00 pirofti Exp $

Only run the contrib tests if $RUN_CONTRIB_TESTS is not empty.  This
allows the contribs to be build when USE_SYSTRACE=Yes, and the tests
to be run later in do-regress.

--- make-target-contrib.sh.orig	Mon Feb 16 13:36:13 2009
+++ make-target-contrib.sh	Tue Jul  7 17:57:02 2009
@@ -43,6 +43,7 @@ export SBCL SBCL_BUILDING_CONTRIB
 # as SB-RT and SB-GROVEL, but FIXME: there's probably a better
 # solution.  -- CSR, 2003-05-30
 
+if [ -z "$RUN_CONTRIB_TESTS" ]; then
 find contrib/ \( -name '*.fasl' -o \
                  -name '*.FASL' -o \
                  -name 'foo.c' -o \
@@ -56,13 +57,17 @@ find contrib/ \( -name '*.fasl' -o \
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
