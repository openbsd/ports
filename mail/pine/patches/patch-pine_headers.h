$OpenBSD: patch-pine_headers.h,v 1.2 2001/09/27 16:52:40 brad Exp $
--- pine/headers.h.orig	Mon Nov 13 15:40:18 2000
+++ pine/headers.h	Thu Sep 27 08:51:48 2001
@@ -59,12 +59,12 @@ is os-xxx.h. (Don't edit osdep.h; edit o
 #include "../pico/headers.h"
 
 
-#include "../c-client/mail.h"
+#include "c-client/mail.h"
 
 #include "os.h"
 
-#include "../c-client/rfc822.h"
-#include "../c-client/misc.h"
+#include "c-client/rfc822.h"
+#include "c-client/misc.h"
 
 #ifdef  ENABLE_LDAP
 
