--- bladeenc/system.h.orig	Sun Feb 18 11:34:27 2001
+++ bladeenc/system.h	Sun Feb 18 11:35:04 2001
@@ -327,12 +327,9 @@
 
 typedef		unsigned	char 	uchar;
 
-#if !defined(SYS_TYPES_H) && !defined(_SYS_TYPES_H)
+#ifndef UNIX_SYSTEM
 		typedef		unsigned short	ushort;
 		typedef		unsigned int	uint;
 #endif
-
-
-
 
 #endif		/* __SYSTEM__ */
