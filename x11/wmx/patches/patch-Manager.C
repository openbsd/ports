*** Manager.C.orig	Thu Jul 15 11:30:24 1999
--- Manager.C	Thu Jul 15 11:32:40 1999
***************
*** 719,725 ****
      }
  }
  
! #ifdef sgi
  extern "C" {
  extern int putenv(char *);	/* not POSIX */
  }
--- 719,725 ----
      }
  }
  
! #if defined(sgi) || defined(__OpenBSD__)
  extern "C" {
  extern int putenv(char *);	/* not POSIX */
  }
