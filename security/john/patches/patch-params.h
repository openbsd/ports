--- params.h.orig	Thu Dec  3 01:29:50 1998
+++ params.h	Tue Oct 31 13:59:57 2000
@@ -52,10 +52,11 @@
 /*
  * File names.
  */
-#define LOG_NAME			"~/john.pot"
-#define CFG_NAME			"~/john.ini"
-#define RECOVERY_NAME			"~/restore"
-#define WORDLIST_NAME			"~/password.lst"
+#define LOG_NAME			"john.pot"
+#undef CFG_NAME
+#define CFG_NAME			"@JOHN_HOME@/john.ini"
+#define RECOVERY_NAME			"john.restore"
+#define WORDLIST_NAME			"@JOHN_HOME@/password.lst"
 
 /*
  * Configuration file section names.
