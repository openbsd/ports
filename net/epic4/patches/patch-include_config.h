$OpenBSD: patch-include_config.h,v 1.4 2002/06/30 18:23:31 brad Exp $
--- include/config.h.orig	Sun Jun 30 14:10:23 2002
+++ include/config.h	Sun Jun 30 14:10:10 2002
@@ -316,7 +316,7 @@
 #define DEFAULT_AUTO_NEW_NICK 1
 #define DEFAULT_AUTO_RECONNECT 1
 #define DEFAULT_AUTO_RECONNECT_DELAY 0
-#define DEFAULT_AUTO_REJOIN 1
+#define DEFAULT_AUTO_REJOIN 0
 #define DEFAULT_AUTO_REJOIN_DELAY 0
 #define DEFAULT_AUTO_UNMARK_AWAY 0
 #define DEFAULT_AUTO_WHOWAS 1
@@ -510,7 +510,7 @@
 #undef EPIC_DEBUG		/* force coredump on panic */
 #define EXEC_COMMAND		/* allow /exec comamnd */
 #undef HACKED_DCC_WARNING	/* warn if handshake != sender */
-#undef HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
+#define HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
 #undef NO_BOTS			/* no bots allowed */
 #undef NO_CHEATING		/* always do it the "right" way, no shortcuts */
 #undef STRIP_EXTRANEOUS_SPACES	/* strip leading and trailing spaces */
