#ifndef BSD_NET_COMPAT_H
#define BSD_NET_COMPAT_H

#if defined(__OpenBSD__) || defined(__FreeBSD__) || defined(__NetBSD__)

#include <sys/types.h>
#include <sys/socket.h>
#include <sys/fcntl.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <unistd.h>
#include <errno.h>

/* Map Linux SOL_TCP to standard POSIX IPPROTO_TCP */
#ifndef SOL_TCP
#define SOL_TCP IPPROTO_TCP
#endif

/* Dummy definitions for Linux-specific keepalive options */
#ifndef TCP_KEEPIDLE
#define TCP_KEEPIDLE  0x9901
#endif

#ifndef TCP_KEEPINTVL
#define TCP_KEEPINTVL 0x9902
#endif

#ifndef TCP_KEEPCNT
#define TCP_KEEPCNT   0x9903
#endif

/* 
 * Wrapper for setsockopt:
 * OpenBSD only supports basic SO_KEEPALIVE. Passing unsupported options to 
 * the real kernel setsockopt() will return -1 (ENOPROTOOPT) and trigger errors in anet.c.
 * We intercept these fine-grained options and return 0 (success).
 */
static inline int bsd_setsockopt(int sockfd, int level, int optname, const void *optval, socklen_t optlen) {
    if (level == IPPROTO_TCP && 
       (optname == TCP_KEEPIDLE || optname == TCP_KEEPINTVL || optname == TCP_KEEPCNT)) {
        return 0; /* Silently ignore fine-grained keepalive tuning on BSD */
    }
    return setsockopt(sockfd, level, optname, optval, optlen);
}

static inline int set_tcp_keepalive(int fd, int idle, int interval, int count) {
    (void)idle;
    (void)interval;
    (void)count;

    int yes = 1;
    return setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, &yes, sizeof(yes));
}


#ifdef setsockopt
#undef setsockopt
#endif
#define setsockopt(s, l, o, v, len) bsd_setsockopt((s), (l), (o), (v), (len))

#endif /* BSD check */
#endif /* BSD_NET_COMPAT_H */
