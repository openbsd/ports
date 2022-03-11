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
