# $OpenBSD: patch-XmysqlDB.c,v 1.1 2000/04/09 09:13:22 turan Exp $

--- XmysqlDB.c.orig	Wed Oct 21 05:05:07 1998
+++ XmysqlDB.c	Fri Dec 25 16:27:36 1998
@@ -26,7 +26,7 @@
   unsigned long rows_affected = 0;
   char *semicolon = 0;
   char *pos = 0, *r, *r_end;
-  ulong *lengths = 0;
+  unsigned long *lengths = 0;
   int total_lines = 0;
   int maxSize = 0;
   int maxLen = 0;
