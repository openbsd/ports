--- lib/security.c.orig	Thu Sep 28 12:46:50 2000
+++ lib/security.c	Thu Sep 28 12:47:18 2000
@@ -46,7 +46,7 @@
 #include <stdlib.h>
 #include <string.h>
 #include <netdb.h>
-#include "base64_krb.h"
+#include "base64.h"
 
 #define min(a, b)   ((a) < (b) ? (a) : (b))
 
