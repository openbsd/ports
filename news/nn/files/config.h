/**************************** NN CONFIGURATION ***************************
 *
 *	Configuration file for nn.
 *
 *	You must edit this file to reflect your local configuration
 *	and environment.
 *
 *	Before editing this file, read the licence terms in the README
 *	file and the installation guidelines in the INSTALLATION file.
 *
 *	(c) Copyright 1990, Kim F. Storm.  All rights reserved.
 */


/*
 * The Good Net-Keeping Seal of Approval folks seem to think it necessary to
 * waste screen real estate with headers.  For such people, uncomment the
 * following to change the default headers
 */

/* #define GNKSA	*/


/************************* NOV CONFIGURATION ******************************
 *
 *	Define NOV if you have access to .overview files in your news spool
 *	area and you want to use them rather than run nnmaster.
 *	If you use NNTP and your server is INN 1.4 or later with XOVER support
 *	and is generating .overview files there, you can use NOV over NNTP. In
 *	that case, make sure you define NNTP below as well.
 *
 *	If your NOV implementation doesn't have records for digests (none
 *	that I know of do), you might want to define 'DO_NOV_DIGEST'.
 *	This will cause nn to grab a digest article and split it apart
 *	before anything has been selected to be read from that article.
 *	'DO_NOV_DIGEST' is necessary if you want any digests (like
 *	'comp.risks') to be automatically split.
 *
 *	NOV_DIRECTORY and NOV_FILENAME can normally be left undefined.
 */

#define NOV

/* Optional */
#define DO_NOV_DIGEST

/* Optional */
/* #define NOV_DIRECTORY	"/usr/spool/news"	*/

/* Optional */
/* #define NOV_FILENAME		".overview"		*/


/********************************** NNTP *********************************
 *
 *	Define NNTP to enable nntp support.  If you are not using NNTP,
 *	just leave the following NNTP_* definitions as they are - they
 *	will be ignored anyway.
 */

#define NNTP

/*
 *	Define NNTP_SERVER to the name of a file containing the name of the
 *	nntp server (aka the newsserver you connect to).
 *
 *	If the file name does not start with a slash, it is relative to
 *	LIB_DIRECTORY defined below.
 */

#define NNTP_SERVER	"/etc/nntpserver"

/*
 *  Define your local domain name.  If you leave this undefined, nn will
 *  attempt to discover it.
 *  See comment below on HIDDENNET.
 */

/* #define DOMAIN	"frobozz.bogus" */

/*
 *  If you define HIDDENNET, the hostname will not appear in the posting
 *  data except on the path.  Items will be from user@DOMAIN (with
 *  DOMAIN as defined above).  If you don't want this, comment it out.
 */

#define HIDDENNET


/***************** OPERATING SYSTEM DEPENDENT DEFINITIONS *******************
 *
 *	Include the appropriate s- file for your system below.
 *
 *	If a file does not exist for your system, you can use
 *	conf/s-template.h as a starting point for writing you own.
 */

#include "s-openbsd.h"

/*
 *	Define DEFAULT_PAGER as the initial value of the 'pager' variable.
 *	nnadmin pipes shell command output though this command.
 */

/* #define DEFAULT_PAGER	"pg -n -s"	*/	/* System V */
#define DEFAULT_PAGER		"more"			/* bsd */

/*
 *	DEFAULT_PRINTER is the initial value of the 'printer' variable.
 *	nn's :print command pipes text into this command.
 */

/* #define DEFAULT_PRINTER	"lp -s"		*/	/* System V */
#define DEFAULT_PRINTER		"lpr -p -JNEWS"		/* bsd */


/********************** MACHINE DEPENDENT DEFINITIONS **********************
 *
 *	Include the appropriate m- file for your system below.
 *
 *	If a file does not exist for your system, you can use
 *	conf/m-template.h as a starting point for writing you own.
 */

#include "m-i80386.h"


/***************************** OWNERSHIP ***************************
 *
 *	Specify owner and group for installed files and programs.
 *
 *	The nnmaster will run suid/sgid to this owner and group.
 *
 *	The only requirements are that the ownership allows the
 *	nnmaster to READ the news related files and directories, and
 *	the ordinary users to read the database and execute the nn*
 *	programs.
 *
 *	Common choices are: (news, news) and (your uid, your gid)
 */

#define OWNER	"_news"
#define GROUP	"_news"


