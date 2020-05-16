$OpenBSD: patch-src_buildtools_buildtools_pro,v 1.1 2020/05/16 07:03:01 rsadowski Exp $

Index: src/buildtools/buildtools.pro
--- src/buildtools/buildtools.pro.orig
+++ src/buildtools/buildtools.pro
@@ -1,6 +1,6 @@
 TEMPLATE = subdirs
 
-linux {
+unix {
     # configure_host.pro and configure_target.pro are phony pro files that
     # extract things like compiler and linker from qmake.
     # Only used on Linux as it is only important for cross-building and alternative compilers.
