--- pine/headers.h.orig	Fri Sep 15 06:31:28 2000
+++ pine/headers.h	Fri Sep 15 06:31:48 2000
@@ -59,12 +59,12 @@
 #include "../pico/headers.h"
 
 
-#include "../c-client/mail.h"
+#include "c-client/mail.h"
 
 #include "os.h"
 
-#include "../c-client/rfc822.h"
-#include "../c-client/misc.h"
+#include "c-client/rfc822.h"
+#include "c-client/misc.h"
 
 #ifdef  ENABLE_LDAP
 