/**************************** LOCALIZATION ****************************
 *
 *	Specify where programs and files are installed.
 *
 *	BIN_DIRECTORY	 - the location of the user programs (mandatory)
 *
 *	LIB_DIRECTORY	 - the location of auxiliary programs and files.
 *			   (mandatory UNLESS ALL of the following are defined).
 *
 *	MASTER_DIRECTORY - the location of the master program (on server)
 *			   (= LIB_DIRECTORY if undefined)
 *
 *	CLIENT_DIRECTORY - the location of auxiliary programs (on clients)
 *			   (= LIB_DIRECTORY if undefined)
 *
 *	HELP_DIRECTORY	 - the location of help files, online manual, etc.
 *			   (= CLIENT_DIRECTORY/help if undefined)
 *
 *	CACHE_DIRECTORY	 - if NNTP is used, nn uses this central directory
 *			   to store working copies of articles on the local
 *			   system.  If not defined, it stores the articles
 *			   in each user's ~/.nn directory.
 *
 *	TMP_DIRECTORY	 - temporary file storage.  Overriden by $TMPDIR.
 *			   (= /var/tmp if undefined).
 *
 *	LOG_FILE	 - the location of nn's log file.
 *			   (= LIB_DIRECTORY/Log if undefined).
 */

#define BIN_DIRECTORY	"OBSD_PREFIX/bin"
#define LIB_DIRECTORY	"OBSD_PREFIX/lib/nn"
#define CLIENT_DIRECTORY "OBSD_PREFIX/libexec/nn"
#define HELP_DIRECTORY "OBSD_PREFIX/share/doc/nn"
#define TMP_DIRECTORY "/tmp"
#define LOG_FILE "/var/log/nn"

/*************************** MAIL INTERFACE *************************
 *
 *	Specify a mailer that accepts a letter WITH a header IN THE TEXT.
 *
 *	A program named 'recmail' program is normally delivered with
 *	the Bnews system, or you can use sendmail -t if you have it.
 *
 *	The contrib/ directory contains two programs which you might
 *	be able to use with a little tweaking.
 */

/* #define REC_MAIL	"/usr/lib/news/recmail"	*/	/* non-sendmail */
#define REC_MAIL	"/usr/sbin/sendmail -t"		/* sendmail */

/*
 *	nn needs to know the name of your host.
 *	To obtain the host name it will use either of the 'uname' or
 *	'gethostname' system calls as specified in the s-file included
 *	above.
 *
 *	If neither 'uname' nor 'gethostname' is available, you must
 *	define HOSTNAME to be the name of your host.  Otherwise, leave
 *	it undefined (it will not be used anyway).
 */

/* #define HOSTNAME	"myhost"	*/

/*
 *	Define APPEND_SIGNATURE if you want nn to ask users to append
 *	~/.signature to mail messages (reply/forward/mail).
 *
 *	If the mailer defined in REC_MAIL automatically includes .signature
 *	you should not define this (it will fool people to include it twice).
 *
 *	I think 'recmail' includes .signature, but 'sendmail -t' doesn't.
 */

#define APPEND_SIGNATURE

/*
 *	BUG_REPORT_ADDRESS is the initial value of the bug-report-address
 *	variable which is used by the :bug command to report bugs in
 *	the nn software.
 */

#define BUG_REPORT_ADDRESS	"mtpins@nndev.org"


/*************************** DOCUMENTATION ***************************
 *
 *	Specify directories for the user and system manuals
 *
 *	Adapt this to your local standards; the manuals will be named
 *		$(MAN_DIR)/program.$(MAN_SECTION)
 *
 *	USER_MAN	- nn, nntidy, nngrep, etc.
 *	SYS_MAN		- nnadmin
 *	DAEMON_MAN	- nnmaster
 */

#define USER_MAN_DIR	"OBSD_PREFIX/man/man1"
#define USER_MAN_SECTION	"1"

#define SYS_MAN_DIR	"OBSD_PREFIX/man/man1"
#define SYS_MAN_SECTION		"1m"

#define DAEMON_MAN_DIR	"OBSD_PREFIX/man/man8"
#define DAEMON_MAN_SECTION	"8"


/************************** LOCAL POLICY *****************************
 *
 *	Define STATISTICS if you want to keep a record of how much
 *	time the users spend on news reading.
 *
 *	Sessions shorter than the specified number of minutes are not
 *	recorded (don't clutter up the log file).
 *
 *	Usage statistics is entered into the $LOG_FILE with code U
 */

/* #define STATISTICS	5	*/	/* minutes */

/*
 *	Define ACCOUNTING if you want to keep accumulated accounting
 *	based on the statistics in a separate 'acct' file.  In this
 *	case, the accounting figures will be secret, and not be
 *	written to the Log file.  And the users will not be able to
 *	"decrease" their own account.
 *
 *	See account.h for optional cost calculation parameters.
 */

/* #define ACCOUNTING	*/

/*
 *	Define AUTHORIZE if you want to restrict the use of nn to
 *	certain users or certain periods of the day.  Define both
 *	this and ACCOUNTING if you want to impose a usage quota.
 *
 *	See account.h for implementing various access policies.
 */

/* #define AUTHORIZE	*/

/*
 *	Default folder directory
 */

