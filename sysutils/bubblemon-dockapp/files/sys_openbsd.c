/*  BubbleMon dockapp 1.2 - OpenBSD specific code
 *  Copyright (C) 2001, Peter Stromberg <wilfried@openbsd.org>
 *  
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Street #330, Boston, MA 02111-1307, USA.
 *
 */

#include <stdlib.h>
#include <unistd.h>
#include <sys/dkstat.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <sys/resource.h>

#include <uvm/uvm_object.h>
#include <uvm/uvm_extern.h>
#include <sys/swap.h>

#include "include/bubblemon.h"
#include "include/sys_include.h"

extern BubbleMonData bm;

/* Returns the current CPU load in percent */
int system_cpu(void)
{
	int loadPercentage;
	int previous_total, previous_load;
	int total, load;
	long cpu_time[CPUSTATES];
	int i;

	int mib[2];
	size_t size;

	mib[0] = CTL_KERN;
	mib[1] = KERN_CPTIME;
	size = sizeof (cpu_time);

	if (sysctl(mib, 2, &cpu_time, &size, NULL, 0) < 0)
	return 0;

	load = cpu_time[CP_USER] + cpu_time[CP_SYS] + cpu_time[CP_NICE];
	total = load + cpu_time[CP_IDLE];

	i = bm.loadIndex;
	previous_load = bm.load[i];
	previous_total = bm.total[i];

	bm.load[i] = load;
	bm.total[i] = total;
	bm.loadIndex = (i + 1) % bm.samples;

	if (previous_total == 0)
		loadPercentage = 0;	/* first time here */
	else if (total == previous_total)
		loadPercentage = 100;
	else
		loadPercentage = (100 * (load - previous_load)) / (total - previous_total);

	return loadPercentage;
}

int system_memory(void)
{
#define pagetob(size) ((size) << (uvmexp.pageshift))
	struct uvmexp uvmexp;
	int nswap, rnswap, i;
	int mib[] = { CTL_VM, VM_UVMEXP };
	size_t size = sizeof (uvmexp);

	if (sysctl(mib, 2, &uvmexp, &size, NULL, 0) < 0)
		return 0;

	bm.mem_used = pagetob(uvmexp.active);
	bm.mem_max = pagetob(uvmexp.npages);
	bm.swap_used = 0;
	bm.swap_max = 0;
	if ((nswap = swapctl(SWAP_NSWAP, 0, 0)) != 0) {
		struct swapent *swdev = malloc(nswap * sizeof(*swdev));
		if((rnswap = swapctl(SWAP_STATS, swdev, nswap)) != nswap) {
			for (i = 0; i < nswap; i++) {
				if (swdev[i].se_flags & SWF_ENABLE) {
					bm.swap_used += (swdev[i].se_inuse / (1024 / DEV_BSIZE));
					bm.swap_max += (swdev[i].se_nblks / (1024 / DEV_BSIZE));
				}
			}
		}
		free(swdev);
	}

	return 1;
}

#ifdef ENABLE_MEMSCREEN
void system_loadavg(void)
{
	static int avg_delay;

	if (avg_delay-- <= 0) {
		struct loadavg loadinfo;
		int i;
		int mib[] = { CTL_VM, VM_LOADAVG };
		size_t size = sizeof (loadinfo);

		if (sysctl(mib, 2, &loadinfo, &size, NULL, 0) >= 0)
			for (i = 0; i < 3; i++) {
				bm.loadavg[i].i = loadinfo.ldavg[i] / loadinfo.fscale;
				bm.loadavg[i].f = ((loadinfo.ldavg[i] * 100 + 
				loadinfo.fscale / 2) / loadinfo.fscale) % 100;
			}

		avg_delay = ROLLVALUE;
	}
}
#endif				/* ENABLE_MEMSCREEN */

/* ex:set sw=4 ts=4: */
