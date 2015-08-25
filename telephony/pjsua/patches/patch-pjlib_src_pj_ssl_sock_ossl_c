$OpenBSD: patch-pjlib_src_pj_ssl_sock_ossl_c,v 1.2 2015/08/25 17:49:18 jca Exp $

Fixed upstream

  http://trac.pjsip.org/repos/changeset/5074/pjproject/trunk/pjlib/src/pj/ssl_sock_ossl.c

--- pjlib/src/pj/ssl_sock_ossl.c.orig	Sat Jul 18 09:36:21 2015
+++ pjlib/src/pj/ssl_sock_ossl.c	Sat Jul 18 09:36:50 2015
@@ -333,8 +333,10 @@ static pj_status_t init_openssl(void)
 	meth = (SSL_METHOD*)SSLv23_server_method();
 	if (!meth)
 	    meth = (SSL_METHOD*)TLSv1_server_method();
+#ifndef OPENSSL_NO_SSL3
 	if (!meth)
 	    meth = (SSL_METHOD*)SSLv3_server_method();
+#endif
 #ifndef OPENSSL_NO_SSL2
 	if (!meth)
 	    meth = (SSL_METHOD*)SSLv2_server_method();
@@ -525,9 +527,11 @@ static pj_status_t create_ssl(pj_ssl_sock_t *ssock)
 	ssl_method = (SSL_METHOD*)SSLv2_method();
 	break;
 #endif
+#ifndef OPENSSL_NO_SSL3
     case PJ_SSL_SOCK_PROTO_SSL3:
 	ssl_method = (SSL_METHOD*)SSLv3_method();
 	break;
+#endif
     case PJ_SSL_SOCK_PROTO_DEFAULT:
     case PJ_SSL_SOCK_PROTO_SSL23:
 	ssl_method = (SSL_METHOD*)SSLv23_method();