#define FOLDER_DIRECTORY	"~/News"

/*
 *	Default length of authors name (in "edited" format).
 *	Also size of "Name" field on the article menus.
 *	The actual value used will be the larger of this and 1/5 the width
 *	of the window.
 */

#define NAME_LENGTH	16

/*
 *	SIGN_TYPE is the program to be used to create digital signatures.
 */

#define SIGN_TYPE		"gpg"
/* #define SIGN_TYPE		"pgp"		*/

/*
 *	If no "Lines:" header field is present, NN can be made to
 *	count them itself.
 */

#define DONT_COUNT_LINES

/*
 *	PUT_TIMESTAMP_IN_SCRIPTS
 *	Defining this causes the "inst" script to add identifying information
 *	to the beginning of the shell scripts.
 */

#define PUT_TIMESTAMP_IN_SCRIPTS

/*
 *	CONFIG_NUM_IN_VERSION
 *	Defining this will make NN announce itself including the build number
 *	like "NN version 6.7.x #12", rather than "NN version 6.7.x".
 */

/* #define CONFIG_NUM_IN_VERSION	*/

/*
 *	ART_GREP
 *	Define this if you want to enable the "experimental" subject
 *	body search code.  On the "G" menu, there will be two extra
 *	choices: "b" body search unread, and "B" body search all.
 *	Choose your pattern, and you will be presented with a merged group
 *	containing the articles you chose.  There may still be bugs!
 *	WARNING:
 *	THIS WOULD BE *BAD* FOR NNTP SITES!  You don't want all your
 *	users downloading the entire news database...
 */

/* #define ART_GREP	*/

/*
 *	CACHE_PURPOSE
 *	Defining this makes NN cache the newsgroup/purpose list, sorted
 *	in memory and use binary search to locate a group's purpose.
 *	This can be a winner on systems with *everything* in their
 *	newsgroups list.  Note that this will cause nn to always download
 *	the newsgroup/purpose list.  This will increase startup time for nn
 *	but is still a win for people who have show-purpose-mode=2.
 *	Currently CACHE_PURPOSE and nnmaster don't work together,
 *	so please leave this undefined unless you are using NOV.
 */

/* #define CACHE_PURPOSE	*/


/*
 * If you aren't running nnmaster you can stop here.
 */


/************************ NNMASTER CONFIGURATION *************************/

/*********************** NETWORK DEPENDENT DEFINITIONS **********************
 *
 *	Define NETWORK_DATABASE if you share the database through NFS on
 *	a network with different, non-compatible machines, e.g. SUNs and
 *	VAXen, or SUN-3 and SUN-4, or if you are using different compilers
 *	on the same architecture.
 *
 *	In a homogenous network, you can leave it undefined for higher
 *	performance (no data conversion is needed).
 */

/* #define NETWORK_DATABASE	*/


/**************************** DATABASE LOCATION **************************
 *
 *	Specify where the nn database should be installed.
 *
 *	If none of the following symbols are defined, the database will
 *	be contained in the NEWS_DIRECTORY in a separate .nn directory for
 *	master files and in files named .nnx and .nnd in each group's
 *	spool directory.  To use this scheme, the OWNER specified above
 *	must have write permission on the news spool directories.
 *
 *	If you access news via NNTP, you will probably always have to
 *	give the database directory explicitly through DB_DIRECTORY
 *	(and DB_DATA_DIRECTORY), since the normal news spool directories
 *	are probably not available on the local system.
 *	The exception may be if nnmaster runs directly on the nntp server.
 *
 *	To change the default behavior, you can define the following
 *	symbols:
 *
 *	DB_DIRECTORY	   - the directory containing the master files.
 *
 *	DB_DATA_DIRECTORY  - the directory containing the per-group files
 *			     (default is DB_DIRECTORY/DATA if undefined).
 *
 *	DB_LONG_NAMES	   - use group's name rather than number when
 *			     building file names in DB_DATA_DIRECTORY.
 *	     (The file system must support long file names!!)
 */

/* #define DB_DIRECTORY	"/usr/spool/nn"	*/


/*************************** NEWS TRANSPORT **************************
 *
 *	Specify the location of your news programs and files
 *	You only need to specify these if you are not
 *	satisfied with the default settings.
 *
 *	NEWS_DIRECTORY		- The news spool directory.
 *				  Default: /usr/spool/news
 *
 *	NEWS_LIB_DIRECTORY	- The news lib directory.
 *				  Default: /usr/lib/news
 *
 *	RMGROUP_PATH		- The location of the rmgroup program.
 *				  Default: NEWS_LIB_DIR/{rm,del}group
 */

/* #define NEWS_DIRECTORY	"/usr/spool/news"	*/
/* #define NEWS_LIB_DIRECTORY	"/usr/lib/news"		*/

/************************ CONFIGURATION COMPLETED ************************/
