--- pine/send.c.orig	Fri Sep 15 06:42:47 2000
+++ pine/send.c	Fri Sep 15 06:43:14 2000
@@ -47,8 +47,8 @@
  ====*/
 
 #include "headers.h"
-#include "../c-client/smtp.h"
-#include "../c-client/nntp.h"
+#include "c-client/smtp.h"
+#include "c-client/nntp.h"
 
 
 #ifndef TCPSTREAM
