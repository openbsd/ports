$OpenBSD: patch-Makefile,v 1.1 2000/03/28 07:22:31 camield Exp $

Needed for fake installation.

--- Makefile.orig	Tue Mar 28 09:12:55 2000
+++ Makefile	Tue Mar 28 09:13:17 2000
@@ -611,8 +611,8 @@
 
 setup: \
 it man install conf-bin conf-man
-	./install "`head -1 conf-bin`" < BIN
-	./install "`head -1 conf-man`" < MAN
+	./install ${WRKINST}"`head -1 conf-bin`" < BIN
+	./install ${WRKINST}"`head -1 conf-man`" < MAN
 
 sgetopt.0: \
 sgetopt.3
