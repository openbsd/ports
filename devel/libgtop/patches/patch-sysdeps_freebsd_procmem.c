$OpenBSD: patch-sysdeps_freebsd_procmem.c,v 1.3 2001/11/13 09:03:25 wilfried Exp $
--- sysdeps/freebsd/procmem.c.orig	Thu May 27 20:56:49 1999
+++ sysdeps/freebsd/procmem.c	Mon Nov 12 20:53:53 2001
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
@@ -61,9 +58,7 @@ static const unsigned long _glibtop_sysd
 (1L << GLIBTOP_PROC_MEM_RSS_RLIM);
 
 static const unsigned long _glibtop_sysdeps_proc_mem_share =
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
-(1L << GLIBTOP_PROC_MEM_SHARE);
-#elif defined(__FreeBSD__)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD) || defined(__FreeBSD__)
 (1L << GLIBTOP_PROC_MEM_SHARE);
 #else
 0;
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
 
@@ -232,7 +227,7 @@ glibtop_get_proc_mem_p (glibtop *server,
 #endif
 		/* If the object is of type vnode, add its size */
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
 			continue;
 
