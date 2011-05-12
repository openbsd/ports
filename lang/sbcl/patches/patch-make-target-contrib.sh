$OpenBSD: patch-make-target-contrib.sh,v 1.3 2011/05/12 02:11:52 joshe Exp $

Only run the contrib tests if $RUN_CONTRIB_TESTS is not empty.  This
allows the contribs to be build when USE_SYSTRACE=Yes, and the tests
to be run later in do-regress.

--- make-target-contrib.sh.orig	Fri Nov  5 19:50:28 2010
+++ make-target-contrib.sh	Sun Nov  7 07:03:48 2010
@@ -43,6 +43,7 @@ export SBCL SBCL_BUILDING_CONTRIB
 # as SB-RT and SB-GROVEL, but FIXME: there's probably a better
 # solution.  -- CSR, 2003-05-30
 
+if [ -z "$RUN_CONTRIB_TESTS" ]; then
 find contrib/ \( -name '*.fasl' -o \
                  -name '*.FASL' -o \
                  -name 'foo.c' -o \
@@ -57,6 +58,11 @@ find contrib/ \( -name '*.fasl' -o \
 
 find output -name 'building-contrib.*' -print | xargs rm -f
 
+make_target=all
+else
+make_target=test
+fi
+
 # Ignore all source registries.
 CL_SOURCE_REGISTRY='(:source-registry :ignore-inherited-configuration)'
 export CL_SOURCE_REGISTRY
@@ -66,7 +72,7 @@ for i in contrib/*; do
     # export INSTALL_DIR=$SBCL_HOME/`basename $i `
     test -f $i/test-passed && rm $i/test-passed
     # hack to get exit codes right.
-    if $GNUMAKE -C $i test 2>&1 && touch $i/test-passed ; then
+    if $GNUMAKE -C $i $make_target 2>&1 && touch $i/test-passed ; then
 	:
     else
 	exit $?
