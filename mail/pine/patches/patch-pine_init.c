$OpenBSD: patch-pine_init.c,v 1.2 2001/09/27 16:52:40 brad Exp $
--- pine/init.c.orig	Wed Aug  1 20:10:31 2001
+++ pine/init.c	Thu Sep 27 08:51:49 2001
@@ -65,7 +65,7 @@ static char rcsid[] = "$Id: init.c,v 4.6
 
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"  /* for LEVELSTATUS() */
+#include "c-client/imap4r1.h"  /* for LEVELSTATUS() */
 
 
 typedef enum {Sapling, Seedling, Seasoned} FeatureLevel;
