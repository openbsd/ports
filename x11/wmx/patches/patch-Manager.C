$OpenBSD: patch-Manager.C,v 1.3 2002/09/30 14:31:50 naddy Exp $
--- Manager.C.orig	Mon Apr 23 11:10:42 2001
+++ Manager.C	Mon Sep 30 16:34:44 2002
@@ -916,7 +916,7 @@ Boolean WindowManager::raiseTransients(C
     }
 }
 
-#ifdef sgi
+#if defined(sgi) || defined(__OpenBSD__)
 extern "C" {
 extern int putenv(char *);	/* not POSIX */
 }
@@ -1069,6 +1069,11 @@ void WindowManager::gnomeUpdateWindowLis
 
     delete windows;
 }
+#ifdef __OpenBSD__
+extern "C" {
+       int      snprintf(char *, size_t, const char *, ...);
+}
+#endif
 
 void WindowManager::gnomeUpdateChannelList()
 {
