$OpenBSD: patch-src_c-client_auth_gss.c,v 1.2 2001/11/17 11:12:10 jakob Exp $

--- src/c-client/auth_gss.c.orig	Wed Aug  8 23:24:07 2001
+++ src/c-client/auth_gss.c	Tue Sep 11 12:05:07 2001
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
+#define gss_nt_service_name	GSS_C_NT_HOSTBASED_SERVICE
+#define KRB5_FCC_NOFILE		KRB5_CC_NOTFOUND
+#endif
 
 long auth_gssapi_valid (void);
 long auth_gssapi_client (authchallenge_t challenger,authrespond_t responder,

