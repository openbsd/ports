--- lib/dns/config/confview.c.orig	Thu Jan 18 00:40:49 2001
+++ lib/dns/config/confview.c	Thu Jan 18 20:21:28 2001
@@ -1176,11 +1176,12 @@
 	REQUIRE(DNS_C_VIEW_VALID(view));
 	REQUIRE(ipl != NULL);
 
-	*ipl = view->forwarders;
+	if (view->forwarders == NULL)
+		return (ISC_R_NOTFOUND);
 
-	return (*ipl == NULL ? ISC_R_NOTFOUND : ISC_R_SUCCESS);
+	dns_c_iplist_attach(view->forwarders, ipl);
+	return (ISC_R_SUCCESS);
 }
-
 
 
 /*
