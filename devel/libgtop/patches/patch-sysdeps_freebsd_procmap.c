$OpenBSD: patch-sysdeps_freebsd_procmap.c,v 1.2 2001/09/19 14:37:49 naddy Exp $
--- sysdeps/freebsd/procmap.c.orig	Thu May 27 20:56:48 1999
+++ sysdeps/freebsd/procmap.c	Mon Aug 27 17:26:53 2001
@@ -32,9 +32,6 @@
 #include <sys/param.h>
 #include <sys/proc.h>
 #include <sys/resource.h>
-#include <vm/vm_object.h>
-#include <vm/vm_prot.h>
-#include <vm/vm_map.h>
 
 #include <sys/vnode.h>
 #include <sys/mount.h>
@@ -48,7 +45,7 @@
 #include <sys/sysctl.h>
 #include <vm/vm.h>
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 /* Fixme ... */
 #undef _KERNEL
 #define _UVM_UVM_AMAP_I_H_ 1
@@ -82,7 +79,7 @@ glibtop_get_proc_map_p (glibtop *server,
 	struct kinfo_proc *pinfo;
 	struct vm_map_entry entry, *first;
 	struct vmspace vmspace;
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	struct vnode vnode;
 	struct inode inode;
 #else
@@ -142,7 +139,7 @@ glibtop_get_proc_map_p (glibtop *server,
 
 	/* I tested this a few times with `mmap'; as soon as you write
 	 * to the mmap'ed area, the object type changes from OBJT_VNODE
-	 * to OBJT_DEFAULT so if seems this really works. */
+	 * to OBJT_DEFAULT so it seems this really works. */
 
 	do {
 		if (update) {
@@ -163,7 +160,7 @@ glibtop_get_proc_map_p (glibtop *server,
  			continue;
 #endif
 #else
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
  		if (UVM_ET_ISSUBMAP (&entry))
 			continue;
 #else
@@ -189,7 +186,7 @@ glibtop_get_proc_map_p (glibtop *server,
 
 		i++;
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!entry.object.uvm_obj)
 			continue;
 
@@ -213,7 +210,7 @@ glibtop_get_proc_map_p (glibtop *server,
 			glibtop_error_io_r (server, "kvm_read (object)");
 #endif
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
 			continue;
 
