$OpenBSD: patch-contrib_asdf-module.mk,v 1.2 2009/11/17 10:45:00 pirofti Exp $

Fix 'all' target to allow building without running tests.

Don't copy every single file when installing the contribs, only the
ones that are actually needed to load the system.

--- contrib/asdf-module.mk.orig	Tue Apr 28 09:02:13 2009
+++ contrib/asdf-module.mk	Tue Jul  7 17:57:02 2009
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
-	find "$(BUILD_ROOT)$(INSTALL_DIR)" -type f -exec chown `id -u`:`id -g` {} \;
+	cp -p $(SYSTEM).asd *.lisp *.fasl "$(BUILD_ROOT)$(INSTALL_DIR)"
