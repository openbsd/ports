$OpenBSD: patch-contrib_vanilla-module.mk,v 1.1.1.1 2008/04/14 12:29:40 deanna Exp $
--- contrib/vanilla-module.mk.orig	Wed Sep  6 17:56:59 2006
+++ contrib/vanilla-module.mk	Thu Apr 10 14:13:34 2008
@@ -1,3 +1,4 @@
+all: $(MODULE).fasl
 
 $(MODULE).fasl: $(MODULE).lisp ../../output/sbcl.core
 	$(SBCL) --eval '(compile-file (format nil "SYS:CONTRIB;~:@(~A~);~:@(~A~).LISP" "$(MODULE)" "$(MODULE)"))' </dev/null
