/* config.h 
	vi:ts=3 sw=3:
 */

/* Configuration for OpenBSD */

#define IS_POSIX
#define USE_TERMIOS
#define USE_AT_EXIT
#define SCO_ANSI_COLOR

typedef void *GENERIC;

#define P(args) args

/* #define ID(x) */
#define ID(x)  LOCAL char id[]= x ;

#define stricmp	strcasecmp
