$OpenBSD: patch-XmysqlDB.c,v 1.2 2002/05/26 15:09:07 naddy Exp $
--- XmysqlDB.c.orig	Wed Oct 21 05:05:07 1998
+++ XmysqlDB.c	Sun May 26 16:59:24 2002
@@ -26,7 +26,7 @@ int XmysqlDB(int dbaction, int results_t
   unsigned long rows_affected = 0;
   char *semicolon = 0;
   char *pos = 0, *r, *r_end;
-  ulong *lengths = 0;
+  unsigned long *lengths = 0;
   int total_lines = 0;
   int maxSize = 0;
   int maxLen = 0;
