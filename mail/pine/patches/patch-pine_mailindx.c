$OpenBSD: patch-pine_mailindx.c,v 1.2 2001/09/27 16:52:40 brad Exp $
--- pine/mailindx.c.orig	Tue Aug  7 18:51:55 2001
+++ pine/mailindx.c	Thu Sep 27 08:51:51 2001
@@ -50,7 +50,7 @@ static char rcsid[] = "$Id: mailindx.c,v
  ====*/
  
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 /*
  * Some common Command Bindings
