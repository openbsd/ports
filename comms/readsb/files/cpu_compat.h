#ifndef BSD_CPU_COMPAT_H
#define BSD_CPU_COMPAT_H

#if defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__NetBSD__)

#include <stdint.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/param.h>
#include <sys/sysctl.h>

/* CPU set definitions */
typedef uint64_t cpu_set_t;
#define CPU_SETSIZE 64
#define CPU_COUNT(set) __builtin_popcountll(*(set))
#define CPU_ZERO(set) (*(set) = 0)
#define CPU_SET(cpu, set) (*(set) |= (1ULL << (cpu)))
#define CPU_CLR(cpu, set) (*(set) &= ~(1ULL << (cpu)))
#define CPU_ISSET(cpu, set) ((*(set) & (1ULL << (cpu))) != 0)

/* CPU affinity functions */
static inline int sched_getaffinity(pid_t pid, size_t cpu_size, cpu_set_t *mask) {
    (void)pid;
    (void)cpu_size;
    
    int ncpu = 0;
    
    /* Try POSIX sysconf first */
    long sysconf_cores = sysconf(_SC_NPROCESSORS_ONLN);
    if (sysconf_cores > 0) {
        ncpu = (int)sysconf_cores;
    } else {
        /* Fallback to OpenBSD sysctl HW_NCPU */
        int mib[2] = { CTL_HW, HW_NCPU };
        size_t len = sizeof(ncpu);
        if (sysctl(mib, 2, &ncpu, &len, NULL, 0) != 0 || ncpu < 1) {
            ncpu = 1;
        }
    }

    CPU_ZERO(mask);
    for (int i = 0; i < ncpu && i < CPU_SETSIZE; i++) {
        CPU_SET(i, mask);
    }
    return 0;
}

static inline int sched_setaffinity(pid_t pid, size_t cpusetsize, cpu_set_t *mask) {
    /* BSD doesn't support userland thread pinning; return success */
    (void)pid;
    (void)cpusetsize;
    (void)mask;
    return 0;
}

#endif /* BSD check */
#endif /* BSD_CPU_COMPAT_H */
