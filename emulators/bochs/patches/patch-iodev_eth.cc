--- iodev/eth.cc.orig	Sat Mar 25 21:28:48 2000
+++ iodev/eth.cc	Tue Oct 17 12:04:02 2000
@@ -49,6 +49,7 @@ eth_locator_c::create(const char *type, 
 		      const char *macaddr,
 		      eth_rx_handler_t rxh, void *rxarg)
 {
+  bio->printf("eth: create '%s' '%s' '%s'\n",type,netif,macaddr);
 #ifdef eth_static_constructors
   for (eth_locator_c *p = all; p != NULL; p = p->next) {
     if (strcmp(type, p->type) == 0)
@@ -59,7 +60,7 @@ eth_locator_c::create(const char *type, 
 
 #ifdef ETH_NULL
   {
-    extern bx_null_match;
+    extern eth_locator_c *bx_null_match;
     if (!strcmp(type, "null"))
       ptr = (eth_locator_c *) &bx_null_match; 
   }
