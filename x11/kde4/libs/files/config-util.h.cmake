#ifndef CONFIG_UTIL_H
#define CONFIG_UTIL_H


/********** structs used by kdecore/util *********/

/* headers */
#cmakedefine01 HAVE_SYS_MMAN_H

/* functions */
#cmakedefine01 HAVE_FLOCK
#cmakedefine01 HAVE_GCC_SYNC
#cmakedefine01 HAVE_LOCKF
#cmakedefine01 HAVE_MSYNC
#cmakedefine01 HAVE_MONOTONIC_CLOCK
#cmakedefine01 HAVE_POSIX_FALLOCATE
#cmakedefine01 HAVE_PTHREAD_TIMEOUTS
#cmakedefine01 HAVE_SHARED_PTHREAD_MUTEXES
#cmakedefine01 HAVE_SHARED_SEMAPHORES
#cmakedefine01 HAVE_SHARED_SEMAPHORES_TIMEOUTS
#cmakedefine01 HAVE_ARC4RANDOM
#cmakedefine01 HAVE_ARC4RANDOM_UNIFORM

#endif /* CONFIG_UTIL_H */
