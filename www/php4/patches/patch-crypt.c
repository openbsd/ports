--- ext/standard/crypt.c.orig      Sat Jul 29 16:10:54 2000
+++ ext/standard/crypt.c   Thu Jul 27 23:12:56 2000
@@ -71,7 +71,7 @@
 
 #if PHP_BLOWFISH_CRYPT
 #undef PHP_MAX_SALT_LEN
-#define PHP_MAX_SALT_LEN 17
+#define PHP_MAX_SALT_LEN 60  /* For OpenBSD */
 #endif
 
  /*


