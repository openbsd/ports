$OpenBSD: patch-contrib_asdf-module.mk,v 1.4 2011/05/12 02:11:52 joshe Exp $

Fix 'all' target to allow building without running tests.

Don't copy every single file when installing the contribs, only the
ones that are actually needed to load the system.

--- contrib/asdf-module.mk.orig	Sat Dec  4 19:32:29 2010
+++ contrib/asdf-module.mk	Sun Jan 16 15:01:17 2011
@@ -25,7 +25,8 @@ endif
 
 export CC SBCL EXTRA_CFLAGS EXTRA_LDFLAGS
 
-all: $(EXTRA_ALL_TARGETS)
+all: $(EXTRA_ALL_TARGETS) $(SYSTEM).fasl
+$(SYSTEM).fasl:
 	$(MAKE) -C ../asdf
 	$(SBCL) --eval '(defvar *system* "$(SYSTEM)")' --load ../asdf-stub.lisp --eval '(quit)'
 
@@ -37,5 +38,4 @@ test: all
 # KLUDGE: There seems to be no portable way to tell tar to not to
 # preserve owner, so chown after installing for the current user.
 install: $(EXTRA_INSTALL_TARGETS)
-	tar cf - . | ( cd "$(BUILD_ROOT)$(INSTALL_DIR)" && tar xpvf - )
-	find "$(BUILD_ROOT)$(INSTALL_DIR)" -exec chown `id -u`:`id -g` {} \;
+	cp -p $(SYSTEM).asd *.lisp *.fasl "$(BUILD_ROOT)$(INSTALL_DIR)"
