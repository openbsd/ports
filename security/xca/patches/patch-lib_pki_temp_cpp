$OpenBSD: patch-lib_pki_temp_cpp,v 1.1 2015/09/12 20:40:49 sthen Exp $
--- lib/pki_temp.cpp.orig	Tue Sep  8 20:46:15 2015
+++ lib/pki_temp.cpp	Tue Sep  8 20:47:00 2015
@@ -363,7 +363,7 @@ BIO *pki_temp::pem(BIO *b, int format)
 	QByteArray ba = toExportData();
         if (!b)
 		b = BIO_new(BIO_s_mem());
-#if OPENSSL_VERSION_NUMBER < 0x10002000L
+#if OPENSSL_VERSION_NUMBER < 0x10002000L || defined(LIBRESSL_VERSION_NUMBER)
 	PEM_write_bio(b, PEM_STRING_XCA_TEMPLATE, (char*)"",
 		(unsigned char*)(ba.data()), ba.size());
 #else
