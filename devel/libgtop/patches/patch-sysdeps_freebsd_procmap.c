$OpenBSD: patch-sysdeps_freebsd_procmap.c,v 1.4 2001/11/27 23:07:02 todd Exp $
--- sysdeps/freebsd/procmap.c.orig	Mon Nov 26 23:37:59 2001
+++ sysdeps/freebsd/procmap.c	Tue Nov 27 21:29:39 2001
@@ -32,9 +32,6 @@
 #include <sys/param.h>
 #include <sys/proc.h>
 #include <sys/resource.h>
-#include <vm/vm_object.h>
-#include <vm/vm_prot.h>
-#include <vm/vm_map.h>
 
 #include <sys/vnode.h>
 #include <sys/mount.h>
@@ -46,9 +43,8 @@
 #include <sys/user.h>
 #endif
 #include <sys/sysctl.h>
-#include <vm/vm.h>
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 /* Fixme ... */
 #undef _KERNEL
 #define _UVM_UVM_AMAP_I_H_ 1
@@ -82,7 +78,7 @@ glibtop_get_proc_map_p (glibtop *server,
 	struct kinfo_proc *pinfo;
 	struct vm_map_entry entry, *first;
 	struct vmspace vmspace;
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 	struct vnode vnode;
 	struct inode inode;
 #else
@@ -142,7 +138,7 @@ glibtop_get_proc_map_p (glibtop *server,
 
 	/* I tested this a few times with `mmap'; as soon as you write
 	 * to the mmap'ed area, the object type changes from OBJT_VNODE
-	 * to OBJT_DEFAULT so if seems this really works. */
+	 * to OBJT_DEFAULT so it seems this really works. */
 
 	do {
 		if (update) {
@@ -163,7 +159,7 @@ glibtop_get_proc_map_p (glibtop *server,
  			continue;
 #endif
 #else
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
  		if (UVM_ET_ISSUBMAP (&entry))
 			continue;
 #else
@@ -189,7 +185,7 @@ glibtop_get_proc_map_p (glibtop *server,
 
 		i++;
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 		if (!entry.object.uvm_obj)
 			continue;
 
@@ -213,9 +209,7 @@ glibtop_get_proc_map_p (glibtop *server,
 			glibtop_error_io_r (server, "kvm_read (object)");
 #endif
 
-#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
-		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
-			continue;
+#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || defined(OpenBSD)
 
 		if ((vnode.v_type != VREG) || (vnode.v_tag != VT_UFS) ||
 		    !vnode.v_data) continue;
