/*
 * $OpenBSD: opts-openbsd.h,v 1.1.1.1 1998/07/04 20:52:53 marc Exp $
 */

#define USE_SELECT

/*****************************************************************************
  Copyright(C) 1996, 1997 Network Flight Recorder, Inc.
  All rights reserved.
  
  Use and distribution of this software and its source code
  are governed by the terms and conditions of the
  Network Flight Recorder Software License ("LICENSE.TXT")
*****************************************************************************/


/* temporary fix 'til I get around to shoving Mike's select code in */
#define FIFO_OPEN_READMODE O_RDONLY
#define FIFO_OPEN_WRITEMODE O_WRONLY

#define COUNTER_TYPE long long

#define USE_PASSWD
