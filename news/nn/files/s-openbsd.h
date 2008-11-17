/*
 *	Use this file as a template for new s- files
 */


/*
 *	Include header files containing the following definitions:
 *
 * 		off_t, time_t, struct stat
 */

#include <sys/types.h>
#include <sys/stat.h>


/*
 *	Define if your system doesn't have memmove()
 */

/* #define NO_MEMMOVE	/* */

/*
 *	Define if your system has system V like ioctls
 *	and <termio.h>
 */

/* #define	HAVE_TERMIO_H			/* */

/*
 *	Define if your system instead has <termios.h>
 */

#define	HAVE_TERMIOS_H		/* */

/*
 *	Define to use terminfo database.
 *	Otherwise, termcap is used
 */

/* #define	USE_TERMINFO			/* */

/*
 *	Specify the library (or libraries) containing the termcap/terminfo
 *	routines.
 *
 *	Notice:  nn only uses the low-level terminal access routines
 *	(i.e. it does not use curses).
 */

#define TERMLIB	-ltermlib

/*
 *	Define HAVE_STRCHR if strchr() and strrchr() are available
 */

#define HAVE_STRCHR			/* */

/*
 *	Define if a signal handler has type void (see signal.h)
 */

/* #define	SIGNAL_HANDLERS_ARE_VOID	/* */

/*
 *	Define if signals must be set again after they are caught
 */

/* #define	RESET_SIGNAL_WHEN_CAUGHT	/* */

/*
 *	Define FAKE_INTERRUPT if a keyboard interrupt (^C) cannot interrupt
 *	a read() system call.  This happens on a few BSD based systems
 *	which don't have SV_INTERRUPT defined in <signal.h> and no
 *	siginterrupt() call to make systems call interruptable.  
 *	However, if siginterrupt() is available, but SV_INTERRUPT isn't
 *	defined, then simply define that instead of FAKE_INTERRUPT!
 */

/* #define FAKE_INTERRUPT	/* */

/*
 *	Define HAVE_HARD_SLEEP if sending a SIGALRM isn't enough to
 *	interrupt a sleep() call - typical symptom is that nnadmin W
 *	doesn't wakeup the nnmaster.
 */

/* #define HAVE_HARD_SLEEP		/* BSD ? */

/*
 *	Define HAVE_UALARM if your system has a 4.3 BSD like ualarm() call.
 *	Else define MICRO_ALARM(n) to timeout in n/10 seconds if possible.
 *	Don't define either if system only has the standard alarm() call.
 */

#define HAVE_UALARM			/* BSD 4.3 */
/* #define MICRO_ALARM(n)	xxxx(n)	/* */

/*
 *	Define if your system has BSD like job control (SIGTSTP works)
 */

#define HAVE_JOBCONTROL			/* */


/*
 *	Define if your system has a 4.3BSD like syslog library.
 */

#define HAVE_SYSLOG

/*
 *	Define if your system provides the "directory(3X)" access routines
 *
 *	If true, include the header file(s) required by the package below
 *	(remember that <sys/types.h> or equivalent is included above)
 *	Also typedef Direntry to the proper struct type.
 */

#define	HAVE_DIRECTORY			/* */

#include <dirent.h>			/* System V */
/* #include <sys/dir.h>				/* BSD */

typedef struct dirent Direntry;		/* System V */
/* typedef struct direct Direntry;		/* BSD */

/*
 *	Define if your system has a mkdir() library routine
 */

#define	HAVE_MKDIR			/* */

/*
 *	Pick one:
 *	Define HAVE_GETHOSTNAME if you have a BSD like gethostname routine.
 *	Define HAVE_UNAME if a system V compatible uname() is available.
 *	Define HOSTNAME_FILE "...." to a file containing the hostname.
 *	Define HOSTNAME_WHOAMI if sysname is defined in <whoami.h>.
 *
 *	As a final resort, define HOSTNAME to the name of your system
 *	(in config.h).
 */

#define HAVE_GETHOSTNAME			/* BSD systems */
/* #define HAVE_UNAME				/* System V */
/* #define HOSTNAME_FILE "/etc/uucpname"	/* or another file */
/* #define HOSTNAME_WHOAMI			/* in <whoami.h> */

/*
 *	Define HAVE_MULTIGROUP if system has simultaneous multiple group
 *	membership capability (BSD style).
 *	Also define NGROUPS or include the proper .h file if NGROUPS is
 *	not defined in <sys/param.h>.
 */

#define HAVE_MULTIGROUP	/* BSD */

/*
 *	Define DETACH_TERMINAL to be a command sequence which
 *	will detatch a process from the control terminal
 *	Also include system files needed to perform this HERE.
 *	If not possible, just define it (empty)
 */

/* #include "...." */

#define	DETACH_TERMINAL setpgrp(); 


/*
 *	Specify where the Bourne Shell is.
 */

#define SHELL		"/bin/sh"

/*
 *	Define OLD_AWK to the name of the "old awk" program if your
 *	standard 'awk' is 'nawk' (new awk).  Use full path if necessary.
 *	(This is a temporary hack until I get time to fix the scripts
 *	which breaks nawk).
 */

/* #define OLD_AWK	"oawk"		/* */

/*
 *	Define AVOID_SHELL_EXEC if the system gets confused by
 *		#!/bin/sh
 *	lines in shell scripts, e.g. only reads #! and thinks it
 *	is a csh script.
 */

/* #define AVOID_SHELL_EXEC		/* */

/*
 *	Specify the default mailer
 */

#define	MAILX		"/usr/bin/mailx"	/* SV */
/* #define	MAILX	"/usr/ucb/Mail"		/* BSD */

/*
 *	Define the maximum length of any pathname that may occur
 */

#define	FILENAME 	256

/*
 *	Define USE_MALLOC_H if the faster malloc() in -lmalloc should be used.
 *	This requires that -lmalloc is added to EXTRA_LIB below.
 *
 *	You can tune the malloc package through the following definitions
 *	according to the descriptions in malloc(3X):
 */

/* #define USE_MALLOC_H		/* */

/* #define MALLOC_GRAIN		sizeof(double)		/* M_GRAIN */
/* #define MALLOC_MAXFAST	(MALLOC_GRAIN*4)	/* M_MXFAST */
/* #define MALLOC_FASTBLOCKS	100			/* M_NLBLKS */

/*
 *	NNTP support requires tcp/ip with socket interface.
 *
 *	Define NO_RENAME if the rename() system call is not available.
 *	Define EXCELAN if the tcp/ip package is EXCELAN based.
 *	Define NNTP_EXTRA_LIB to any libraries required only for nntp.
 */

/* #define NO_RENAME			/* */
/* #define EXCELAN			/* */
/* #define NNTP_EXTRA_LIB -lsocket	/* */

/*
 * 	Define RESIZING to make nn understand dynamic window-resizing.
 * 	(It uses the TIOCGWINSZ ioctl found on most 4.3BSD systems)
 *	This should be defined in the conf/s-xxxxx.h file.
 */

#define RESIZING	/* */

/*
 *	Define standard compiler flags here:
 */

#define COMPILER_FLAGS

/*
 *	Define standard loader flags here:
 */

#define LOADER_FLAGS

/*
 *	If your system requires other libraries when linking nn
 *	specify them here:
 */

#define EXTRA_LIB
