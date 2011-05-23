/* Copyright (C) 1998 Joshua Sled
   This file is part of LibGTop 1.0.

   Contributed by Joshua Sled <jsled@xcf.berkeley.edu>, July 1998.

   LibGTop is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License,
   or (at your option) any later version.

   LibGTop is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
   for more details.

   You should have received a copy of the GNU General Public License
   along with LibGTop; see the file COPYING. If not, write to the
   Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
*/

#include <config.h>
#include <glibtop.h>
#include <glibtop/error.h>
#include <glibtop/procmap.h>

#include <glibtop_suid.h>

#include <kvm.h>
#include <sys/param.h>
#include <sys/proc.h>
#include <sys/resource.h>
#if defined(__NetBSD__) && (__NetBSD_Version__ < 105020000)
#include <vm/vm_object.h>
#include <vm/vm_prot.h>
#include <vm/vm_map.h>
#elif (defined(__NetBSD__) && (__NetBSD_Version__ >= 105020000)) || \
	defined(__OpenBSD__)
#include <uvm/uvm_extern.h>
#else
#include <vm/vm_object.h>
#include <vm/vm_map.h>
#if (__FreeBSD_version >= 400011) || defined(__FreeBSD_kernel__)
#include <vm/vm.h>
#else
#include <vm/vm_prot.h>
#endif
#endif

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define _KVM_VNODE
#endif
#include <sys/vnode.h>
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#undef _KVM_VNODE
#endif
#include <sys/mount.h>
#include <ufs/ufs/quota.h>
#include <ufs/ufs/inode.h>

#include <sys/ucred.h>
#if (!defined __OpenBSD__) && (!defined __bsdi__)
#include <sys/user.h>
#endif
#include <sys/sysctl.h>
#if (!defined(__NetBSD__) || (__NetBSD_Version__ < 105020000)) && \
	!defined(__OpenBSD__)
#include <vm/vm.h>
#endif

#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || \
	defined(__OpenBSD__)
/* Fixme ... */
#undef _KERNEL
#define _UVM_UVM_AMAP_I_H_ 1
#define _UVM_UVM_MAP_I_H_ 1
#include <uvm/uvm.h>
#endif

static const unsigned long _glibtop_sysdeps_proc_map =
(1L << GLIBTOP_PROC_MAP_TOTAL) + (1L << GLIBTOP_PROC_MAP_NUMBER) +
(1L << GLIBTOP_PROC_MAP_SIZE);

static const unsigned long _glibtop_sysdeps_map_entry =
(1L << GLIBTOP_MAP_ENTRY_START) + (1L << GLIBTOP_MAP_ENTRY_END) +
(1L << GLIBTOP_MAP_ENTRY_OFFSET) + (1L << GLIBTOP_MAP_ENTRY_PERM) +
(1L << GLIBTOP_MAP_ENTRY_INODE) + (1L << GLIBTOP_MAP_ENTRY_DEVICE);

/* Init function. */

void
_glibtop_init_proc_map_p (glibtop *server)
{
	server->sysdeps.proc_map = _glibtop_sysdeps_proc_map;
}

/* Provides detailed information about a process. */

glibtop_map_entry *
glibtop_get_proc_map_p (glibtop *server, glibtop_proc_map *buf,
			pid_t pid)
{
#if (defined(__OpenBSD__)) /* also some netbsd, but not sure which */
	struct kinfo_proc2 *pinfo;
#else
	struct kinfo_proc *pinfo;
#endif
	struct vm_map_entry entry, *first;
	struct vmspace vmspace;
#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || \
	defined(__OpenBSD__)
	struct vnode vnode;
	struct inode inode;
#else
	struct vm_object object;
#endif
	GArray *maps = g_array_sized_new(FALSE, FALSE,
					 sizeof(glibtop_map_entry),
					 100);
#if (defined __FreeBSD__) || defined(__FreeBSD_kernel__)
	struct vnode vnode;
#if (__FreeBSD_version < 500039) && !defined(__FreeBSD_kernel__)
	struct inode inode;
#endif
#endif
	int count, i = 0;
	int update = 0;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_MAP), 0);

	memset (buf, 0, sizeof (glibtop_proc_map));

	/* It does not work for the swapper task. */
	if (pid == 0) return (glibtop_map_entry*) g_array_free(maps, TRUE);

	glibtop_suid_enter (server);

	/* Get the process data */
#if (defined(__OpenBSD__)) /* also some netbsd, but not sure which */
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid, sizeof(struct kinfo_proc2), &count);
#else
	pinfo = kvm_getprocs (server->machine.kd, KERN_PROC_PID, pid, &count);
