$OpenBSD: patch-sysdeps_freebsd_procmem.c,v 1.5 2004/08/09 15:00:56 espie Exp $
--- sysdeps/freebsd/procmem.c.orig	Mon Nov 26 23:37:59 2001
+++ sysdeps/freebsd/procmem.c	Mon Aug  9 16:47:10 2004
@@ -31,8 +31,6 @@
 #include <sys/param.h>
 #include <sys/proc.h>
 #include <sys/resource.h>
-#include <vm/vm_object.h>
-#include <vm/vm_map.h>
 
 #include <sys/vnode.h>
 #include <ufs/ufs/quota.h>
@@ -43,9 +41,8 @@
 #include <sys/user.h>
 #endif
 #include <sys/sysctl.h>
-#include <vm/vm.h>
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 /* Fixme ... */
 #undef _KERNEL
 #define _UVM_UVM_AMAP_I_H_ 1
@@ -61,10 +58,8 @@ static const unsigned long _glibtop_sysd
 (1L << GLIBTOP_PROC_MEM_RSS_RLIM);
 
 static const unsigned long _glibtop_sysdeps_proc_mem_share =
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD) || defined(__FreeBSD__)
 (1L << GLIBTOP_PROC_MEM_SHARE);
-#elif defined(__FreeBSD__)
-(1L << GLIBTOP_PROC_MEM_SHARE);
 #else
 0;
 #endif
@@ -111,7 +106,7 @@ glibtop_get_proc_mem_p (glibtop *server,
 	struct kinfo_proc *pinfo;
 	struct vm_map_entry entry, *first;
 	struct vmspace *vms, vmspace;
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	struct vnode vnode;
 	struct inode inode;
 #else
@@ -196,7 +191,7 @@ glibtop_get_proc_mem_p (glibtop *server,
  			continue;
 #endif
 #else
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
  		if (UVM_ET_ISSUBMAP (&entry))
 			continue;
 #else
@@ -205,7 +200,7 @@ glibtop_get_proc_mem_p (glibtop *server,
 #endif
 #endif
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!entry.object.uvm_obj)
 			continue;
 
@@ -232,16 +227,15 @@ glibtop_get_proc_mem_p (glibtop *server,
 #endif
 		/* If the object is of type vnode, add its size */
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
-		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
-			continue;
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 
 		if ((vnode.v_type != VREG) || (vnode.v_tag != VT_UFS) ||
 		    !vnode.v_data) continue;
 
-		/* Reference count must be at least two. */
-		if (vnode.v_uvm.u_obj.uo_refs <= 1)
-			continue;
+
+               /* Reference count must be at least two. */
+               if (vnode.v_usecount <= 1)
+                       continue;
 
 		buf->share += pagetok (vnode.v_uvm.u_obj.uo_npages) << LOG1024;
 #endif
