--- sq.c.orig	Tue Jan 25 13:32:18 1994
+++ sq.c	Tue Jan  4 00:05:13 2000
@@ -83,7 +83,7 @@
     char	word[257];
     static char	prev[257] = "";
 
-    while (gets (word) != NULL)
+    while (fgets (word, 256, stdin) != NULL)
 	trunc (word, prev);
     return 0;
     }
