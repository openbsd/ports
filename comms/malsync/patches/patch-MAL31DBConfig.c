$OpenBSD: patch-MAL31DBConfig.c,v 1.1 2001/05/23 20:45:02 jakob Exp $

--- MAL31DBConfig.c	Sun May 14 21:17:35 2000
+++ MAL31DBConfig.c	Sat May 19 20:09:27 2001
@@ -19,8 +19,8 @@
  * Contributor(s):
  */
 
+#include <stdlib.h>
 #include <MAL31DBConfig.h>
-#include <malloc.h>
 
 /*---------------------------------------------------------------------------*/
 void
