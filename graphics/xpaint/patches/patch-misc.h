$OpenBSD: patch-misc.h,v 1.2 2002/09/07 07:09:13 pvalchev Exp $
--- misc.h.orig	Fri Sep  6 22:22:09 2002
+++ misc.h	Fri Sep  6 22:22:32 2002
@@ -23,7 +23,7 @@
 long random(void);
 #endif
 
-#if !defined(linux) & !defined(__EMX__) & !defined(__FreeBSD__) & !defined(__CYGWIN__)
+#if !defined(linux) & !defined(__EMX__) & !defined(__OpenBSD__) & !defined(__CYGWIN__)
 #if defined(BSD4_4) || defined(HPArchitecture) || defined(SGIArchitecture) || defined(_AIX) || defined(_SCO_DS)
 void srandom(unsigned int);
 #else
