--- include/config.h.orig	Fri Sep 22 11:59:49 2000
+++ include/config.h	Sun Oct  1 00:59:27 2000
@@ -518,7 +518,7 @@
 #undef EPIC_DEBUG		/* force coredump on panic */
 #define EXEC_COMMAND		/* allow /exec comamnd */
 #undef HACKED_DCC_WARNING	/* warn if handshake != sender */
-#undef HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
+#define HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
 #undef NO_BOTS			/* no bots allowed */
 #undef NO_CHEATING		/* always do it the "right" way, no shortcuts */
 #undef STRIP_EXTRANEOUS_SPACES	/* strip leading and trailing spaces */
