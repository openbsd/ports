--- pine/init.c.orig	Sun Dec 10 14:10:50 2000
+++ pine/init.c	Sun Dec 10 14:12:11 2000
@@ -65,7 +65,7 @@
 
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"  /* for LEVELSTATUS() */
+#include "c-client/imap4r1.h"  /* for LEVELSTATUS() */
 
 
 typedef enum {Sapling, Seedling, Seasoned} FeatureLevel;
