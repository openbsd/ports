$OpenBSD: patch-sysdeps_freebsd_mem.c,v 1.3 2001/11/10 13:44:17 espie Exp $
--- sysdeps/freebsd/mem.c.orig	Sun Feb 13 16:47:58 2000
+++ sysdeps/freebsd/mem.c	Sat Nov 10 14:32:55 2001
@@ -29,9 +29,11 @@
 
 #include <sys/sysctl.h>
 #include <sys/vmmeter.h>
+#ifndef __OpenBSD__
 #include <vm/vm_param.h>
+#endif
 
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 #include <uvm/uvm_extern.h>
 #endif
 
@@ -57,7 +59,7 @@ static int pageshift;		/* log base 2 of 
 
 /* nlist structure for kernel access */
 static struct nlist nlst [] = {
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	{ "_bufpages" },
 	{ 0 }
 #else
@@ -81,7 +83,7 @@ static int mib [] = { CTL_VM, VM_TOTAL }
 static int mib [] = { CTL_VM, VM_METER };
 #endif
 
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 static int mib_uvmexp [] = { CTL_VM, VM_UVMEXP };
 #endif
 
@@ -117,7 +119,7 @@ glibtop_get_mem_p (glibtop *server, glib
 {
 	struct vmtotal vmt;
 	size_t length_vmt;
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	struct uvmexp uvmexp;
 	size_t length_uvmexp;
 #else
@@ -146,7 +148,7 @@ glibtop_get_mem_p (glibtop *server, glib
 		return;
 	}
 
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	length_uvmexp = sizeof (uvmexp);
 	if (sysctl (mib_uvmexp, 2, &uvmexp, &length_uvmexp, NULL, 0)) {
 		glibtop_warn_io_r (server, "sysctl (uvmexp)");
@@ -172,7 +174,7 @@ glibtop_get_mem_p (glibtop *server, glib
 #if defined(__FreeBSD__)
 	v_total_count = vmm.v_page_count;
 #else
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	v_total_count = uvmexp.reserve_kernel +
 		uvmexp.reserve_pagedaemon +
 		uvmexp.free + uvmexp.wired + uvmexp.active +
@@ -184,7 +186,7 @@ glibtop_get_mem_p (glibtop *server, glib
 #endif
 #endif
 
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	v_used_count = uvmexp.active + uvmexp.inactive;
 	v_free_count = uvmexp.free;
 #else
@@ -200,7 +202,7 @@ glibtop_get_mem_p (glibtop *server, glib
 	buf->cached = (u_int64_t) pagetok (vmm.v_cache_count) << LOG1024;
 #endif
 
-#if defined(__NetBSD__)  && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	buf->locked = (u_int64_t) pagetok (uvmexp.wired) << LOG1024;
 #else
 	buf->locked = (u_int64_t) pagetok (vmm.v_wire_count) << LOG1024;
