$OpenBSD: patch-sysdeps_freebsd_procmem.c,v 1.2 2001/09/19 14:37:49 naddy Exp $
--- sysdeps/freebsd/procmem.c.orig	Thu May 27 20:56:49 1999
+++ sysdeps/freebsd/procmem.c	Mon Aug 27 17:24:33 2001
@@ -31,8 +31,6 @@
 #include <sys/param.h>
 #include <sys/proc.h>
 #include <sys/resource.h>
-#include <vm/vm_object.h>
-#include <vm/vm_map.h>
 
 #include <sys/vnode.h>
 #include <ufs/ufs/quota.h>
@@ -45,7 +43,7 @@
 #include <sys/sysctl.h>
 #include <vm/vm.h>
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 /* Fixme ... */
 #undef _KERNEL
 #define _UVM_UVM_AMAP_I_H_ 1
@@ -61,9 +59,7 @@ static const unsigned long _glibtop_sysd
 (1L << GLIBTOP_PROC_MEM_RSS_RLIM);
 
 static const unsigned long _glibtop_sysdeps_proc_mem_share =
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
-(1L << GLIBTOP_PROC_MEM_SHARE);
-#elif defined(__FreeBSD__)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD) || defined(__FreeBSD__)
 (1L << GLIBTOP_PROC_MEM_SHARE);
 #else
 0;
@@ -111,7 +107,7 @@ glibtop_get_proc_mem_p (glibtop *server,
 	struct kinfo_proc *pinfo;
 	struct vm_map_entry entry, *first;
 	struct vmspace *vms, vmspace;
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	struct vnode vnode;
 	struct inode inode;
 #else
@@ -196,7 +192,7 @@ glibtop_get_proc_mem_p (glibtop *server,
  			continue;
 #endif
 #else
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
  		if (UVM_ET_ISSUBMAP (&entry))
 			continue;
 #else
@@ -205,7 +201,7 @@ glibtop_get_proc_mem_p (glibtop *server,
 #endif
 #endif
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!entry.object.uvm_obj)
 			continue;
 
@@ -232,7 +228,7 @@ glibtop_get_proc_mem_p (glibtop *server,
 #endif
 		/* If the object is of type vnode, add its size */
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
 			continue;
 
