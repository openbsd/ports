*** client/dhcpc_subr.c.orig	Thu Nov 13 21:39:55 1997
--- client/dhcpc_subr.c	Mon Aug 17 18:19:06 1998
***************
*** 1110,1116 ****
--- 1110,1121 ----
  #ifndef LOG_PERROR
  #define LOG_PERROR   0
  #endif
+ #ifndef __OpenBSD__
    openlog("dhcpc", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL0);
+ #else
+   /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+   openlog("dhcpc", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL1);
+ #endif
  
    sprintf(pid_filename, "%s.%s.pid", PATH_PID_PREFIX, ifp->name);
    sprintf(cache_filename, "%s.%s", PATH_CACHE_PREFIX, ifp->name);
***************
*** 1314,1320 ****
--- 1319,1331 ----
  #ifndef LOG_PERROR
  #define LOG_PERROR   0
  #endif
+ 
+ #ifndef __OpenBSD__
    openlog("dhcpc", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL0);
+ #else
+   /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+   openlog("dhcpc", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL1);
+ #endif
  
    sprintf(pid_filename, "%s.%s.pid", PATH_PID_PREFIX, ifp->name);
    sprintf(cache_filename, "%s.%s", PATH_CACHE_PREFIX, ifp->name);
***************
*** 1500,1506 ****
  /*
   * halt network, and reset the interface
   */
! #if defined(__bsdi__) || defined(__FreeBSD__)
  
  void
  reset_if(ifp, updown)
--- 1511,1517 ----
  /*
   * halt network, and reset the interface
   */
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
  
  void
  reset_if(ifp, updown)
***************
*** 1551,1557 ****
  #endif
  
  
! #if defined(__bsdi__) || defined(__FreeBSD__)
  /*
   * ifconfig up/down
   */
--- 1562,1568 ----
  #endif
  
  
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
  /*
   * ifconfig up/down
   */
***************
*** 1623,1629 ****
   * configure network interface
   *    address, netmask, and broadcast address
   */
! #if defined(__bsdi__) || defined(__FreeBSD__)
  
  int
  config_if(ifp, addr, mask, brdcst)
--- 1634,1640 ----
   * configure network interface
   *    address, netmask, and broadcast address
   */
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
  
  int
  config_if(ifp, addr, mask, brdcst)
***************
*** 1704,1710 ****
    return(0);
  }
  
! #else /* not __bsdi__ nor __FreeBSD__ */
  
  int
  config_if(ifp, addr, mask, brdcst)
--- 1715,1721 ----
    return(0);
  }
  
! #else /* not __bsdi__ not __FreeBSD__ nor __OpenBSD__ */
  
  int
  config_if(ifp, addr, mask, brdcst)
***************
*** 1780,1798 ****
    return(0);
  }
  
! #endif /* defined(__bsdi__) || defined(__FreeBSD__) */
  
  
  /*
   * set routing table
   */
! #if !defined(__bsdi__) && !defined(__FreeBSD__)
  void
  set_route(param)
    struct dhcp_param *param;
  {
    int sockfd = 0;
! #if !defined(__bsdi__) && !defined(__FreeBSD__) && !defined(__osf__)
  #define  ortentry  rtentry
  #endif
    struct ortentry rt;
--- 1791,1809 ----
    return(0);
  }
  
! #endif /* defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__) */
  
  
  /*
   * set routing table
   */
! #if !defined(__bsdi__) && !defined(__FreeBSD__) && !defined(__OpenBSD__)
  void
  set_route(param)
    struct dhcp_param *param;
  {
    int sockfd = 0;
! #if !defined(__bsdi__) && !defined(__FreeBSD__) && !defined(__OpenBSD__) && !defined(__osf__)
  #define  ortentry  rtentry
  #endif
    struct ortentry rt;
***************
*** 1816,1827 ****
      bzero(&dst, sizeof(struct sockaddr));
      bzero(&gateway, sizeof(struct sockaddr));
      rt.rt_flags = RTF_UP | RTF_GATEWAY;
! #if defined(__bsdi__) || defined(__FreeBSD__)
      ((struct sockaddr_in *) &dst)->sin_len = sizeof(struct sockaddr_in);
  #endif
      ((struct sockaddr_in *) &dst)->sin_family = AF_INET;
      ((struct sockaddr_in *) &dst)->sin_addr.s_addr = INADDR_ANY;
! #if defined(__bsdi__) || defined(__FreeBSD__)
      ((struct sockaddr_in *) &gateway)->sin_len = sizeof(struct sockaddr_in);
  #endif
      ((struct sockaddr_in *) &gateway)->sin_family = AF_INET;
--- 1827,1838 ----
      bzero(&dst, sizeof(struct sockaddr));
      bzero(&gateway, sizeof(struct sockaddr));
      rt.rt_flags = RTF_UP | RTF_GATEWAY;
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
      ((struct sockaddr_in *) &dst)->sin_len = sizeof(struct sockaddr_in);
  #endif
      ((struct sockaddr_in *) &dst)->sin_family = AF_INET;
      ((struct sockaddr_in *) &dst)->sin_addr.s_addr = INADDR_ANY;
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
      ((struct sockaddr_in *) &gateway)->sin_len = sizeof(struct sockaddr_in);
  #endif
      ((struct sockaddr_in *) &gateway)->sin_family = AF_INET;
***************
*** 2531,2537 ****
    struct msghdr msg;
    struct iovec bufvec[1];
    int bufsize = DFLTDHCPLEN;
! #if defined(__bsdi__) || defined(__FreeBSD__)
    int on;
  #endif
  
--- 2542,2548 ----
    struct msghdr msg;
    struct iovec bufvec[1];
    int bufsize = DFLTDHCPLEN;
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
    int on;
  #endif
  
***************
*** 3042,3048 ****
    }
  
    bcopy(OPTBODY(buf), str, OPTLEN(buf));
!   str[OPTLEN(buf)] = '\0';
    buf += OPTLEN(buf) + 1;
    return(0);
  }
--- 3053,3059 ----
    }
  
    bcopy(OPTBODY(buf), str, OPTLEN(buf));
!   str[(unsigned int)OPTLEN(buf)] = '\0';
    buf += OPTLEN(buf) + 1;
    return(0);
  }
