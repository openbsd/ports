*** client/dhcpc.h.orig	Thu Nov 13 23:21:26 1997
--- client/dhcpc.h	Mon Aug 17 16:54:33 1998
***************
*** 47,57 ****
  #endif
  #endif /*sony_news*/
  
! #if defined(__bsdi__) || defined(__FreeBSD__)
  #ifndef PATH_CACHE_PREFIX
  #define PATH_CACHE_PREFIX	"/var/db/dhcpc_cache"
  #endif
! #else /* not BSD/OS nor FreeBSD */
  #ifndef PATH_CACHE_PREFIX
  #define PATH_CACHE_PREFIX	"/etc/dhcpc_cache"
  #endif
--- 47,57 ----
  #endif
  #endif /*sony_news*/
  
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
  #ifndef PATH_CACHE_PREFIX
  #define PATH_CACHE_PREFIX	"/var/db/dhcpc_cache"
  #endif
! #else /* not BSD/OS not FreeBSD nor OpenBSD */
  #ifndef PATH_CACHE_PREFIX
  #define PATH_CACHE_PREFIX	"/etc/dhcpc_cache"
  #endif
