*** client/flushroute.c.orig	Tue Apr 14 18:14:33 1998
--- client/flushroute.c	Mon Aug 17 18:10:58 1998
***************
*** 34,42 ****
   * SUCH DAMAGE.
   */
  
! #if defined(__bsdi__) || (__FreeBSD__ >= 2)
  
! /* It's BSD/OS or FreeBSD 2.x */
  
  /*
   * Modified by tomy@sfc.wide.ad.jp
--- 34,42 ----
   * SUCH DAMAGE.
   */
  
! #if defined(__bsdi__) || (__FreeBSD__ >= 2) || defined(__OpenBSD__)
  
! /* It's BSD/OS, FreeBSD 2.x or OpenBSD */
  
  /*
   * Modified by tomy@sfc.wide.ad.jp
***************
*** 75,81 ****
   * SUCH DAMAGE.
   */
  
! #ifndef lint
  static char sccsid[] = "@(#)route.c	8.3 (Berkeley) 3/19/94";
  #endif /* not lint */
  
--- 75,81 ----
   * SUCH DAMAGE.
   */
  
! #if defined(LIBC_SCCS) && !defined(lint)
  static char sccsid[] = "@(#)route.c	8.3 (Berkeley) 3/19/94";
  #endif /* not lint */
  
***************
*** 240,246 ****
    return(0);
  }
  
! #else /* __bsdi__ or FreeBSD 2.x */
  
  #include <stdio.h>
  #include <nlist.h>
--- 240,246 ----
    return(0);
  }
  
! #else /* __bsdi__, FreeBSD 2.x or OpenBSD */
  
  #include <stdio.h>
  #include <nlist.h>
***************
*** 294,314 ****
--- 294,335 ----
      nlist("/vmunix", nl);
    }
    if (nl[N_RTHOST].n_value == 0) {
+ #ifndef __OpenBSD__
      syslog(LOG_LOCAL0|LOG_ERR, "\"rthost\", symbol not in namelist");
+ #else
+     /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+     syslog(LOG_LOCAL1|LOG_ERR, "\"rthost\", symbol not in namelist");
+ #endif
      exit(1);
    }
    if (nl[N_RTNET].n_value == 0) {
+ #ifndef __OpenBSD__
      syslog(LOG_LOCAL0|LOG_ERR, "\"rtnet\", symbol not in namelist");
+ #else
+     /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+     syslog(LOG_LOCAL1|LOG_ERR, "\"rtnet\", symbol not in namelist");
+ #endif
      exit(1);
    }
    if (nl[N_RTHASHSIZE].n_value == 0) {
+ #ifndef __OpenBSD__
      syslog(LOG_LOCAL0|LOG_ERR,
  	   "\"rthashsize\", symbol not in namelist");
+ #else
+     /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+     syslog(LOG_LOCAL1|LOG_ERR,
+ 	   "\"rthashsize\", symbol not in namelist");
+ #endif
      exit(1);
    }
    kmem = open("/dev/kmem", 0);
    if (kmem < 0) {
+ #ifndef __OpenBSD__
      syslog(LOG_LOCAL0|LOG_ERR, "/dev/kmem: %m");
+ #else
+     /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+     syslog(LOG_LOCAL1|LOG_ERR, "/dev/kmem: %m");
+ #endif
      exit(1);
    }
    lseek(kmem, nl[N_RTHASHSIZE].n_value, 0);
***************
*** 345,348 ****
    return(0);
  }
  
! #endif /* __bsdi__ or FreeBSD 2.x */
--- 366,369 ----
    return(0);
  }
  
! #endif /* __bsdi__, FreeBSD 2.x or OpenBSD */
