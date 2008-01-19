/*
 * Copyright (c) 2007 Enache Adrian <3n4ch3@gmail.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include <sys/param.h>
#include <sys/systm.h>
#include <sys/conf.h>
#include <sys/exec.h>
#include <sys/fcntl.h>
#include <sys/ioccom.h>
#include <sys/lkm.h>
#include <sys/malloc.h>
#include <sys/signalvar.h>
#include <sys/namei.h>
#include <sys/vnode.h>

#include "kqemu-kernel.h"

#define KQEMU_DEV		"/dev/kqemu"
#define KQEMU_MODE		0660
#define KQEMU_GID		597

#ifdef AMD64
#define want_resched (curcpu()->ci_want_resched)
#define vtophys(VA) ((*vtopte(VA) & PG_FRAME) | ((unsigned)(VA) & ~PG_FRAME))
#endif

struct kqemu_page* CDECL
kqemu_alloc_zeroed_page(unsigned long *ppage_index)
{
	vaddr_t va;
	paddr_t pa;
	if(!(va = uvm_km_zalloc(kernel_map, PAGE_SIZE)))
		return 0;
	pmap_extract(pmap_kernel(), va, &pa);
	*ppage_index = pa >> PAGE_SHIFT;
	return (struct kqemu_page*)va;
}

void CDECL
kqemu_free_page(struct kqemu_page *page)
{
	uvm_km_free(kernel_map, (vaddr_t)page, PAGE_SIZE);
}

void* CDECL
kqemu_io_map(unsigned long page_index, unsigned int size)
{
	return 0; /*XXX*/
}

void CDECL
kqemu_io_unmap(void *ptr, unsigned int size)
{
	/*XXX*/
}

struct kqemu_user_page *CDECL
kqemu_lock_user_page(unsigned long *ppage_index, unsigned long user_addr)
{
	vaddr_t va = (vaddr_t)user_addr;
	vm_map_t map = &curproc->p_vmspace->vm_map;
	paddr_t pa;
	if(uvm_map_pageable(map, va, va + PAGE_SIZE, FALSE, 0))
		return 0;
	pmap_extract(vm_map_pmap(map), va, &pa);
	*ppage_index = pa >> PAGE_SHIFT;
	return (struct kqemu_user_page*)va;
}

void CDECL
kqemu_log(const char *fmt, ...)
{
	va_list va;
	printf("kqemu: ");
	va_start(va, fmt); vprintf(fmt, va); va_end(va);
}

void* CDECL
kqemu_page_kaddr(struct kqemu_page *page)
{
	return page; /*XXX*/
}

int CDECL
kqemu_schedule(void)
{
	if(want_resched)
		yield();
	return CURSIG(curproc);
}

void CDECL
kqemu_unlock_user_page(struct kqemu_user_page *page)
{
	vaddr_t va = (vaddr_t)page;
	vm_map_t map = &curproc->p_vmspace->vm_map;
	if(uvm_map_pageable(map, va, va + PAGE_SIZE, TRUE, 0))
		printf("kqemu: failed to unwire page at 0x%08lx\n", va);
}

void CDECL kqemu_vfree(void *ptr)
{
	free(ptr, M_TEMP);
}

void* CDECL
kqemu_vmalloc(unsigned int size)
{
	return malloc(size, M_TEMP, M_WAITOK);
}

unsigned long CDECL
kqemu_vmalloc_to_phys(const void *vaddr)
{
	paddr_t pa = vtophys((vaddr_t)vaddr);
	if(!pa)
		return -1;
	return pa >> PAGE_SHIFT;
}

/* /dev/kqemu device operations */

#define	QEMU_MAGIC	0x554d4551
struct kqemu_instance {
	int magic;
	struct kqemu_state *state;
};

static struct kqemu_global_state *kqemu_gs;

static int
kqemuopen(dev_t dev, int flag, int devtype, struct proc* p)
{
	struct kqemu_instance *ks;
	if ((flag & (FREAD|FWRITE)) == FREAD)
		return EPERM;
	if(p->p_emuldata)
		return EBUSY;
	if(!(ks = malloc(sizeof *ks, M_EMULDATA, M_WAITOK)))
		return ENOMEM;
	ks->magic = QEMU_MAGIC;
	ks->state = 0;
	p->p_emuldata = ks;
	return 0;
}

static int
kqemuclose(dev_t dev, int flag, int devtype, struct proc* p)
{
	struct kqemu_instance *ks = p->p_emuldata;
	if(!ks || ks->magic != QEMU_MAGIC){
		printf("kqemu: the kqemu instance was lost\n");
		return EIO;
	}
	if(ks->state) kqemu_delete(ks->state);
	free(ks, M_EMULDATA);
	p->p_emuldata = 0;
	return 0;
}