#endif
	if ((pinfo == NULL) || (count < 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return (glibtop_map_entry*) g_array_free(maps, TRUE);
	}

	/* Now we get the memory maps. */

	if (kvm_read (server->machine.kd,
#if (defined(__FreeBSD__) && (__FreeBSD_version >= 500013)) || defined(__FreeBSD_kernel__)
		      (unsigned long) pinfo [0].ki_vmspace,
#elif (defined(__OpenBSD__))
		      (unsigned long) pinfo [0].p_vmspace,
#else
		      (unsigned long) pinfo [0].kp_proc.p_vmspace,
#endif
		      (char *) &vmspace, sizeof (vmspace)) != sizeof (vmspace))
		glibtop_error_io_r (server, "kvm_read (vmspace)");

	first = vmspace.vm_map.header.next;

	if (kvm_read (server->machine.kd,
		      (unsigned long) vmspace.vm_map.header.next,
		      (char *) &entry, sizeof (entry)) != sizeof (entry))
		glibtop_error_io_r (server, "kvm_read (entry)");

	/* Allocate space. */

	buf->number = vmspace.vm_map.nentries;
	buf->size = sizeof (glibtop_map_entry);

	buf->total = buf->number * buf->size;

	buf->flags = _glibtop_sysdeps_proc_map;

	/* Walk through the `vm_map_entry' list ... */

	/* I tested this a few times with `mmap'; as soon as you write
	 * to the mmap'ed area, the object type changes from OBJT_VNODE
	 * to OBJT_DEFAULT so it seems this really works. */

	do {
		glibtop_map_entry *mentry;
		unsigned long inum, dev;
		guint len;

		if (update) {
			if (kvm_read (server->machine.kd,
				      (unsigned long) entry.next,
				      &entry, sizeof (entry)) != sizeof (entry))
				glibtop_error_io_r (server, "kvm_read (entry)");
		} else {
			update = 1;
		}

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#if (__FreeBSD__ >= 4) || defined(__FreeBSD_kernel__)
		if (entry.eflags & (MAP_ENTRY_IS_SUB_MAP))
			continue;
#else
 		if (entry.eflags & (MAP_ENTRY_IS_A_MAP|MAP_ENTRY_IS_SUB_MAP))
 			continue;
#endif
#else
#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || \
	defined(__OpenBSD__)
 		if (UVM_ET_ISSUBMAP (&entry))
			continue;
#else
		if (entry.is_a_map || entry.is_sub_map)
			continue;
#endif
#endif


#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || \
	defined(__OpenBSD__)
		if (!entry.object.uvm_obj)
			continue;

		/* We're only interested in vnodes */

		if (kvm_read (server->machine.kd,
			      (unsigned long) entry.object.uvm_obj,
			      &vnode, sizeof (vnode)) != sizeof (vnode)) {
			glibtop_warn_io_r (server, "kvm_read (vnode)");
			return (glibtop_map_entry*) g_array_free(maps, TRUE);
		}
#else
		if (!entry.object.vm_object)
			continue;

		/* We're only interested in `vm_object's */

		if (kvm_read (server->machine.kd,
			      (unsigned long) entry.object.vm_object,
			      &object, sizeof (object)) != sizeof (object))
			glibtop_error_io_r (server, "kvm_read (object)");
#endif

#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || \
	defined(__OpenBSD__)
#if defined(UVM_VNODE_VALID)
		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
			continue;
#endif
		if ((vnode.v_type != VREG) || (vnode.v_tag != VT_UFS) ||
		    !vnode.v_data) continue;

		if (kvm_read (server->machine.kd,
			      (unsigned long) vnode.v_data,
			      &inode, sizeof (inode)) != sizeof (inode))
			glibtop_error_io_r (server, "kvm_read (inode)");

		inum  = inode.i_number;
		dev = inode.i_dev;
#endif


#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
		/* If the object is of type vnode, add its size */

		if (object.type != OBJT_VNODE)
			continue;

		if (!object.handle)
			continue;

		if (kvm_read (server->machine.kd,
			      (unsigned long) object.handle,
			      &vnode, sizeof (vnode)) != sizeof (vnode))
			glibtop_error_io_r (server, "kvm_read (vnode)");

#if (defined(__FreeBSD__) && (__FreeBSD_version >= 500039)) || defined(__FreeBSD_kernel__)
               switch (vnode.v_type) {
                   case VREG:
#if (__FreeBSD_version < 600006) && !defined(__FreeBSD_kernel__)
                       inum = vnode.v_cachedid;
		       dev = vnode.v_cachedfs;
#endif
                   default:
                   continue;
               }
#else
		if ((vnode.v_type != VREG) || (vnode.v_tag != VT_UFS) ||
		    !vnode.v_data) continue;

		if (kvm_read (server->machine.kd,
			      (unsigned long) vnode.v_data,
			      &inode, sizeof (inode)) != sizeof (inode))
			glibtop_error_io_r (server, "kvm_read (inode)");

		inum  = inode.i_number;
		dev = inode.i_dev;
#endif
#endif
		len = maps->len;
		g_array_set_size(maps, len + 1);
		mentry = &g_array_index(maps, glibtop_map_entry, len);

		mentry->flags  = _glibtop_sysdeps_map_entry;

		mentry->start  = (guint64) entry.start;
		mentry->end    = (guint64) entry.end;
		mentry->offset = (guint64) entry.offset;
		mentry->device = (guint64) dev;
		mentry->inode  = (guint64) inum;

		mentry->perm   = (guint64) 0;

		if (entry.protection & VM_PROT_READ)
			mentry->perm |= GLIBTOP_MAP_PERM_READ;
		if (entry.protection & VM_PROT_WRITE)
			mentry->perm |= GLIBTOP_MAP_PERM_WRITE;
		if (entry.protection & VM_PROT_EXECUTE)
			mentry->perm |= GLIBTOP_MAP_PERM_EXECUTE;
	} while (entry.next != first);

	buf->flags = _glibtop_sysdeps_proc_map;

	buf->number = maps->len;
	buf->size = sizeof (glibtop_map_entry);
	buf->total = buf->number * buf->size;

	return (glibtop_map_entry*) g_array_free(maps, FALSE);
}
