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
#include <glibtop/procmem.h>

#include <glibtop_suid.h>

#include <kvm.h>
#include <sys/param.h>
#include <sys/proc.h>
#include <sys/resource.h>
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 105020000) || defined(__OpenBSD__)
#include <uvm/uvm_extern.h>
#else
#include <vm/vm_object.h>
#include <vm/vm_map.h>
#endif

#include <sys/vnode.h>
#include <ufs/ufs/quota.h>
#include <ufs/ufs/inode.h>

#include <sys/ucred.h>
#if (!defined __OpenBSD__) && (!defined __bsdi__)
#include <sys/user.h>
#endif
#include <sys/sysctl.h>
#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 105020000)) || defined(__OpenBSD__)
#include <uvm/uvm.h>
#else
#include <vm/vm.h>
#endif

#if (defined(__NetBSD__) && \
	(__NetBSD_Version__ >= 104000000) && (__NetBSD_Version__ < 105020000)) \
	|| defined(__OpenBSD__)
/* Fixme ... */
#undef _KERNEL
#define _UVM_UVM_AMAP_I_H_ 1
#define _UVM_UVM_MAP_I_H_ 1
#include <uvm/uvm.h>
#endif

static const unsigned long _glibtop_sysdeps_proc_mem =
(1L << GLIBTOP_PROC_MEM_SIZE) +
(1L << GLIBTOP_PROC_MEM_VSIZE) +
(1L << GLIBTOP_PROC_MEM_RESIDENT) +
(1L << GLIBTOP_PROC_MEM_RSS) +
(1L << GLIBTOP_PROC_MEM_RSS_RLIM);

static const unsigned long _glibtop_sysdeps_proc_mem_share =
#if (defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)) || \
	defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
(1L << GLIBTOP_PROC_MEM_SHARE);
#else
0;
#endif

#ifndef LOG1024
#define LOG1024		10
#endif

/* these are for getting the memory statistics */
static int pageshift;		/* log base 2 of the pagesize */

/* define pagetok in terms of pageshift */
#define pagetok(size) ((size) << pageshift)

/* Init function. */

void
_glibtop_init_proc_mem_p (glibtop *server)
{
	register int pagesize;

	/* get the page size with "getpagesize" and calculate pageshift
	 * from it */
	pagesize = getpagesize ();
	pageshift = 0;
	while (pagesize > 1) {
		pageshift++;
		pagesize >>= 1;
	}

	/* we only need the amount of log(2)1024 for our conversion */
	pageshift -= LOG1024;

	server->sysdeps.proc_mem = _glibtop_sysdeps_proc_mem |
		_glibtop_sysdeps_proc_mem_share;
}

/* Provides detailed information about a process. */

void
glibtop_get_proc_mem_p (glibtop *server, glibtop_proc_mem *buf,
			pid_t pid)
{
#if defined(__OpenBSD__)
	struct kinfo_proc2 *pinfo;
#else	
	struct kinfo_proc *pinfo;
	struct vm_map_entry entry, *first;
	struct vmspace *vms, vmspace;
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
	struct vnode vnode;
#else
	struct vm_object object;
#endif
#if (!defined(__FreeBSD__) || (__FreeBSD_version < 500013)) && !defined(__FreeBSD_kernel__)
	struct plimit plimit;
#endif
#endif /* __OpenBSD__ */

	int count;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_MEM), 0);

	memset (buf, 0, sizeof (glibtop_proc_mem));

	if (server->sysdeps.proc_mem == 0)
		return;

	/* It does not work for the swapper task. */
	if (pid == 0) return;

	/* Get the process data */
#if defined(__OpenBSD__)
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid,
			      sizeof (*pinfo), &count);
#else
 	pinfo = kvm_getprocs (server->machine.kd, KERN_PROC_PID, pid, &count);
