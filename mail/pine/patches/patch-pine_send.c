$OpenBSD: patch-pine_send.c,v 1.2 2001/09/27 16:52:40 brad Exp $
--- pine/send.c.orig	Mon Aug 27 13:54:33 2001
+++ pine/send.c	Thu Sep 27 08:51:54 2001
@@ -47,8 +47,8 @@ static char rcsid[] = "$Id: send.c,v 4.6
  ====*/
 
 #include "headers.h"
-#include "../c-client/smtp.h"
-#include "../c-client/nntp.h"
+#include "c-client/smtp.h"
+#include "c-client/nntp.h"
 
 
 #ifndef TCPSTREAM
