--- params.h.orig	Wed Dec  2 19:29:50 1998
+++ params.h	Mon Nov 29 11:03:13 1999
@@ -52,10 +52,14 @@
 /*
  * File names.
  */
-#define LOG_NAME			"~/john.pot"
-#define CFG_NAME			"~/john.ini"
-#define RECOVERY_NAME			"~/restore"
-#define WORDLIST_NAME			"~/password.lst"
+#ifndef JOHN_HOME
+#define JOHN_HOME			"~"
+#endif
+#define LOG_NAME			"john.pot"
+#undef CFG_NAME
+#define CFG_NAME			JOHN_HOME "/john.ini"
+#define RECOVERY_NAME			"john.restore"
+#define WORDLIST_NAME			JOHN_HOME "/password.lst"
 
 /*
  * Configuration file section names.
