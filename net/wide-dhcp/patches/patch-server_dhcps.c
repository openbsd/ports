--- server/dhcps.c.orig	Sun Jul 19 09:16:53 1998
+++ server/dhcps.c	Tue Dec 22 09:19:18 1998
@@ -136,7 +136,7 @@
 int  nmacaddr;
 #endif
 
-void
+int
 main(argc, argv)
   int argc;
   char **argv;
@@ -146,7 +146,7 @@
   struct if_info *ifp = NULL;          /* pointer to interface */
   char *option = NULL;                 /* command line option */
   char msgtype;                        /* DHCP message type */
-  struct sockaddr_in my_addr, any_addr;
+  struct sockaddr_in my_addr;
   struct ifreq ifreq;
 
   bzero(&ifreq, sizeof(ifreq));
@@ -228,9 +228,19 @@
 #define LOG_PERROR	0	/* Don't bother if not defined... */
 #endif
   if (debug == 1) {
+#ifndef __OpenBSD__
     openlog("dhcps", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL0);
+#else
+    /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+    openlog("dhcps", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL1);
+#endif
   } else {
+#ifndef __OpenBSD__
     openlog("dhcps", LOG_PID | LOG_CONS, LOG_LOCAL0);
+#else
+    /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+    openlog("dhcps", LOG_PID | LOG_CONS, LOG_LOCAL1);
+#endif
   }
 
   init_db();               /* initialize databases */
@@ -540,6 +550,11 @@
 static void
 init_db()
 {
+#ifdef __OpenBSD__
+  int dump_fd;
+  char *dump_tmp = ADDRPOOL_DUMP ".XXXXXXXX";
+#endif
+
   if (addrpool_db[0] == '\0') strcpy(addrpool_db, ADDRPOOL_DB);
   if ((addrpool_dbfp = fopen(addrpool_db, "r")) == NULL) {
     syslog(LOG_ERR, "Cannot open the resource database \"%s\"", addrpool_db);
@@ -563,7 +578,23 @@
     syslog(LOG_ERR, "Cannot open the binding database \"%s\"", binding_db);
     exit(1);
   }
+#ifdef __OpenBSD__
+  if ((dump_fd = mkstemp(dump_tmp)) < 0) {
+    syslog(LOG_ERR, "Cannot open temporary resource dump file");
+    exit(1);
+  }
   unlink(ADDRPOOL_DUMP);
+  if (link(dump_tmp, ADDRPOOL_DUMP) < 0) {
+    syslog(LOG_ERR, "Cannot link \"%s\" to \"%s\"", dump_tmp, ADDRPOOL_DUMP);
+    close(dump_fd);
+    unlink(dump_tmp);
+    exit(1);
+  }
+  close(dump_fd);
+  unlink(dump_tmp);
+#else
+  unlink(ADDRPOOL_DUMP);
+#endif
   if ((dump_fp = fopen(ADDRPOOL_DUMP, "w+")) == NULL) {
     syslog(LOG_ERR, "Cannot open the resource dump file \"%s\"",ADDRPOOL_DUMP);
     exit(1);
@@ -1921,7 +1952,11 @@
     snd.dhcp->options[off_options] = END;
   } else if (off_extopt > 0 && off_extopt < maxoptlen - DFLTOPTLEN &&
 	     sbufvec[1].iov_base != NULL) {
+#ifndef __OpenBSD__
     sbufvec[1].iov_base[off_extopt++] = END;
+#else
+    *((char *)sbufvec[1].iov_base + off_extopt++) = END;
+#endif
   }
 
   if (off_extopt < sbufvec[1].iov_len) {
@@ -2378,7 +2413,11 @@
   char *inserted;
   char flag;
 {
+#ifdef __OpenBSD__
+  u_int32_t *addr = 0;
+#else
   u_Long *addr = 0;
+#endif
   char option[6];
   int symbol = 0;
   int retval = 0;
@@ -2939,7 +2978,11 @@
       len -= done;
       off_options += done; /* invalid offset, So, to access
 					    here will cause fatal error */
+#ifndef __OpenBSD__
       bcopy(&opt[done], &sbufvec[1].iov_base[off_extopt], len);
+#else
+      bcopy(&opt[done], (char *)sbufvec[1].iov_base + off_extopt, len);
+#endif
       off_extopt += len;
       return(0);
     }
@@ -3016,7 +3059,7 @@
     return(GOOD);
   }
 
-#if defined(__bsdi__) || (__FreeBSD__ >= 2)
+#if defined(__bsdi__) || (__FreeBSD__ >= 2) || defined(__OpenBSD__)
   delarp(ip);
 #else
   delarp(ip, sockfd);
