$OpenBSD: patch-src_m_macppc.h,v 1.3 2002/03/28 00:13:49 mark Exp $
--- src/m/macppc.h.orig	Fri Sep 28 03:03:25 2001
+++ src/m/macppc.h	Fri Mar 22 09:47:16 2002
@@ -74,10 +74,7 @@ Boston, MA 02111-1307, USA.  */
 
 /* #define NO_SOCK_SIGIO */
 
-#if defined(__OpenBSD__)
-#define ORDINARY_LINK
-#endif
-
+#undef UNEXEC
 #define UNEXEC unexelf.o
 
 #define NO_TERMIO
