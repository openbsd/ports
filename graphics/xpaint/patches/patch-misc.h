--- misc.h.orig	Wed Jun 13 11:40:31 2001
+++ misc.h	Wed Jun 13 11:42:07 2001
@@ -23,7 +23,7 @@
 long random(void);
 #endif
 
-#if !defined(linux) & !defined(__EMX__) & !defined(__FreeBSD__) & !defined(__CYGWIN__)
+#if !defined(linux) & !defined(__EMX__) & !defined(__FreeBSD__) & !defined(__OpenBSD__) & !defined(__CYGWIN__)
 #if defined(BSD4_4) || defined(HPArchitecture) || defined(SGIArchitecture) || defined(_AIX) || defined(_SCO_DS)
 void srandom(unsigned int);
 #else
