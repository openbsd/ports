--- pine/adrbklib.c.orig	Fri Sep 15 06:40:36 2000
+++ pine/adrbklib.c	Fri Sep 15 06:41:00 2000
@@ -41,7 +41,7 @@
 
 #include "headers.h"
 #include "adrbklib.h"
-#include "../c-client/imap4r1.h"  /* for LEVELSTATUS() */
+#include "c-client/imap4r1.h"  /* for LEVELSTATUS() */
 
 /*
  * We don't want any end of line fixups to occur, so include "b" in DOS modes.
