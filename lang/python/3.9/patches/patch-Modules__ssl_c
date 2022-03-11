XXX maybe this can go away now we have auto-init, I'm not sure exactly
what python's lock protects

Index: Modules/_ssl.c
--- Modules/_ssl.c.orig
+++ Modules/_ssl.c
@@ -213,6 +213,9 @@ extern const SSL_METHOD *TLSv1_2_method(void);
 #if defined(OPENSSL_VERSION_1_1) && !defined(OPENSSL_NO_SSL2)
 #define OPENSSL_NO_SSL2
 #endif
+#if defined(LIBRESSL_VERSION_NUMBER) && defined(WITH_THREAD)
+#define HAVE_OPENSSL_CRYPTO_LOCK
+#endif
 
 #ifndef PY_OPENSSL_1_1_API
 /* OpenSSL 1.1 API shims for OpenSSL < 1.1.0 and LibreSSL < 2.7.0 */
