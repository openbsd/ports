*** server/dhcps.h.orig	Sat Feb 21 11:41:56 1998
--- server/dhcps.h	Mon Aug 17 18:08:34 1998
***************
*** 37,51 ****
   * WIDE project has the rights to redistribute these changes.
   */
  
! #if defined(__bsdi__) || defined(__FreeBSD__)
  #ifndef BINDING_DB
  #define BINDING_DB              "/var/db/dhcpdb.bind"
  #endif
! #else /* not BSD/OS nor FreeBSD */
  #ifndef BINDING_DB
  #define BINDING_DB              "/etc/dhcpdb.bind"
  #endif
! #endif /* __bsdi__ || __FreeBSD__ */
  
  #ifdef sony_news
  #ifndef PATH_PID
--- 37,51 ----
   * WIDE project has the rights to redistribute these changes.
   */
  
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
  #ifndef BINDING_DB
  #define BINDING_DB              "/var/db/dhcpdb.bind"
  #endif
! #else /* not BSD/OS not FreeBSD nor OpenBSD */
  #ifndef BINDING_DB
  #define BINDING_DB              "/etc/dhcpdb.bind"
  #endif
! #endif /* __bsdi__ || __FreeBSD__ || __OpenBSD__ */
  
  #ifdef sony_news
  #ifndef PATH_PID
