--- src/m/macppc.h.orig	Fri Sep 28 04:03:25 2001
+++ src/m/macppc.h	Wed Jan 30 18:50:54 2002
@@ -78,6 +78,7 @@
 #define ORDINARY_LINK
 #endif
 
+#undef UNEXEC
 #define UNEXEC unexelf.o
 
 #define NO_TERMIO
