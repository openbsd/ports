/* 	$OpenBSD: config_unix.h,v 1.1.1.1 2020/08/30 10:04:59 bentley Exp $ */

/* This file contains some compile-time configuration options for *nix
 * systems.
 * config_unix.h is generated from config_unix.h.in by build.sh
 * For windows, you'll have to edit src/msvc++/config.h manually
 * if you want anything else than the defaults.
 */

#ifndef _CONFIG_UNIX_H
#define _CONFIG_UNIX_H

/* Directory where the UQM game data is located */
#define CONTENTDIR "@PREFIX@/share/uqm/content"

/* Directory where game data will be stored */
#define USERDIR "~/.uqm/"

/* Directory where config files will be stored */
#define CONFIGDIR USERDIR

/* Directory where supermelee teams will be stored */
#define MELEEDIR "${UQM_CONFIG_DIR}teams/"

/* Directory where save games will be stored */
#define SAVEDIR "${UQM_CONFIG_DIR}save/"

/* Defined if words are stored with the most significant byte first */
#@ENDIAN@ WORDS_BIGENDIAN

/* Defined if your system has readdir_r of its own */
#define HAVE_READDIR_R

/* Defined if your system has setenv of its own */
#define HAVE_SETENV

/* Defined if your system has strupr of its own */
#undef HAVE_STRUPR

/* Defined if your system has strcasecmp of its own */
#define HAVE_STRCASECMP_UQM
		// Not using "HAVE_STRCASECMP" as that conflicts with SDL.

/* Defined if your system has stricmp of its own */
#undef HAVE_STRICMP

/* Defined if your system has getopt_long */
#define HAVE_GETOPT_LONG

/* Defined if your system has iswgraph of its own*/
#define HAVE_ISWGRAPH

/* Defined if your system has wchar_t of its own */
#define HAVE_WCHAR_T

/* Defined if your system has wint_t of its own */
#define HAVE_WINT_T

/* Defined if your system has _Bool of its own */
#define HAVE__BOOL

#endif  /* _CONFIG_UNIX_H */
