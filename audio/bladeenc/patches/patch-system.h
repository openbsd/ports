--- bladeenc/system.h.orig	Thu Jun 15 09:02:23 2000
+++ bladeenc/system.h	Thu Jul  6 16:26:56 2000
@@ -248,7 +248,7 @@
 
 typedef		unsigned	char 	uchar;
 
-#if !defined(SYS_TYPES_H) && !defined(_SYS_TYPES_H)
+#if !defined(SYS_TYPES_H) && !defined(_SYS_TYPES_H) && !defined(UNIX_SYSTEM)
 		typedef		unsigned short	ushort;
 		typedef		unsigned int	uint;
 #endif
