--- lib/dns/sec/dst/openssl_link.c.orig	Thu Jan 25 17:55:49 2001
+++ lib/dns/sec/dst/openssl_link.c	Thu Jan 25 17:58:48 2001
@@ -41,7 +41,12 @@
 
 #include <openssl/dsa.h>
 #include <openssl/rand.h>
+#include <openssl/crypto.h>
+#ifdef CRYPTO_LOCK_ENGINE
+#include <openssl/engine.h>
 
+static ENGINE *e;
+#endif
 static RAND_METHOD *rm = NULL;
 static isc_mutex_t locks[CRYPTO_NUM_LOCKS];
 
@@ -535,7 +540,15 @@
 	rm->add = entropy_add;
 	rm->pseudorand = entropy_getpseudo;
 	rm->status = NULL;
+#ifdef CRYPTO_LOCK_ENGINE
+	e = ENGINE_new();
+	if (e == NULL)
+		return (ISC_R_NOMEMORY);
+	ENGINE_set_RAND(e, rm);
+	RAND_set_rand_method(e);
+#else
 	RAND_set_rand_method(rm);
+#endif
 	return (ISC_R_SUCCESS);
 }
 
