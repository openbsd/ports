$OpenBSD: patch-pine_pine.c,v 1.3 2001/09/27 16:52:40 brad Exp $
--- pine/pine.c.orig	Tue Aug  7 18:52:00 2001
+++ pine/pine.c	Thu Sep 27 08:53:23 2001
@@ -40,7 +40,7 @@ static char rcsid[] = "$Id: pine.c,v 4.5
   ----------------------------------------------------------------------*/
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 
 /*
@@ -361,7 +361,7 @@ main(argc, argv)
 #endif
 
     /*------- Set up c-client drivers -------*/ 
-#include "../c-client/linkage.c"
+#include "c-client/linkage.c"
     /*
      * Lookups of long login names which don't exist are very slow in aix.
      * This would normally get set in system-wide config if not needed.