#endif
	if ((pinfo == NULL) || (count < 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return;
	}
#if (defined(__FreeBSD__) && (__FreeBSD_version >= 500013)) || defined(__FreeBSD_kernel__)

#define        PROC_VMSPACE   ki_vmspace

       buf->rss_rlim = pinfo [0].ki_rssize;

       buf->vsize = buf->size = (guint64) pagetok
               (pinfo [0].ki_tsize + pinfo [0].ki_dsize + pinfo[0].ki_ssize)
                       << LOG1024;
       buf->resident = buf->rss = (guint64) pagetok
               (pinfo [0].ki_rssize) << LOG1024;

#elif defined(__OpenBSD__)

       buf->rss_rlim = pinfo[0].p_uru_maxrss;
       buf->vsize = buf->size = (guint64)pagetok
	       (pinfo[0].p_vm_tsize + pinfo[0].p_vm_dsize + pinfo[0].p_vm_ssize)
	       << LOG1024;
       buf->resident = buf->rss = (guint64)pagetok
               (pinfo[0].p_vm_rssize) << LOG1024;

#else

#define        PROC_VMSPACE   kp_proc.p_vmspace

	if (kvm_read (server->machine.kd,
		      (unsigned long) pinfo [0].PROC_VMSPACE,
		      (char *) &plimit, sizeof (plimit)) != sizeof (plimit)) {
		glibtop_warn_io_r (server, "kvm_read (plimit)");
		return;
	}

	buf->rss_rlim = (guint64)
		(plimit.pl_rlimit [RLIMIT_RSS].rlim_cur);

	vms = &pinfo [0].kp_eproc.e_vm;

	buf->vsize = buf->size = (guint64) pagetok
		(vms->vm_tsize + vms->vm_dsize + vms->vm_ssize) << LOG1024;

	buf->resident = buf->rss = (guint64) pagetok
		(vms->vm_rssize) << LOG1024;
#endif

	/* Now we get the shared memory. */

#if defined(__OpenBSD__)
	buf->share = pinfo[0].p_uru_ixrss;
#else

	if (kvm_read (server->machine.kd,
		      (unsigned long) pinfo [0].PROC_VMSPACE,
		      (char *) &vmspace, sizeof (vmspace)) != sizeof (vmspace)) {
		glibtop_warn_io_r (server, "kvm_read (vmspace)");
		return;
	}

	first = vmspace.vm_map.header.next;

	if (kvm_read (server->machine.kd,
		      (unsigned long) vmspace.vm_map.header.next,
		      (char *) &entry, sizeof (entry)) != sizeof (entry)) {
		glibtop_warn_io_r (server, "kvm_read (entry)");
		return;
	}

	/* Walk through the `vm_map_entry' list ... */

	/* I tested this a few times with `mmap'; as soon as you write
	 * to the mmap'ed area, the object type changes from OBJT_VNODE
	 * to OBJT_DEFAULT so if seems this really works. */

	while (entry.next != first) {
		if (kvm_read (server->machine.kd,
			      (unsigned long) entry.next,
			      &entry, sizeof (entry)) != sizeof (entry)) {
			glibtop_warn_io_r (server, "kvm_read (entry)");
			return;
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
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
 		if (UVM_ET_ISSUBMAP (&entry))
			continue;
#else
		if (entry.is_a_map || entry.is_sub_map)
			continue;
#endif
#endif

#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
		if (!entry.object.uvm_obj)
			continue;

		/* We're only interested in vnodes */

		if (kvm_read (server->machine.kd,
			      (unsigned long) entry.object.uvm_obj,
			      &vnode, sizeof (vnode)) != sizeof (vnode)) {
			glibtop_warn_io_r (server, "kvm_read (vnode)");
			return;
		}
#else
		if (!entry.object.vm_object)
			continue;

		/* We're only interested in `vm_object's */

		if (kvm_read (server->machine.kd,
			      (unsigned long) entry.object.vm_object,
			      &object, sizeof (object)) != sizeof (object)) {
			glibtop_warn_io_r (server, "kvm_read (object)");
			return;
		}
#endif
		/* If the object is of type vnode, add its size */

#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
#if defined(UVM_VNODE_VALID)
		if (!vnode.v_uvm.u_flags & UVM_VNODE_VALID)
			continue;
#endif
		if ((vnode.v_type != VREG) || (vnode.v_tag != VT_UFS) ||
		    !vnode.v_data) continue;
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 105250000)
		/* Reference count must be at least two. */
		if (vnode.v_usecount <= 1)
			continue;

		buf->share += pagetok (vnode.v_uobj.uo_npages) << LOG1024;
#else

		/* Reference count must be at least two. */
		if (vnode.v_uvm.u_obj.uo_refs <= 1)
			continue;

		buf->share += pagetok (vnode.v_uvm.u_obj.uo_npages) << LOG1024;
#endif /* __NetBSD_Version__ >= 105250000 */
#endif

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
		if (object.type != OBJT_VNODE)
			continue;

		buf->share += object.un_pager.vnp.vnp_size;
#endif
	}

#endif /* __OpenBSD */

	buf->flags = _glibtop_sysdeps_proc_mem |
		_glibtop_sysdeps_proc_mem_share;
}
