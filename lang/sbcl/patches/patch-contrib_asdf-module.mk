$OpenBSD: patch-contrib_asdf-module.mk,v 1.1.1.1 2008/04/14 12:29:40 deanna Exp $
--- contrib/asdf-module.mk.orig	Wed Sep  6 17:56:59 2006
+++ contrib/asdf-module.mk	Thu Apr 10 14:37:27 2008
@@ -18,7 +18,8 @@ endif
 
 export CC SBCL EXTRA_CFLAGS EXTRA_LDFLAGS
 
-all: $(EXTRA_ALL_TARGETS)
+all: $(EXTRA_ALL_TARGETS) $(SYSTEM).fasl
+$(SYSTEM).fasl:
 	$(MAKE) -C ../asdf
 	$(SBCL) --eval '(defvar *system* "$(SYSTEM)")' --load ../asdf-stub.lisp --eval '(quit)'
 
@@ -29,4 +30,4 @@ test: all
 
 
 install: $(EXTRA_INSTALL_TARGETS)
-	tar cf - . | ( cd "$(BUILD_ROOT)$(INSTALL_DIR)" && tar xpvf - )
+	cp -p $(SYSTEM).asd *.lisp *.fasl "$(BUILD_ROOT)$(INSTALL_DIR)"
