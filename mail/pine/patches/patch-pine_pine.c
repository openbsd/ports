$OpenBSD: patch-pine_pine.c,v 1.5 2001/11/22 20:29:20 brad Exp $
--- pine/pine.c.orig	Mon Nov 19 14:54:04 2001
+++ pine/pine.c	Thu Nov 22 15:23:41 2001
@@ -40,7 +40,7 @@ static char rcsid[] = "$Id: pine.c,v 4.5
   ----------------------------------------------------------------------*/
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 
 /*
@@ -409,7 +409,7 @@ main(argc, argv)
 #endif
 
     /*------- Set up c-client drivers -------*/ 
-#include "../c-client/linkage.c"
+#include "c-client/linkage.c"
     /*
      * Lookups of long login names which don't exist are very slow in aix.
      * This would normally get set in system-wide config if not needed.
