$OpenBSD: patch-crypt.c,v 1.3 2001/01/07 21:08:12 avsm Exp $

NOTE: This patch has been added to php-4.0.5-dev and can be
removed in the next release.

--- ext/standard/crypt.c.orig	Mon Nov 27 13:31:21 2000
+++ ext/standard/crypt.c	Sun Jan  7 18:31:47 2001
@@ -71,7 +71,7 @@ extern char *crypt(char *__key,char *__s
 
 #if PHP_BLOWFISH_CRYPT
 #undef PHP_MAX_SALT_LEN
-#define PHP_MAX_SALT_LEN 17
+#define PHP_MAX_SALT_LEN 60  /* For OpenBSD */
 #endif
 
  /*
