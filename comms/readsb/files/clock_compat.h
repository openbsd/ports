#ifndef BSD_CLOCK_COMPAT_H
#define BSD_CLOCK_COMPAT_H

#if defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__NetBSD__)

#include <time.h>
#include <errno.h>
#include <sys/time.h>

/* Linux-specific CLOCK_MONOTONIC_RAW alias to standard POSIX CLOCK_MONOTONIC */
#ifndef CLOCK_MONOTONIC_RAW
#define CLOCK_MONOTONIC_RAW CLOCK_MONOTONIC
#endif

#ifndef TIMER_ABSTIME
#define TIMER_ABSTIME 1
#endif

/* Native high-resolution monotonic timestamp helper in nanoseconds */
static inline uint64_t clock_gettime_nsec(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ULL + (uint64_t)ts.tv_nsec;
}

/* 
 * clock_nanosleep fallback for BSD environments using standard nanosleep(2)
 */
static inline int clock_nanosleep(clockid_t clock_id, int flags,
                                const struct timespec *request,
                                struct timespec *remain) {
    if (flags & TIMER_ABSTIME) {
        // Absolute sleep: calculate remaining delta relative to current time
        struct timespec now;
        clock_gettime(clock_id, &now);

        uint64_t now_ns = (uint64_t)now.tv_sec * 1000000000ULL + (uint64_t)now.tv_nsec;
        uint64_t target_ns = (uint64_t)request->tv_sec * 1000000000ULL + (uint64_t)request->tv_nsec;

        if (now_ns >= target_ns) {
            return 0; // Target time already reached
        }

        uint64_t delay_ns = target_ns - now_ns;
        struct timespec ts = {
            .tv_sec = (time_t)(delay_ns / 1000000000ULL),
            .tv_nsec = (long)(delay_ns % 1000000000ULL)
        };

        while (nanosleep(&ts, remain) == -1) {
            if (errno != EINTR) {
                return errno;
            }
            if (remain) {
                ts = *remain;
            }
        }
    } else {
        // Relative sleep
        struct timespec ts = *request;
        while (nanosleep(&ts, remain) == -1) {
            if (errno != EINTR) {
                return errno;
            }
            if (remain) {
                ts = *remain;
            }
        }
    }

    return 0;
}

#endif /* BSD check */
#endif /* BSD_CLOCK_COMPAT_H */
