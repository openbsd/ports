--- src/lat_rpc.c.orig	Sat Feb 28 23:53:01 1998
+++ src/lat_rpc.c	Sat Feb 28 23:53:27 1998
@@ -195,7 +195,7 @@
 		return;
 	}
 	bzero((char *)&argument, sizeof(argument));
-	if (!svc_getargs(transp, xdr_argument, &argument)) {
+	if (!svc_getargs(transp, xdr_argument, (char*) &argument)) {
 		svcerr_decode(transp);
 		return;
 	}
@@ -203,7 +203,7 @@
 	if (result != NULL && !svc_sendreply(transp, xdr_result, result)) {
 		svcerr_systemerr(transp);
 	}
-	if (!svc_freeargs(transp, xdr_argument, &argument)) {
+	if (!svc_freeargs(transp, xdr_argument, (char*) &argument)) {
 		fprintf(stderr, "unable to free arguments");
 		exit(1);
 	}
