*** client/dhcpc.c.orig	Mon Jul  7 15:08:35 1997
--- client/dhcpc.c	Wed Apr 29 15:32:20 1998
***************
*** 990,997 ****
  	    *param_list = tmpparam;
  	    param_list->lease_origin = init_epoch;
  	    param_list->next = NULL;
! 	    syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %d secs)",
! 		   inet_ntoa(param_list->yiaddr), param_list->lease_duration);
  	    arp_reply(&param_list->yiaddr, &arpif);
  	    return(BOUND);
  	  }
--- 990,997 ----
  	    *param_list = tmpparam;
  	    param_list->lease_origin = init_epoch;
  	    param_list->next = NULL;
! 	    syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %ld secs)",
! 		   inet_ntoa(param_list->yiaddr), (long)param_list->lease_duration);
  	    arp_reply(&param_list->yiaddr, &arpif);
  	    return(BOUND);
  	  }
***************
*** 1240,1247 ****
  	  param_list->next = NULL;
  	  sigsetmask(oldsigmask); /* end critical */
  
! 	  syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %d secs)",
! 		 inet_ntoa(param_list->yiaddr), param_list->lease_duration);
  	  arp_reply(&param_list->yiaddr, &arpif);
  	  return(BOUND);
  	}
--- 1240,1247 ----
  	  param_list->next = NULL;
  	  sigsetmask(oldsigmask); /* end critical */
  
! 	  syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %ld secs)",
! 		 inet_ntoa(param_list->yiaddr), (long)param_list->lease_duration);
  	  arp_reply(&param_list->yiaddr, &arpif);
  	  return(BOUND);
  	}
***************
*** 1379,1386 ****
  	  param_list->next = NULL;
  	  sigsetmask(oldsigmask); /* end critical */
  
! 	  syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %d secs)",
! 		 inet_ntoa(param_list->yiaddr), param_list->lease_duration);
  	  arp_reply(&param_list->yiaddr, &arpif);
  	  return(BOUND);
  	}
--- 1379,1386 ----
  	  param_list->next = NULL;
  	  sigsetmask(oldsigmask); /* end critical */
  
! 	  syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %ld secs)",
! 		 inet_ntoa(param_list->yiaddr), (long)param_list->lease_duration);
  	  arp_reply(&param_list->yiaddr, &arpif);
  	  return(BOUND);
  	}
***************
*** 1659,1666 ****
  	    param_list->next = NULL;
  	    sigsetmask(oldsigmask); /* end critical */
  
! 	    syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %d secs)",
! 		   inet_ntoa(param_list->yiaddr), param_list->lease_duration);
  	    arp_reply(&param_list->yiaddr, &arpif);
  	    return(BOUND);
  	  }
--- 1659,1666 ----
  	    param_list->next = NULL;
  	    sigsetmask(oldsigmask); /* end critical */
  
! 	    syslog(LOG_INFO, "Got DHCPACK (IP = %s, duration = %ld secs)",
! 		   inet_ntoa(param_list->yiaddr), (long)param_list->lease_duration);
  	    arp_reply(&param_list->yiaddr, &arpif);
  	    return(BOUND);
  	  }
