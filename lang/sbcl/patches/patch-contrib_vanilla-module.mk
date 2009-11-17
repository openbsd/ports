$OpenBSD: patch-contrib_vanilla-module.mk,v 1.2 2009/11/17 10:45:00 pirofti Exp $

Add an 'all' target to allow building without running tests.

--- contrib/vanilla-module.mk.orig	Wed Sep  6 17:56:59 2006
+++ contrib/vanilla-module.mk	Thu Apr 10 14:13:34 2008
@@ -1,3 +1,4 @@
+all: $(MODULE).fasl
 
 $(MODULE).fasl: $(MODULE).lisp ../../output/sbcl.core
 	$(SBCL) --eval '(compile-file (format nil "SYS:CONTRIB;~:@(~A~);~:@(~A~).LISP" "$(MODULE)" "$(MODULE)"))' </dev/null
