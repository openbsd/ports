$OpenBSD: patch-Manager.C,v 1.2 2001/08/22 09:34:17 jakob Exp $

--- Manager.C.orig	Mon Apr 23 11:10:42 2001
+++ Manager.C	Wed Aug 22 11:18:10 2001
@@ -916,7 +916,7 @@ Boolean WindowManager::raiseTransients(C
     }
 }
 
-#ifdef sgi
+#if defined(sgi) || defined(__OpenBSD__)
 extern "C" {
 extern int putenv(char *);	/* not POSIX */
 }

--- Manager.C.orig	Mon Apr 23 11:10:42 2001
+++ Manager.C	Wed Aug 22 11:18:10 2001
@@ -1069,6 +1069,11 @@
 
     delete windows;
 }
+#ifdef __OpenBSD__
+extern "C" {
+       int      snprintf(char *, size_t, const char *, ...);
+}
+#endif
 
 void WindowManager::gnomeUpdateChannelList()
