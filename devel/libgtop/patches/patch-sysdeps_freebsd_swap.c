$OpenBSD: patch-sysdeps_freebsd_swap.c,v 1.3 2001/11/27 23:07:02 todd Exp $
--- sysdeps/freebsd/swap.c.orig	Sun Feb 13 16:47:59 2000
+++ sysdeps/freebsd/swap.c	Mon Aug 27 17:02:38 2001
@@ -69,9 +69,9 @@ static struct nlist nlst [] = {
 };
 #endif
 
-#elif defined(__NetBSD__)
+#elif defined(__NetBSD__) || defined(OpenBSD)
 
-#if (__NetBSD_Version__ >= 104000000)
+#if (__NetBSD_Version__ >= 104000000) || defined(OpenBSD)
 #include <uvm/uvm_extern.h>
 #include <sys/swap.h>
 #else
@@ -80,7 +80,7 @@ static struct nlist nlst [] = {
 
 #endif
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 static int mib_uvmexp [] = { CTL_VM, VM_UVMEXP };
 #else
 /* nlist structure for kernel access */
@@ -111,7 +111,7 @@ glibtop_init_swap_p (glibtop *server)
 #endif
 #endif
 
-#if !(defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000))
+#if !(defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) && !defined(OpenBSD)
 	if (kvm_nlist (server->machine.kd, nlst2) < 0) {
 		glibtop_warn_io_r (server, "kvm_nlist (cnt)");
 		return;
@@ -151,14 +151,16 @@ glibtop_get_swap_p (glibtop *server, gli
 
 #elif defined(__bsdi__)	
 	struct swapstats swap;
-#elif defined(__NetBSD__)
+#elif defined(__NetBSD__) || defined(OpenBSD)
 	struct swapent *swaplist;
+	long blocksize;
+	int hlen;
 #endif
 
 	int nswap, i;
 	int avail = 0, inuse = 0;
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	struct uvmexp uvmexp;
 	size_t length_uvmexp;
 #else
@@ -175,7 +177,7 @@ glibtop_get_swap_p (glibtop *server, gli
 	if (server->sysdeps.swap == 0)
 		return;
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	length_uvmexp = sizeof (uvmexp);
 	if (sysctl (mib_uvmexp, 2, &uvmexp, &length_uvmexp, NULL, 0)) {
 		glibtop_warn_io_r (server, "sysctl (uvmexp)");
@@ -199,7 +201,7 @@ glibtop_get_swap_p (glibtop *server, gli
 		buf->pagein = vmm.v_swappgsin - swappgsin;
 		buf->pageout = vmm.v_swappgsout - swappgsout;
 #else
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		buf->pagein = uvmexp.swapins - swappgsin;
 		buf->pageout = uvmexp.swapouts - swappgsout;
 #else
@@ -213,7 +215,7 @@ glibtop_get_swap_p (glibtop *server, gli
         swappgsin = vmm.v_swappgsin;
 	swappgsout = vmm.v_swappgsout;
 #else
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	swappgsin = uvmexp.swapins;
 	swappgsout = uvmexp.swapouts;
 #else
@@ -393,7 +395,7 @@ glibtop_get_swap_p (glibtop *server, gli
 
 	buf->total = swap.swap_total;
 
-#elif defined(__NetBSD__)
+#elif defined(__NetBSD__) || defined(OpenBSD)
 
 	nswap = swapctl (SWAP_NSWAP, NULL, 0);
 	if (nswap < 0) {
@@ -418,9 +420,10 @@ glibtop_get_swap_p (glibtop *server, gli
 
 	buf->flags = _glibtop_sysdeps_swap;
 
-	buf->used = inuse;
-	buf->free = avail;
+	(char *)getbsize (&hlen, &blocksize);
 
-	buf->total = inuse + avail;
+	buf->total = avail * blocksize;
+	buf->used = inuse * blocksize;
+	buf->free = buf->total - buf->used;
 #endif
 }
