$OpenBSD: patch-pine_mailcmd.c,v 1.2 2001/09/27 16:52:40 brad Exp $
--- pine/mailcmd.c.orig	Fri Aug 17 14:12:26 2001
+++ pine/mailcmd.c	Thu Sep 27 08:51:50 2001
@@ -51,7 +51,7 @@ static char rcsid[] = "$Id: mailcmd.c,v 
   ====*/
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 
 /*
