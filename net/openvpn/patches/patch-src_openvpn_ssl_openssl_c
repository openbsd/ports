$OpenBSD: patch-src_openvpn_ssl_openssl_c,v 1.1 2016/01/06 11:03:21 sthen Exp $
--- src/openvpn/ssl_openssl.c.orig	Wed Jan  6 10:58:58 2016
+++ src/openvpn/ssl_openssl.c	Wed Jan  6 10:59:51 2016
@@ -342,7 +342,7 @@ tls_ctx_check_cert_time (const struct tls_root_ctx *ct
 
   ASSERT (ctx);
 
-#if OPENSSL_VERSION_NUMBER >= 0x10002000L
+#if OPENSSL_VERSION_NUMBER >= 0x10002000L && !LIBRESSL_VERSION_NUMBER
   /* OpenSSL 1.0.2 and up */
   cert = SSL_CTX_get0_certificate (ctx->ctx);
 #else
@@ -377,7 +377,7 @@ tls_ctx_check_cert_time (const struct tls_root_ctx *ct
     }
 
 cleanup:
-#if OPENSSL_VERSION_NUMBER < 0x10002000L
+#if OPENSSL_VERSION_NUMBER < 0x10002000L || LIBRESSL_VERSION_NUMBER
   SSL_free (ssl);
 #endif
   return;
