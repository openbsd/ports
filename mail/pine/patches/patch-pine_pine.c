$OpenBSD: patch-pine_pine.c,v 1.4 2001/11/19 02:01:58 brad Exp $
--- pine/pine.c.orig	Thu Nov  8 14:21:16 2001
+++ pine/pine.c	Sat Nov 17 20:17:26 2001
@@ -40,7 +40,7 @@ static char rcsid[] = "$Id: pine.c,v 4.5
   ----------------------------------------------------------------------*/
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 
 /*
@@ -411,7 +411,7 @@ main(argc, argv)
 #endif
 
     /*------- Set up c-client drivers -------*/ 
-#include "../c-client/linkage.c"
+#include "c-client/linkage.c"
     /*
      * Lookups of long login names which don't exist are very slow in aix.
      * This would normally get set in system-wide config if not needed.
