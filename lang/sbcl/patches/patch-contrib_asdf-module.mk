$OpenBSD: patch-contrib_asdf-module.mk,v 1.3 2010/08/24 12:20:30 jasper Exp $

Fix 'all' target to allow building without running tests.

Don't copy every single file when installing the contribs, only the
ones that are actually needed to load the system.

--- contrib/asdf-module.mk.orig	Thu Jan 28 11:46:39 2010
+++ contrib/asdf-module.mk	Fri Jul 30 12:24:33 2010
@@ -22,7 +22,8 @@ endif
 
 export CC SBCL EXTRA_CFLAGS EXTRA_LDFLAGS
 
-all: $(EXTRA_ALL_TARGETS)
+all: $(EXTRA_ALL_TARGETS) $(SYSTEM).fasl
+$(SYSTEM).fasl:
 	$(MAKE) -C ../asdf
 	$(SBCL) --eval '(defvar *system* "$(SYSTEM)")' --load ../asdf-stub.lisp --eval '(quit)'
 
@@ -34,5 +35,4 @@ test: all
 # KLUDGE: There seems to be no portable way to tell tar to not to
 # preserve owner, so chown after installing for the current user.
 install: $(EXTRA_INSTALL_TARGETS)
-	tar cf - . | ( cd "$(BUILD_ROOT)$(INSTALL_DIR)" && tar xpvf - )
-	find "$(BUILD_ROOT)$(INSTALL_DIR)" -exec chown `id -u`:`id -g` {} \;
+	cp -p $(SYSTEM).asd *.lisp *.fasl "$(BUILD_ROOT)$(INSTALL_DIR)"
