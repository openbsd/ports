$OpenBSD: patch-Manager.C,v 1.5 2009/06/04 23:37:50 naddy Exp $
--- Manager.C.orig	Mon Apr 23 11:10:42 2001
+++ Manager.C	Fri Jun  5 00:51:49 2009
@@ -1069,6 +1069,11 @@ void WindowManager::gnomeUpdateWindowList()
 
     delete windows;
 }
+#ifdef __OpenBSD__
+extern "C" {
+       int      snprintf(char *, size_t, const char *, ...);
+}
+#endif
 
 void WindowManager::gnomeUpdateChannelList()
 {
