--- server/database.c.orig	Fri Feb 20 20:48:53 1998
+++ server/database.c	Tue Dec 22 09:16:55 1998
@@ -55,7 +55,6 @@
 #include "hash.h"
 #include "database.h"
 
-
 void
 dump_bind_db()
 {
@@ -122,8 +121,27 @@
 void
 dump_addrpool_db()
 {
+  int dump_fd;
+  char *dump_tmp = ADDRPOOL_DUMP ".XXXXXXXX";
   struct hash_member *resptr = NULL;
 
+#ifdef __OpenBSD__
+  if ((dump_fd = mkstemp(dump_tmp)) < 0) {
+    syslog(LOG_ERR, "Cannot open temporary resource dump file");
+    return;
+  }
+  unlink(ADDRPOOL_DUMP);
+  if (link(dump_tmp, ADDRPOOL_DUMP) < 0) {
+    syslog(LOG_ERR, "Cannot link \"%s\" to \"%s\"", dump_tmp, ADDRPOOL_DUMP);
+    close(dump_fd);
+    unlink(dump_tmp);
+    return;
+  }
+  close(dump_fd);
+  unlink(dump_tmp);
+#else
+  unlink(ADDRPOOL_DUMP);
+#endif
   if ((dump_fp = freopen(ADDRPOOL_DUMP, "w+", dump_fp)) == NULL) {
     syslog(LOG_WARNING,
 	   "Cannot reopen the address pool dump file \"%s\"", ADDRPOOL_DUMP);
@@ -250,7 +268,7 @@
   if (isset(rp->valid, S_SUBNET_MASK)) print_ip("snmk", rp->subnet_mask);
   if (isset(rp->active, S_TIME_OFFSET)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_TIME_OFFSET))
-      fprintf(dump_fp, "tmof=%ld:", ntohl(rp->time_offset));
+      fprintf(dump_fp, "tmof=%ld:", (long)ntohl(rp->time_offset));
   if (isset(rp->active, S_ROUTER)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_ROUTER)) print_ips("rout", rp->router);
   if (isset(rp->active, S_TIME_SERVER)) fprintf(dump_fp, "!");
@@ -299,7 +317,7 @@
       fprintf(dump_fp, "ditl=%u:", rp->default_ip_ttl);
   if (isset(rp->active, S_MTU_AGING_TIMEOUT)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_MTU_AGING_TIMEOUT))
-      fprintf(dump_fp, "mtat=%lu:", ntohl(rp->mtu_aging_timeout));
+      fprintf(dump_fp, "mtat=%lu:", (unsigned long)ntohl(rp->mtu_aging_timeout));
   if (isset(rp->active, S_MTU_PLATEAU_TABLE)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_MTU_PLATEAU_TABLE)) {
     fprintf(dump_fp, "mtpt=");
@@ -329,7 +347,7 @@
   if (isset(rp->valid, S_TRAILER)) print_bool("tril", rp->trailer);
   if (isset(rp->active, S_ARP_CACHE_TIMEOUT)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_ARP_CACHE_TIMEOUT))
-      fprintf(dump_fp, "apct=%lu:", ntohl(rp->arp_cache_timeout));
+      fprintf(dump_fp, "apct=%lu:", (unsigned long)ntohl(rp->arp_cache_timeout));
   if (isset(rp->active, S_ETHER_ENCAP)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_ETHER_ENCAP)) print_bool("encp", rp->ether_encap);
   if (isset(rp->active, S_DEFAULT_TCP_TTL)) fprintf(dump_fp, "!");
@@ -337,7 +355,7 @@
       fprintf(dump_fp, "dttl=%u:", rp->default_tcp_ttl);
   if (isset(rp->active, S_KEEPALIVE_INTER)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_KEEPALIVE_INTER))
-      fprintf(dump_fp, "kain=%lu:", ntohl(rp->keepalive_inter));
+      fprintf(dump_fp, "kain=%lu:", (unsigned long)ntohl(rp->keepalive_inter));
   if (isset(rp->active, S_KEEPALIVE_GARBA)) fprintf(dump_fp, "!");
   if (isset(rp->valid, S_KEEPALIVE_GARBA)) print_bool("kagb", rp->keepalive_garba);
   if (isset(rp->active, S_NIS_DOMAIN)) fprintf(dump_fp, "!");
