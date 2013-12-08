####### checks for kdecore/util  ###############
include(CheckCSourceCompiles)
include(CheckCSourceRuns)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CMakePushCheckState)

check_include_file("sys/mman.h"                 HAVE_SYS_MMAN_H)

check_function_exists(flock                     HAVE_FLOCK)
check_function_exists(lockf                     HAVE_LOCKF)
check_function_exists(msync                     HAVE_MSYNC)
check_function_exists(posix_fallocate           HAVE_POSIX_FALLOCATE)
check_function_exists(arc4random                HAVE_ARC4RANDOM)
check_function_exists(arc4random_uniform        HAVE_ARC4RANDOM_UNIFORM)

# Check we're able to use monotonic time
check_c_source_runs("
#include <sys/time.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>
int main(void) {
	struct timespec timeout;
	if (clock_gettime(CLOCK_MONOTONIC, &timeout) == -1) {
		printf(\"clock_gettime failed: %s\", strerror(errno));
		return 1;
	}
	return 0;
}
" HAVE_MONOTONIC_CLOCK)

# Check that GCC synchronizing intrinsincs are supported on this platform.
# Catch the warning GCC produces when synchronize intrinsic is replaced by
# a stub due to lack of supported in hardware or GCC itself.
cmake_push_check_state()
set(CMAKE_REQUIRED_FLAGS ${CMAKE_REQUIRED_FLAGS} -Wall -Werror)
check_c_source_compiles("
int main(void) {
        int n;
        __sync_synchronize();
        __sync_fetch_and_and(&n, 3);
        return (0);
}
" HAVE_GCC_SYNC)
cmake_pop_check_state()

# For pthreads tests
cmake_push_check_state()
set(CMAKE_REQUIRED_LIBRARIES ${CMAKE_REQUIRED_LIBRARIES} pthread)

# Check that we have process-shared pthreads mutex support
check_c_source_runs("
#include <errno.h>
#include <pthread.h>
#include <stdio.h>
#include <string.h>
int main(void) {
	pthread_mutex_t m;
	pthread_mutexattr_t attr;
	if (pthread_mutexattr_init(&attr) == -1) {
		printf(\"pthread_mutexattr_init failed: %s\", strerror(errno));
		return 1;
	}
	if (pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED) == -1) {
		printf(\"pthread_mutexattr_setpshared failed: %s\", strerror(errno));
		return 1;
	}
	if (pthread_mutex_init(&m, &attr) == -1) {
		printf(\"pthread_mutex_init failed: %s\", strerror(errno));
		return 1;
	}
	return 0;
}
" HAVE_SHARED_PTHREAD_MUTEXES)

# Check that we have timeouts support for pthreads
check_c_source_runs("
#include <errno.h>
#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
int main(void) {
	pthread_mutex_t m;
	struct timespec timeout;
	if (pthread_mutex_init(&m, 0) == -1) {
		printf(\"pthread_mutex_init failed: %s\", strerror(errno));
		return 1;
	}
	timeout.tv_sec = time(NULL) + 2;
	timeout.tv_nsec = 0;
	if (pthread_mutex_timedlock(&m, &timeout) == -1) {
		printf(\"pthread_mutex_init failed: %s\", strerror(errno));
		return 1;
	}
	return 0;
}
" HAVE_PTHREAD_TIMEOUTS)

# Check that we have process-shared semaphores support
check_c_source_runs("
#include <errno.h>
#include <semaphore.h>
#include <stdio.h>
#include <string.h>
int main(void) {
	sem_t s;
	if (sem_init(&s, 1, 1) == -1) {
		printf(\"sem_init failed: %s\", strerror(errno));
		return 1;
	}
	if (sem_wait(&s) == -1) {
		printf(\"sem_wait failed: %s\", strerror(errno));
		return 1;
	}
	return 0;
}
" HAVE_SHARED_SEMAPHORES)

# Check that we have process-shared semaphores support with timeouts
check_c_source_runs("
#include <errno.h>
#include <semaphore.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
int main(void) {
	sem_t s;
	struct timespec timeout;
	if (sem_init(&s, 1, 1) == -1) {
		printf(\"sem_init failed: %s\", strerror(errno));
		return 1;
	}
	timeout.tv_sec = time(NULL) + 2;
	timeout.tv_nsec = 0;
	if (sem_timedwait(&s, &timeout) == -1) {
		printf(\" failed: %s\", strerror(errno));
		return 1;
	}
	return 0;
}
" HAVE_SHARED_SEMAPHORES_TIMEOUTS)

# End of pthreads tests
cmake_pop_check_state()
