$OpenBSD: patch-src_c-client_auth_gss.c,v 1.2 2001/11/19 01:56:13 brad Exp $
--- src/c-client/auth_gss.c.orig	Fri Sep 28 21:16:11 2001
+++ src/c-client/auth_gss.c	Sat Nov 17 19:15:56 2001
@@ -19,8 +19,19 @@
  */
 
 #define PROTOTYPE(x) x
+
+#ifdef HEIMDAL
+#include <gssapi.h>
+#include <krb5.h>
+#else
 #include <gssapi/gssapi_generic.h>
 #include <gssapi/gssapi_krb5.h>
+#endif
+
+#ifdef HEIMDAL
+#define gss_nt_service_name    GSS_C_NT_HOSTBASED_SERVICE
+#define KRB5_FCC_NOFILE                KRB5_CC_NOTFOUND
+#endif
 
 long auth_gssapi_valid (void);
 long auth_gssapi_client (authchallenge_t challenger,authrespond_t responder,
