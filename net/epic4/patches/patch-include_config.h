$OpenBSD: patch-include_config.h,v 1.5 2004/02/25 02:35:04 brad Exp $
--- include/config.h.orig	2003-12-26 14:14:49.000000000 -0500
+++ include/config.h	2004-02-15 22:15:13.000000000 -0500
@@ -539,7 +539,7 @@
 #undef EPIC_DEBUG		/* force coredump on panic */
 #define EXEC_COMMAND		/* allow /exec comamnd */
 #undef HACKED_DCC_WARNING	/* warn if handshake != sender */
-#undef HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
+#define HARD_UNFLASH		/* do a hard reset instead of soft on refresh */
 #undef NO_BOTS			/* no bots allowed */
 #undef NO_CHEATING		/* always do it the "right" way, no shortcuts */
 #undef STRIP_EXTRANEOUS_SPACES	/* strip leading and trailing spaces */
