$OpenBSD: patch-Manager.C,v 1.4 2005/11/13 12:42:25 naddy Exp $
--- Manager.C.orig	Mon Apr 23 11:10:42 2001
+++ Manager.C	Sun Nov 13 13:35:32 2005
@@ -921,6 +921,11 @@ extern "C" {
 extern int putenv(char *);	/* not POSIX */
 }
 #endif
+#ifdef __OpenBSD__
+extern "C" {
+extern int putenv(const char *);
+}
+#endif
 
 void WindowManager::spawn(char *name, char *file)
 {
@@ -1069,6 +1074,11 @@ void WindowManager::gnomeUpdateWindowLis
 
     delete windows;
 }
+#ifdef __OpenBSD__
+extern "C" {
+       int      snprintf(char *, size_t, const char *, ...);
+}
+#endif
 
 void WindowManager::gnomeUpdateChannelList()
 {
