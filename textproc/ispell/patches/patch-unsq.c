--- unsq.c.orig	Tue Jan 25 13:32:18 1994
+++ unsq.c	Tue Jan  4 00:05:15 2000
@@ -116,7 +116,7 @@
     wordp = word;
     while (same_count--)
 	*wordp++ = (*prevp++);
-    if (gets (wordp) == NULL)
+    if (fgets (wordp, strlen(wordp), stdin) == NULL)
 	{
 	(void) fprintf (stderr, UNSQ_C_SURPRISE_EOF);
 	exit (1);