static int
kqemuioctl(dev_t dev, u_long cmd, caddr_t data, int flags, struct proc *p)
{
	struct kqemu_cpu_state *ctx;
	struct kqemu_instance *ks = p->p_emuldata;
	if(!ks || ks->magic != QEMU_MAGIC){
		printf("kqemu: the kqemu instance was lost\n");
		return EIO;
	}
	switch(cmd){
	case KQEMU_INIT:
		if(ks->state) return EIO;
		ks->state = kqemu_init((struct kqemu_init*)data, kqemu_gs);
		if(!ks->state) return ENOMEM;
		break;
	case KQEMU_EXEC:
		if(!ks->state) return EIO;
		ctx = kqemu_get_cpu_state(ks->state);
		*ctx = *(struct kqemu_cpu_state*)data;
		KERNEL_PROC_UNLOCK(p);
		kqemu_exec(ks->state);
		KERNEL_PROC_LOCK(p);
		*(struct kqemu_cpu_state*)data = *ctx;
		break;
	case KQEMU_GET_VERSION:
		*(int*)data = KQEMU_VERSION;
		break;
	default:
		return ENOTTY;
	}
	return 0;
}

static struct cdevsw kqemu_cdevsw = {
	kqemuopen,
	kqemuclose,
	(dev_type_read((*)))enodev,
	(dev_type_write((*)))enodev,
	kqemuioctl,
	(dev_type_stop((*)))enodev,
	0,
	seltrue,
	(dev_type_mmap((*)))enodev,
};

MOD_DEV("kqemu", LM_DT_CHAR, -1, &kqemu_cdevsw);
int lkmexists(struct lkm_table *);

static int
kqemu_mknod(const char *path, dev_t dev)
{
	struct nameidata nd;
	struct vattr vattr;
	int error;

	NDINIT(&nd, CREATE, LOCKPARENT, UIO_SYSSPACE, path, curproc);

	if ((error = namei(&nd)) != 0)
		return (error);

	if (nd.ni_vp != NULL) {
		VOP_ABORTOP(nd.ni_dvp, &nd.ni_cnd);
		if (nd.ni_dvp == nd.ni_vp)
			vrele(nd.ni_dvp);
		else
			vput(nd.ni_dvp);
		vrele(nd.ni_vp);
		return (EEXIST);
	}

	VATTR_NULL(&vattr);
	vattr.va_rdev = dev;
 	vattr.va_mode = KQEMU_MODE;
	vattr.va_type = VCHR;

	return (VOP_MKNOD(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr));
}

static int
kqemu_chgrp(const char *path)
{
	struct nameidata nd;
	struct vattr vattr;
	int error;

	NDINIT(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, path, curproc);

	if ((error = namei(&nd)) != 0) {
		return (error);
	}

	vn_lock(nd.ni_vp, LK_EXCLUSIVE | LK_RETRY, curproc);
	VATTR_NULL(&vattr);
	vattr.va_gid  = KQEMU_GID;


	error = VOP_SETATTR(nd.ni_vp, &vattr, curproc->p_ucred, curproc);
	vput(nd.ni_vp);
	return (error);
}

static int
kqemu_unlink(const char *path)
{
	struct nameidata nd;
	int error;

	NDINIT(&nd, DELETE, LOCKPARENT | LOCKLEAF, UIO_SYSSPACE,
	    path, curproc);

	if ((error = namei(&nd)) != 0)
		return (error);

	uvm_vnp_uncache(nd.ni_vp);

	return (VOP_REMOVE(nd.ni_dvp, nd.ni_vp, &nd.ni_cnd));
}

int
kqemu_lkmentry(struct lkm_table *lkmtp, int cmd, int ver)
{
	int error = 0;
	int max_locked_pages = physmem / 2;

	if (ver != LKM_VERSION)
		return (EINVAL);

	if (cmd == LKM_E_LOAD)
		lkmtp->private.lkm_any = (struct lkm_any *)&_module;

	if ((error = lkmdispatch(lkmtp, cmd)) == 0) {
		switch(cmd){
		case LKM_E_LOAD:
			if(!(kqemu_gs = kqemu_global_init(max_locked_pages)))
				return ENOMEM;
			printf("kqemu: kqemu version 0x%08x loaded,"
				" max locked mem=%dkB\n",
				KQEMU_VERSION, max_locked_pages << (PAGE_SHIFT - 10));
			kqemu_unlink(KQEMU_DEV);
			kqemu_mknod(KQEMU_DEV, makedev(_module.lkm_offset, 0));
			kqemu_chgrp(KQEMU_DEV);
			break;
		case LKM_E_UNLOAD:
			/* kqemu_global_delete() should return an
			   error if kqemu_gs->nb_kqemu_states > 0.
			   then this could be changed to:
			   if(kqemu_global_delete(kqemu_gs)) return EBUSY; */
			kqemu_global_delete(kqemu_gs);
			kqemu_unlink(KQEMU_DEV);
			break;
		}
	}
	return (error);
}
