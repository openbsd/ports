*** server/delarp.c.orig	Thu Sep 11 08:28:58 1997
--- server/delarp.c	Mon Aug 17 17:16:09 1998
***************
*** 37,43 ****
   * SUCH DAMAGE.
   */
  
! #ifndef lint
  static char sccsid[] = "@(#)arp.c       8.2 (Berkeley) 1/2/94";
  #endif /* not lint */
  
--- 37,43 ----
   * SUCH DAMAGE.
   */
  
! #if defined(LIBC_SCCS) && !defined(lint)
  static char sccsid[] = "@(#)arp.c       8.2 (Berkeley) 1/2/94";
  #endif /* not lint */
  
***************
*** 60,66 ****
  #include <syslog.h>
  
  
! #if defined(__bsdi__) || (__FreeBSD__ >= 2)
  /*
   * delarp for BSD/OS 2.*
   */
--- 60,66 ----
  #include <syslog.h>
  
  
! #if defined(__bsdi__) || (__FreeBSD__ >= 2) || defined(__OpenBSD__)
  /*
   * delarp for BSD/OS 2.*
   */
***************
*** 184,190 ****
  #else
  
  /*
!  * it is not BSD/OS 2.* nor FreeBSD
   */
  
  #include <sys/ioctl.h>
--- 184,190 ----
  #else
  
  /*
!  * it is not BSD/OS 2.* not FreeBSD nor OpenBSD
   */
  
  #include <sys/ioctl.h>
