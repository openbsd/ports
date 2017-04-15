/* $OpenBSD: s-openbsd.h,v 1.3 2017/04/15 14:11:35 naddy Exp $ */

#include <sys/types.h>
#include <sys/stat.h>
#define	HAVE_TERMIOS_H
#define TERMLIB	-ltermlib
#define HAVE_STRCHR
#define SIGNAL_HANDLERS_ARE_VOID
#define HAVE_UALARM
#define HAVE_JOBCONTROL
#define HAVE_SYSLOG
#define	HAVE_DIRECTORY
#include <dirent.h>
typedef struct dirent Direntry;
#define HAVE_MKDIR
#define HAVE_GETHOSTNAME
#define HAVE_MULTIGROUP
#define DETACH_TERMINAL setpgrp(); 
#define SHELL		"/bin/sh"
#define MAILX		"/usr/bin/mailx"
#define FILENAME 	256
#define RESIZING
