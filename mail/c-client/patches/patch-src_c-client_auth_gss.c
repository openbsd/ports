$OpenBSD: patch-src_c-client_auth_gss.c,v 1.1 2001/09/27 16:28:09 brad Exp $
--- src/c-client/auth_gss.c.orig	Wed Sep 26 23:42:46 2001
+++ src/c-client/auth_gss.c	Wed Sep 26 23:47:20 2001
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
@@ -28,6 +39,8 @@ long auth_gssapi_client (authchallenge_t
 			 unsigned long *trial,char *user);
 char *auth_gssapi_server (authresponse_t responder,int argc,char *argv[]);
 
+static long has_keytab (void);
+
 AUTHENTICATOR auth_gss = {
   AU_SECURE | AU_AUTHUSER,	/* secure authenticator */
   "GSSAPI",			/* authenticator name */
@@ -45,7 +58,6 @@ AUTHENTICATOR auth_gss = {
 
 #define SERVER_LOG(x,y) syslog (LOG_ALERT,x,y)
 
-extern char *krb5_defkeyname;	/* sneaky way to get this name */
 
 /* Check if GSSAPI valid on this system
  * Returns: T if valid, NIL otherwise
@@ -63,10 +75,38 @@ long auth_gssapi_valid (void)
 				/* see if can build a name */
   if (gss_import_name (&smn,&buf,gss_nt_service_name,&name) != GSS_S_COMPLETE)
     return NIL;			/* failed */
-  if ((s = strchr (krb5_defkeyname,':')) && stat (++s,&sbuf))
+  if (!has_keytab ())
     auth_gss.server = NIL;	/* can't do server if no keytab */
   gss_release_name (&smn,&name);/* finished with name */
   return LONGT;
+}
+
+/* Check if there is a keytab.
+ * Returns: T if it exists, NIL otherwise
+ */
+
+static long has_keytab (void)
+{
+  krb5_context context;
+  krb5_error_code ret;
+  krb5_keytab kt;
+  krb5_kt_cursor cursor;
+
+  ret = krb5_init_context (&context);
+  if (ret)
+    return NIL;
+  ret = krb5_kt_default (context, &kt);
+  if (ret) {
+      krb5_free_context (context);
+      return NIL;
+  }
+  ret = krb5_kt_start_seq_get (context, kt, &cursor);
+  krb5_kt_close (context, kt);
+  krb5_free_context (context);
+  if (ret)
+      return NIL;
+  else
+      return T;
 }
 
 /* Client authenticator
