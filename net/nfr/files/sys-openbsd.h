/*
	$OpenBSD: sys-openbsd.h,v 1.1.1.1 1998/07/04 20:52:53 marc Exp $

        Copyright(C) 1997 Network Flight Recorder, Inc.
        All rights reserved.
        
        Use and distribution of this software and its source code
        are governed by the terms and conditions of the
        Network Flight Recorder Software License ("LICENSE.TXT")
  
*/
  
/* 
** 
** write one of these for EACH different kinda system
** we get.  Place EVERY needed system include here in the correct order
*/
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <stdarg.h>

#include <sys/types.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <sys/wait.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <sys/stat.h>
#include <sys/param.h>

#include <sysexits.h>

#include <net/if.h>

#include <netinet/in_systm.h>
#include <netinet/in.h>
#include <netinet/if_ether.h>
#include <netinet/ip.h>
#include <netinet/ip_icmp.h>
#include <netinet/udp.h>
#include <netinet/tcp.h>
        
#include <arpa/inet.h>
#include <netdb.h>
  
#include <sys/select.h>
#include <signal.h>
#include <fcntl.h>
   
#include <string.h>
#include <stdarg.h>
#include <ctype.h>
#include <dirent.h>
#include <pwd.h>

#include <errno.h>
#include <assert.h>

#include <regex.h>

#include "pktlib.h"

#include <setjmp.h>

/*
** DIR_NAME_MAX is any addition length more than
** struct dirent needed to hold an entire directory
** entry (including the name).
**
** DIR_COPY_ENTRY is a routine to copy the contents of
** the old entry to the new.
*/

#define       DIR_NAME_MAX    0
#define       DIR_COPY_ENTRY(n,o)     *n = *o
