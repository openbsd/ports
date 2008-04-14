$OpenBSD: patch-tests_subr.sh,v 1.1.1.1 2008/04/14 12:29:40 deanna Exp $
--- tests/subr.sh.orig	Fri Dec 28 11:46:57 2007
+++ tests/subr.sh	Thu Apr 10 14:13:34 2008
@@ -29,7 +29,7 @@ set -a # export all variables at assignment-time.
 SBCL_HOME="$SBCL_PWD/../contrib"
 SBCL_CORE="$SBCL_PWD/../output/sbcl.core"
 SBCL_RUNTIME="$SBCL_PWD/../src/runtime/sbcl"
-SBCL_ARGS="--noinform --no-sysinit --no-userinit --noprint --disable-debugger"
+SBCL_ARGS="--noinform --dynamic-space-size 600 --no-sysinit --no-userinit --noprint --disable-debugger"
 
 # Scripts that use these variables should quote them.
 TEST_BASENAME="$(basename $0)"
