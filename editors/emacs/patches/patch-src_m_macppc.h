--- src/m/macppc.h.orig	Fri Oct 20 17:34:43 2000
+++ src/m/macppc.h	Fri Oct 20 17:36:35 2000
@@ -78,6 +78,7 @@
 #define ORDINARY_LINK
 #endif
 
+#undef UNEXEC
 #define UNEXEC unexelf.o
 
 #define NO_TERMIO
