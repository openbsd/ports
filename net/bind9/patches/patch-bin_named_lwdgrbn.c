--- bin/named/lwdgrbn.c.orig	Thu Jan 18 00:39:49 2001
+++ bin/named/lwdgrbn.c	Wed Jan 24 09:11:22 2001
@@ -212,8 +212,8 @@
 	if (grbn->rdatalen == NULL)
 		goto out;
 
+	i = 0;
 	if (rdataset != NULL) {
-		i = 0;
 		result = fill_array(&i, rdataset, grbn->nrdatas, grbn->rdatas,
 				    grbn->rdatalen);
 		if (result != ISC_R_SUCCESS || i != grbn->nrdatas)
@@ -226,7 +226,6 @@
 					     NULL, 0, &iter);
 		if (result != ISC_R_SUCCESS)
 			goto out;
-		i = 0;
 		for (result = dns_rdatasetiter_first(iter);
 		     result == ISC_R_SUCCESS;
 		     result = dns_rdatasetiter_next(iter))
@@ -253,6 +252,7 @@
 		if (result != ISC_R_SUCCESS || i != grbn->nrdatas)
 			goto out;
 	}
+	ns_lwdclient_log(50, "filled in %d rdatas", i);
 
 	grbn->sigs = isc_mem_get(cm->mctx, grbn->nsigs *
 				 sizeof(unsigned char *));
@@ -263,13 +263,14 @@
 	if (grbn->siglen == NULL)
 		goto out;
 	
+	i = 0;
 	if (sigrdataset != NULL) {
-		i = 0;
-		result = fill_array(&i, rdataset, grbn->nsigs, grbn->sigs,
-				    grbn->siglen);
+                result = fill_array(&i, sigrdataset, grbn->nsigs, grbn->sigs,
+                                    grbn->siglen);
 		if (result != ISC_R_SUCCESS || i != grbn->nsigs)
 			goto out;
 	}
+	ns_lwdclient_log(50, "filled in %d signatures", i);
 
 	dns_lookup_destroy(&client->lookup);
 	isc_event_free(&event);
@@ -331,6 +332,9 @@
 
 	if (event != NULL)
 		isc_event_free(&event);
+
+	ns_lwdclient_log(50, "error: %s", isc_result_totext(result));
+	ns_lwdclient_errorpktsend(client, LWRES_R_FAILURE);
 }
 
 static void
