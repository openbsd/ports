--- rplayd/cdrom.c.orig	Sun Jun 21 14:08:03 1998
+++ rplayd/cdrom.c	Thu Sep 21 03:57:11 2000
@@ -46,14 +46,18 @@
     { "cdrom1:", "/vol/dev/aliases/cdrom1", 0, 0 },
     { "cdrom2:", "/vol/dev/aliases/cdrom2", 0, 0 },
     { "cdrom3:", "/vol/dev/aliases/cdrom3", 0, 0 },
-#else /* not solaris */
-#if defined (linux)
+#elif defined (linux)
     { "cdrom:", "/dev/cdrom", 0, 0 },
     { "cdrom0:", "/dev/cdrom0", 0, 0 },
     { "cdrom1:", "/dev/cdrom1", 0, 0 },
     { "cdrom2:", "/dev/cdrom2", 0, 0 },
     { "cdrom3:", "/dev/cdrom3", 0, 0 },
-#endif /* linux */
+#elif defined (__OpenBSD__)
+    { "cdrom:", "/dev/cd0", 0, 0 },
+    { "cdrom0:", "/dev/cd0", 0, 0 },
+    { "cdrom1:", "/dev/cd1", 0, 0 },
+    { "cdrom2:", "/dev/cd2", 0, 0 },
+    { "cdrom3:", "/dev/cd3", 0, 0 },
 #endif    
 };
 
