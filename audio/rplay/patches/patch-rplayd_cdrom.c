$OpenBSD: patch-rplayd_cdrom.c,v 1.3 2002/08/17 05:11:09 brad Exp $
--- rplayd/cdrom.c.orig	Wed Mar 10 02:58:02 1999
+++ rplayd/cdrom.c	Sat Aug 17 01:04:17 2002
@@ -46,14 +46,18 @@ CDROM_TABLE cdrom_table[MAX_CDROMS] =
     {"cdrom1:", "/vol/dev/aliases/cdrom1", 0, 0},
     {"cdrom2:", "/vol/dev/aliases/cdrom2", 0, 0},
     {"cdrom3:", "/vol/dev/aliases/cdrom3", 0, 0},
-#else				/* not solaris */
-#if defined (linux)
+#elif defined (linux)
     {"cdrom:", "/dev/cdrom", 0, 0},
     {"cdrom0:", "/dev/cdrom0", 0, 0},
     {"cdrom1:", "/dev/cdrom1", 0, 0},
     {"cdrom2:", "/dev/cdrom2", 0, 0},
     {"cdrom3:", "/dev/cdrom3", 0, 0},
-#endif				/* linux */
+#elif defined (__OpenBSD__)
+    {"cdrom:", "/dev/cd0", 0, 0},
+    {"cdrom0:", "/dev/cd0", 0, 0},
+    {"cdrom1:", "/dev/cd1", 0, 0},
+    {"cdrom2:", "/dev/cd2", 0, 0},
+    {"cdrom3:", "/dev/cd3", 0, 0},
 #endif
 };
 
