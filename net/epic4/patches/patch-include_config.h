--- include/config.h.orig	Thu Dec  7 13:24:34 2000
+++ include/config.h	Tue Dec 12 17:17:12 2000
@@ -510,7 +510,7 @@
 #undef EPIC_DEBUG		/* force coredump on panic */
 #define EXEC_COMMAND		/* allow /exec comamnd */
 #undef HACKED_DCC_WARNING	/* warn if handshake != sender */
-#undef HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
+#define HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
 #undef NO_BOTS			/* no bots allowed */
 #undef NO_CHEATING		/* always do it the "right" way, no shortcuts */
 #undef STRIP_EXTRANEOUS_SPACES	/* strip leading and trailing spaces */
