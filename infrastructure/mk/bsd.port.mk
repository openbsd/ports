#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
FULL_REVISION=$$OpenBSD: bsd.port.mk,v 1.294 2000/06/09 16:26:54 espie Exp $$
#	$FreeBSD: bsd.port.mk,v 1.264 1996/12/25 02:27:44 imp Exp $
#	$NetBSD: bsd.port.mk,v 1.62 1998/04/09 12:47:02 hubertf Exp $
#
#	bsd.port.mk - 940820 Jordan K. Hubbard.
#	This file is in the public domain.
#
# Please view me with 4 column tabs!

# There are two different types of "maintainers" in the whole ports
# framework concept.  Maintainers of the bsd.port*.mk files
# are listed below in the ${OPSYS}_MAINTAINER entries (this file
# is used by multiple *BSD flavors).  You should consult them directly
# if you have any questions/suggestions regarding this file since only
# they are allowed to modify the master copies in the CVS repository!

# For each port, the MAINTAINER variable is what you should consult for
# contact information on the person(s) to contact if you have questions/
# suggestions about that specific port.  By default (if no MAINTAINER
# is listed), a port is maintained by the subscribers of the ports@openbsd.org
# mailing list, and any correspondence should be directed there.  
#

OpenBSD_MAINTAINER= ports-maintainers@openbsd.org

# recent /usr/share/mk/* should include bsd.own.mk, guard for older versions
.if !defined(BSD_OWN_MK)
.  include <bsd.own.mk>
.endif

# NEED_VERSION: we need at least this version of bsd.port.mk for this 
# port  to build

.if defined(NEED_VERSION)
_VERSION_REVISION=${FULL_REVISION:M[0-9]*.*}

_VERSION=${_VERSION_REVISION:C/\..*//}
_REVISION=${_VERSION_REVISION:C/.*\.//}

_VERSION_NEEDED=${NEED_VERSION:C/\..*//}
_REVISION_NEEDED=${NEED_VERSION:C/.*\.//}
.  if ${_VERSION_NEEDED} > ${_VERSION} || \
   (${_VERSION_NEEDED} == ${_VERSION} && ${_REVISION_NEEDED} > ${_REVISION})
.BEGIN:
	echo "Need version ${NEED_VERSION} of bsd.port.mk"; \
	exit 1;
.  endif
.endif

# Supported Variables and their behaviors:
#
# IMPORTANT: any variable or target starting with an underscore 
# (e.g., _DEPEND_ECHO) is internal to bsd.port.mk, and 
# liable to change without notice. 
#
# DON'T USE IN INDIVIDUAL PORTS !!!
#
# Variables that typically apply to all ports:
# 
# ONLY_FOR_ARCHS - If a port only makes sense to certain architectures, this
#				  is a list containing the names for them.  It is checked
#				  against the predefined ${MACHINE_ARCH} value
# ARCH			- The architecture (default: "uname -m").
# OPSYS			- The operating system (default: "uname -s").
# OPSYS_VER		- The current version of the operating system
#				  (default: "uname -r").
# PORTSDIR		- The root of the ports tree.  Defaults: /usr/ports
# DISTDIR 		- Where to get gzip'd, tarballed copies of original sources.
#				  (default: ${PORTSDIR}/distfiles).
# PREFIX		- Where to install things in general (default: /usr/local).
# MASTER_SITES	- Primary location(s) for distribution files if not found
#				  locally.
# MASTER_SITESn	- Primary location(s) for more distribution files, in case
#				  some distfiles must be fetched from elsewhere.
# MASTER_SITE_SUBDIR - Directory that "%SUBDIR%" in MASTER_SITES is
#				  replaced by.
# PACKAGES		- A top level directory where all packages go (rather than
#				  going locally to each port). (default: ${PORTSDIR}/packages).
# GMAKE			- Set to path of GNU make if not in $PORTPATH (default: gmake).
# XMKMF			- Set to path of `xmkmf' if not in $PORTPATH 
#                 (default: xmkmf -a ).
# MAINTAINER	- The e-mail address of the contact person for this port
#				  Defaults: ports@openbsd.org
# CATEGORIES	- A list of descriptive categories into which this port falls.
# WRKOBJDIR		- A top level directory where, if defined, the separate working
#				  directories will get created, and symbolically linked to from
#				  ${WRKDIR} (see below).  This is useful for building ports on
#				  several architectures, then ${PORTSDIR} can be NFS-mounted
#				  while ${WRKOBJDIR} is local to every arch
# PREFERRED_CIPHERS
#				- a list of the form cipher.sig of programs to use to check
#				  recorded checksums, in order of decreasing trust.
#				  (default to using sha1, then rmd160, then md5).
#
# Variables that typically apply to an individual port.  Non-Boolean
# variables without defaults are *mandatory*.
#
# WRKDIR 		- A temporary working directory that gets *clobbered* on clean
#				  (default: ${.CURDIR}/work).
# WRKDIST 		- A subdirectory of ${WRKDIR} where the distribution actually
#				  unpacks to.  (Default: ${WRKDIR}/${DISTNAME}).
# WRKSRC		- where the actual source lives (default ${WRKDIST}).
# WRKBUILD		- The directory where the port is actually built, useful for 
#                 ports that need a separate directory (default: ${WRKSRC}).
#				  This is intended for GNU configure.
# WRKINST       - The directory where new ports get installed (default:
#				  ${WRKDIR}/fake-${ARCH}
# SEPARATE_BUILD
#               - define if the port can build in directory separate from
#                 WRKSRC. This redefines WRKBUILD to be arch-dependent,
#                 along with the configure, build and install cookies
# DISTNAME		- Name of port or distribution.
# DISTFILES		- Name(s) of archive file(s) containing distribution
#				  (default: ${DISTNAME}${EXTRACT_SUFX}).
#				  Each name can take an additional :[0-9] suffix, in which
#				  case it will be fetched from the corresponding 
#				  MASTER_SITES0...9 sites.
# SUPDISTFILES  - Names of supplementary archive files that don't get
# 				  used all the time (default: empty).
# PATCHFILES	- Name(s) of additional files that contain distribution
#				  patches (default: none).  make will look for them at
#				  MASTER_FILES (see above).  They will automatically be
#				  uncompressed before patching if the names end with
#				  ".gz" or ".Z".
# DIST_SUBDIR	- Suffix to ${DISTDIR}.  If set, all ${DISTFILES} 
#				  and ${PATCHFILES} will be put in this subdirectory of
#				  ${DISTDIR}.  Also they will be fetched in this subdirectory 
#				  from FreeBSD mirror sites.
# FULLDISTDIR	- ${DISTDIR}/${DIST_SUBDIR}, useful for non-standard
#                 installations that override fetch and/or extract.
# ALLFILES		- All of ${DISTFILES} and ${PATCHFILES}, maybe SUPDISTFILES
#                 as well. Set by bsd.port.mk, NOT the user.
# MIRROR_DISTFILE - Whether the distfile is redistributable without restrictions.
#				  Defaults to "Yes", set this to "No" if restrictions exist.
# IGNOREFILES	- If some of the ${ALLFILES} are not checksum-able, set
#				  this variable to their names.
# PKGNAME		- Name of the package file to create if the DISTNAME 
#				  isn't really relevant for the port/package
#				  (default: ${DISTNAME}).
# EXTRACT_ONLY	- If defined, a subset of ${DISTFILES} you want to
#			  	  actually extract.
# PATCHDIR 		- A directory containing any additional patches you made
#				  to port this software to OpenBSD (default:
#				  ${.CURDIR}/patches)
# PATCH_LIST	- list of patches to apply, can include wildcards (default:
#                 patch-*)
# SCRIPTDIR 	- A directory containing any auxiliary scripts
#				  (default: ${.CURDIR}/scripts)
# FILESDIR 		- A directory containing any miscellaneous additional files.
#				  (default: ${.CURDIR}/files)
# PKGDIR 		- A direction containing any package creation files.
#				  (default: ${.CURDIR}/pkg)
# PKG_DBDIR		- Where package installation is recorded (default: /var/db/pkg)
# FORCE_PKG_REGISTER - If set, it will overwrite any existing package
#				  registration information in ${PKG_DBDIR}/${PKGNAME}.
# MTREE_FILE	- The name of the mtree file to use for make plist, set only
#				  if port does not install in a standard place.
# COMES_WITH	- The first version that a port was made part of the
#				  standard OpenBSD distribution.  If the current OpenBSD
#				  version is >= this version then a notice will be
#				  displayed instead the port being generated.
# FAKE		    - Install first into ${WRKINST}, build the package from there,
#				  and perform the real install from the package (default: No)
# FAKE_FLAGS	- Flags to pass to make for the fake install, used to
# 				  override the default install directory (Defaults:
# 				  something relevant for gnu configure and imake)
#
#
# NO_BUILD		- Use a dummy (do-nothing) build target.
# NO_CONFIGURE	- Use a dummy (do-nothing) configure target.
# NO_CDROM		- Port may not go on CDROM.  Set this string to reason.
# NO_DESCRIBE	- Use a dummy (do-nothing) describe target.
# NO_EXTRACT	- Use a dummy (do-nothing) extract target.
# NO_PATCH		- Use a dummy (do-nothing) patch target.
# NO_INSTALL	- Use a dummy (do-nothing) install target.
# NO_PACKAGE	- Use a dummy (do-nothing) package target.
# NO_PKG_REGISTER - Don't register a port install as a package.
# NO_DEPENDS	- Don't verify build of dependencies.
# CLEANDEPENDS  - Nuke dependent dirs on make clean (Default: no)
# BROKEN		- Port is broken.  Set this string to the reason why.
# RESTRICTED	- Port is restricted.  Set this string to the reason why.
# USE_BZIP2		- Port distfiles use bzip2 instead of gzip for compression.
# USE_ZIP		- Port distfiles use zip instead of tar for packaging.
# USE_GMAKE		- Port uses gmake.
# USE_LIBTOOL	- Port uses libtool.
#
# XXX: cygnus products do NOT use autoconf for making its main 
#      configure from configure.in
# USE_AUTOCONF	- Port uses autoconf (implies GNU_CONFIGURE).
# AUTOCONF_DIR  - Where to apply autoconf (default: ${WRKSRC}).
# USE_IMAKE		- Port uses imake.
# USE_X11		- Port uses X11.
# NO_INSTALL_MANPAGES - For imake ports that don't like the install.man
#						target.
# HAS_CONFIGURE	- Says that the port has its own configure script.
# GNU_CONFIGURE	- Set if you are using GNU configure (optional).
#
# CONFIGURE_STYLE
#               - Set to value corresponding to some standard configuration
#				  perl: perl's MakeMaker Makefile.PL
#
# YACC          - yacc program to pass to configure script (default: yacc)
#                 override with bison is port requires bison.
# CONFIGURE_SCRIPT - Name of configure script, defaults to 'configure'.
# CONFIGURE_ARGS - Pass these args to configure if ${HAS_CONFIGURE} is set.
# CONFIGURE_SHARED - An argument to GNU configure that expands to
#				  --enable-shared for those architectures that support
#				  shared libraries and --disable-shared for architectures
#				  that do not support shared libraries.
# LIBTOOL_FLAGS	- Pass these flags in ${CONFIGURE} and ${MAKE} environment so
#				  to be used as args by libtool.
# CONFIGURE_ENV - Pass these env (shell-like) to configure if
#				  ${HAS_CONFIGURE} is set.
# SCRIPTS_ENV	- Additional environment vars passed to scripts in
#                 ${SCRIPTDIR} executed by bsd.port.mk.
# MAKE_ENV		- Additional environment vars passed to sub-make in build
#				  stage.
# IS_INTERACTIVE - Set this if your port needs to interact with the user
#				  during a build.  User can then decide to skip this port by
#				  setting ${BATCH}, or compiling only the interactive ports
#				  by setting ${INTERACTIVE}.
# FETCH_DEPENDS - A list of "path:dir" pairs of other ports this
#				  package depends in the "fetch" stage.  "path" is the
#				  name of a file if it starts with a slash (/), an
#				  executable otherwise.  make will test for the
#				  existence (if it is a full pathname) or search for
#				  it in $PORTPATH (if it is an executable) and go
#				  into "dir" to do a "make all install" if it's not
#				  found.
# BUILD_DEPENDS - A list of "path:dir" pairs of other ports this
#				  package depends to build (between the "extract" and
#				  "build" stages, inclusive).  The test done to
#				  determine the existence of the dependency is the
#				  same as FETCH_DEPENDS.
# RUN_DEPENDS	- A list of "path:dir" pairs of other ports this
#				  package depends to run.  The test done to determine
#				  the existence of the dependency is the same as
#				  FETCH_DEPENDS.  This will be checked during the
#				  "install" stage and the name of the dependency will
#				  be put into the package as well.
# LIB_DEPENDS	- A list of "lib:dir" pairs of other ports this package
#				  depends on.  "lib" is the name of a shared library.
#				  make will use "ldconfig -r" to search for the
#				  library.  Note that lib can be any regular expression.
# DEPENDS		- A list of other ports this package depends on being
#				  made first.  Use this for things that don't fall into
#				  the above two categories.
#
# EXTRACT_CMD	- Command for extracting archives (default: "gzip",
#				  "bzip2" if USE_BZIP2, "unzip" if USE_ZIP).
# EXTRACT_SUFX	- Suffix for archive files (default: ".tar.gz",
#				  ".tar.bz2" if USE_BZIP2, ".zip" if USE_ZIP).
# EXTRACT_BEFORE_ARGS 
#				- Arguments to ${EXTRACT_CMD} before filename
#				  (default: "-dc" for gzip or bzip2, "-q" for unzip)
# EXTRACT_AFTER_ARGS 
#				- Arguments to ${EXTRACT_CMD} following filename
#				  (default: "| ${TAR} -xf -", or "-d ${WKRDIR}" if USE_ZIP).
#
# FETCH_CMD		  - Full path to ftp/http fetch command if not in $PORTPATH
#				  (default: /usr/bin/ftp).
# FETCH_BEFORE_ARGS -
#				  Arguments to ${FETCH_CMD} before filename (default: none).
# FETCH_AFTER_ARGS -
#				  Arguments to ${FETCH_CMD} following filename (default: none).
# NO_IGNORE     - Set this to Yes (most probably in a "make fetch" in
#                 ${PORTSDIR}) if you want to fetch all distfiles,
#                 even for packages not built due to limitation by
#                 absent X or Motif or ONLY_FOR_ARCHS...
# NO_WARNINGS	- Set this to Yes to disable warnings regarding variables
#				  to define to control the build.  Automatically set
#				  from the "mirror-distfiles" target.
# ALL_TARGET	- The target to pass to make in the package when building.
#				  (default: "all")
# INSTALL_TARGET- The target to pass to make in the package when installing.
#				  (default: "install")
#
# Motif support:
#
# USE_MOTIF		- Set this in your port if it requires Motif or Lesstif.
#				  It will be built using Lesstif port unless Motif libraries
#				  found or HAVE_MOTIF is defined. See also REQUIRES_MOTIF.
#
# REQUIRES_MOTIF- Set this in your port if it requires Motif.  It will  be
#				  built only if HAVE_MOTIF is set.
# HAVE_MOTIF	- If set, means system has Motif.  Typically set in /etc/mk.conf.
# MOTIF_STATIC	- If set, link libXm statically; otherwise, link it
#				  dynamically.  Typically set in /etc/mk.conf.
# MOTIFLIB		- Set automatically to appropriate value depending on
#				  ${MOTIF_STATIC}.  Substitute references to -lXm with 
#				  patches to make your port conform to our standards.
# MOTIF_ONLY	- If set, build Motif ports only.  (Not much use except for
#				  building packages.)
#
# Variables to change if you want a special behavior:
#
# ECHO_MSG		- Used to print all the '===>' style prompts - override this
#				  to turn them off (default: /bin/echo).
# DEPENDS_TARGET - The target to execute when a port is calling a
#				  dependency (default: "install").
# PATCH_DEBUG	- If set, print out more information about the patches as
#				  it attempts to apply them.
#
# Variables that serve as convenient "aliases" for your *-install targets.
# Use these like: "${INSTALL_PROGRAM} ${WRKBUILD}/prog ${PREFIX}/bin".
#
# INSTALL_PROGRAM		- A command to install binary executables.
# INSTALL_SCRIPT		- A command to install executable scripts.
# INSTALL_DATA			- A command to install sharable data.
# INSTALL_MAN			- A command to install manpages (doesn't compress).
# INSTALL_PROGRAM_DIR	- Create a directory for storing programs
# INSTALL_SCRIPT_DIR	- Create a directory for storing scripts (alias for
#						  (INSTALL_PROGRAM_DIR)
# INSTALL_DATA_DIR		- Create a directory for storing arbitrary data
# INSTALL_MAN_DIR		- Create a directory for storing man pages
#
# It is assumed that the port installs manpages uncompressed. If this is
# not the case, set MANCOMPRESSED in the port and define MAN<sect> and
# CAT<sect> for the compressed pages.  The pages will then be automatically
# uncompressed.
#
# MANCOMPRESSED - Indicates that the port installs manpages in a compressed
#                 form (default: port installs manpages uncompressed).
# MAN<sect>		- A list of manpages, categorized by section.  For
#				  example, if your port has "man/man1/foo.1" and
#				  "man/mann/bar.n", set "MAN1=foo.1" and "MANN=bar.n".
#				  The available sections chars are "123456789LN".
# CAT<sect>     - The same as MAN<sect>, only for formatted manpages.
# MANPREFIX		 -The directory prefix for ${MAN<sect>} (default: ${PREFIX}).
# CATPREFIX     - The directory prefix for ${CAT<sect>} (default: ${PREFIX}).
#
# Other variables:
#
# NO_SHARED_LIBS - defined as "Yes" for those machine architectures that do
#				  not support shared libraries.  WARNING: This value is
#				  NOT defined until AFTER ".include bsd.port.mk".  Thus
#				  you can NOT use something like ".if defined(NO_SHARED_LIBS)"
#				  before this file is included.
#
# Default targets and their behaviors:
#
# fetch			- Retrieves ${DISTFILES} (and ${PATCHFILES} if defined, and
#                 ${SUPDISTFILES} if needed) into ${DISTDIR} as necessary.
# fetch-list	- Show list of files that would be retrieved by fetch
# extract		- Unpacks ${EXTRACT_ONLY} (${DISTFILES} by default)
#                 into ${WRKDIR}.
# patch			- Apply any provided patches to the source.
# distpatch     - Intermediate patch target, apply only distribution patches.
# configure		- Runs either GNU configure, one or more local configure
#				  scripts or nothing, depending on what's available.
# build			- Actually compile the sources.
#
# If ${FAKE} == Yes
# fake			- Perform a fake installation into ${WRKINST}.
# package	    - Build package from the fake installation.
# install       - Install the resulting package.
#
# Note that `fake' uses {pre,do,post}-install for its own dark purposes.
# There is also a special pre-fake target that gets run after mtree but
# before making the INSTALL_PRECOOKIE, to finish setting up the fake tree.
#
# If ${FAKE} == No
# install		- Install the results of a build.
# reinstall		- Install the results of a build, ignoring "already installed"
#				  flag.
# deinstall		- Remove the installation.  Alias: uninstall
# package		- Create a package from an _installed_ port.
#
# plist			- create a file suitable for use as a packing list.  This
#				  is for port maintainers.
# describe		- Try to generate a one-line description for each port for
#				  use in INDEX files and the like.
# checkpatch	- Do a "patch -C" instead of a "patch".  Note that it may
#				  give incorrect results if multiple patches deal with
#				  the same file.
# checksum		- Use ${CHECKSUM_FILE} to ensure that your distfiles are valid.
# makesum		- Generate ${CHECKSUM_FILE} (only do this for your own ports!).
# addsum		- update ${CHECKSUM_FILE} in a non-destructive way 
#				  (your own ports only!)
# readme		- Create a README.html file describing the category or package
# mirror-distfiles	- Mirror the distfile(s) if they are freely redistributable
#				  Setting MIRROR_DISTFILE to "No" in the package Makefile
#				  will override the default "Yes", and the distfile will
#				  not be fetched.
# list-distfiles- list the distribution and patch files used by a port.
#				  Typical use is (from the top level of the ports tree)
#				  make ECHO_MSG=: list-distfiles | tee some-file
# obj			- pre-build ${WRKDIR} -> ${WRKOBJDIR}/${PORTSUBDIR} links
# print-depends - print all dependencies for the given package
#
# Default sequence for "all" is:  fetch checksum extract patch configure build
#
# Please read the comments in the targets section below, you
# should be able to use the pre-* or post-* targets (which
# are available for every stage except checksum) or provide
# an overriding do-* target to do pretty much anything you
# want.
#
# For historical reasons, the distpatch target is a subtarget of patch.
# If you provide a do-patch, you MUST call distpatch explicitly.
# The sequence of hooks actually run is: 
#
# pre-patch `real distpatch' post-distpatch `real patch' post-patch
# NEVER override the "regular" targets unless you want to open
# a major can of worms.

.if exists(${.CURDIR}/../Makefile.inc)
.include "${.CURDIR}/../Makefile.inc"
.endif

FAKE?=Yes
WRKINST?=${WRKDIR}/fake-${ARCH}${_FEXT}

# Get the architecture
ARCH!=	uname -m

# Get the operating system type and version
OPSYS=	OpenBSD
OPSYS_VER=	${OSREV}


# Define NO_SHARED_LIBS for those machines that don't support shared libraries.
#
.if (${MACHINE_ARCH} == "alpha") || (${MACHINE_ARCH} == "powerpc") || \
    (${MACHINE_ARCH} == "vax") || (${MACHINE_ARCH} == "hppa")
NO_SHARED_LIBS=	Yes
.endif

# Compatibility kludge for old scripts
.if defined(NOCLEANDEPENDS)
.  if ${NOCLEANDEPENDS:L}=="no"
CLEANDEPENDS?=Yes
.  else
CLEANDEPENDS?=No
.  endif
.else
CLEANDEPENDS?=No
.endif
NOMANCOMPRESS?=	Yes
DEF_UMASK?=		022

.if exists(${.CURDIR}/Makefile.${ARCH})
.include "${.CURDIR}/Makefile.${ARCH}"
.endif

# These need to be absolute since we don't know how deep in the ports
# tree we are and thus can't go relative.  They can, of course, be overridden
# by individual Makefiles or local system make configuration.
PORTSDIR?=		/usr/ports
LOCALBASE?=		${DESTDIR}/usr/local
X11BASE?=		${DESTDIR}/usr/X11R6
DISTDIR?=		${PORTSDIR}/distfiles
.if defined(DIST_SUBDIR)
FULLDISTDIR?=	${DISTDIR}/${DIST_SUBDIR}
.else
FULLDISTDIR?=	${DISTDIR}
.endif
PACKAGES?=		${PORTSDIR}/packages/${ARCH}
TEMPLATES?=		${PORTSDIR}/infrastructure/templates

CDROM_PACKAGES?=	${PORTSDIR}/cdrom-packages/${ARCH}
FTP_PACKAGES?=		${PORTSDIR}/ftp-packages/${ARCH}

.if exists(${.CURDIR}/patches.${ARCH})
PATCHDIR?=		${.CURDIR}/patches.${ARCH}
.else
PATCHDIR?=		${.CURDIR}/patches
.endif

PATCH_LIST?=    patch-*

.if exists(${.CURDIR}/scripts.${ARCH})
SCRIPTDIR?=		${.CURDIR}/scripts.${ARCH}
.else
SCRIPTDIR?=		${.CURDIR}/scripts
.endif

.if exists(${.CURDIR}/files.${ARCH})
FILESDIR?=		${.CURDIR}/files.${ARCH}
.else
FILESDIR?=		${.CURDIR}/files
.endif

.if exists(${.CURDIR}/pkg.${ARCH})
PKGDIR?=		${.CURDIR}/pkg.${ARCH}
.else
PKGDIR?=		${.CURDIR}/pkg
.endif

PREFIX?=		${LOCALBASE}

# where configuration files should go
SYSCONFDIR?=	/etc
.if defined(USE_GMAKE)
BUILD_DEPENDS+=		${GMAKE}:devel/gmake
MAKE_PROGRAM=		${GMAKE}
.else
MAKE_PROGRAM=		${MAKE}
.endif
.if defined(USE_AUTOCONF)
GNU_CONFIGURE= Yes
BUILD_DEPENDS+=		${AUTOCONF}:devel/autoconf
AUTOCONF_DIR?=${WRKSRC}
# missing ?= not an oversight
AUTOCONF_ENV=PATH=${PORTPATH}
.endif
.if defined(USE_LIBTOOL)
LIBTOOL?=			${LOCALBASE}/bin/libtool
BUILD_DEPENDS+=		${LIBTOOL}:devel/libtool
CONFIGURE_ENV+=		LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
MAKE_ENV+=			LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
.endif
.if defined(USE_MOTIF) && !defined(HAVE_MOTIF) && !defined(REQUIRES_MOTIF)
LIB_DEPENDS+=		Xm.:x11/lesstif
.endif

.if exists(${PORTSDIR}/../Makefile.inc)
.include "${PORTSDIR}/../Makefile.inc"
.endif

SUBPACKAGE?=

_EXTRACT_COOKIE=	${WRKDIR}/.extract_done
_PATCH_COOKIE=		${WRKDIR}/.patch_done
_DISTPATCH_COOKIE=	${WRKDIR}/.distpatch_done
_PREPATCH_COOKIE=	${WRKDIR}/.prepatch_done
.if ${FAKE:U} == "YES"
_FAKE_COOKIE=		${WRKINST}/.fake_done
_INSTALL_PRE_COOKIE=${WRKINST}/.install_started
.elif defined(SEPARATE_BUILD)
_INSTALL_PRE_COOKIE=${WRKBUILD}/.install_started
.else
_INSTALL_PRE_COOKIE=${WRKDIR}/.install_started
_FAKE_COOKIE=		${WRKDIR}/.fake_done
.endif
.if defined(SEPARATE_BUILD)
_CONFIGURE_COOKIE=	${WRKBUILD}/.configure_done
_INSTALL_COOKIE=	${WRKBUILD}/.install_done
_BUILD_COOKIE=		${WRKBUILD}/.build_done
_PACKAGE_COOKIE=	${WRKBUILD}/.package_done${SUBPACKAGE}
.else
_CONFIGURE_COOKIE=	${WRKDIR}/.configure_done
_INSTALL_COOKIE=	${WRKDIR}/.install_done
_BUILD_COOKIE=		${WRKDIR}/.build_done
_PACKAGE_COOKIE=	${WRKDIR}/.package_done${SUBPACKAGE}
.endif

_ALL_COOKIES=${_EXTRACT_COOKIE} ${_PATCH_COOKIE} ${_CONFIGURE_COOKIE} \
${_INSTALL_PRE_COOKIE} ${_BUILD_COOKIE} ${_PACKAGE_COOKIE} \
${_DISTPATCH_COOKIE} ${_PREPATCH_COOKIE} ${_FAKE_COOKIE} ${_SUBPACKAGE_COOKIES}

_MAKE_COOKIE=touch -f

# Miscellaneous overridable commands:
GMAKE?=			gmake
AUTOCONF?=		autoconf
XMKMF?=			xmkmf -a
XMKMF+=			-DPorts


# Compatibility game
MD5_FILE?=		${FILESDIR}/md5
CHECKSUM_FILE?=	${MD5_FILE}

# Don't touch !!! Used for generating checksums.
_CIPHERS=		sha1 rmd160 md5 

# This is the one you can override
PREFERRED_CIPHERS?= ${_CIPHERS}

PORTPATH?= /usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin:${X11BASE}/bin

# Add any COPTS to CFLAGS.  Note: programs that use imake do not
# use CFLAGS!  Also, many (most?) ports hard code CFLAGS, ignoring
# what we pass in.
CFLAGS+=		${COPTS}

MAKE_FLAGS?=	
.if !defined(FAKE_FLAGS)
FAKE_FLAGS=DESTDIR=${WRKINST}
.  if defined(GNU_CONFIGURE)
FAKE_FLAGS+=	AM_MAKEFLAGS='DESTDIR=${WRKINST}'
.  endif
.endif

MAKE_FILE?=		Makefile
MAKE_ENV+=		PATH=${PORTPATH} PREFIX=${PREFIX} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} MOTIFLIB="${MOTIFLIB}" CFLAGS="${CFLAGS}"

FETCH_CMD?=		/usr/bin/ftp

# By default, distfiles have no restrictions placed on them
MIRROR_DISTFILE?=	Yes

DISTORIG?=	.bak.orig
PATCH?=			/usr/bin/patch
PATCH_STRIP?=	-p0
PATCH_DIST_STRIP?=	-p0
.if defined(PATCH_DEBUG)
PATCH_DEBUG_TMP=	Yes
PATCH_ARGS?=	-d ${WRKDIST} -E ${PATCH_STRIP}
PATCH_DIST_ARGS?=	-b ${DISTORIG} -d ${WRKDIST} -E ${PATCH_DIST_STRIP}
.else
PATCH_DEBUG_TMP=	No
PATCH_ARGS?=	-d ${WRKDIST} --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_ARGS?=	-b ${DISTORIG} -d ${WRKDIST} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif
.if defined(BATCH)
PATCH_ARGS+=		--batch
PATCH_DIST_ARGS+=	--batch
.endif

.if defined(PATCH_CHECK_ONLY)
PATCH_ARGS+=	-C
PATCH_DIST_ARGS+=	-C
.endif

.if exists(/bin/tar)
TAR?=	/bin/tar
.else
TAR?=	/usr/bin/tar
.endif
UNZIP?=	unzip
BZIP2?=	bzip2

.if defined(USE_ZIP)
BUILD_DEPENDS+=		${UNZIP}:archivers/unzip
EXTRACT_CMD?=		${UNZIP}
EXTRACT_SUFX?=		.zip
EXTRACT_BEFORE_ARGS?=  -q
EXTRACT_AFTER_ARGS?=   -d ${WRKDIR}
.else
# common tar case

EXTRACT_AFTER_ARGS?=	| ${TAR} -xf -
EXTRACT_BEFORE_ARGS?=	-dc

.  if defined(USE_BZIP2)
BUILD_DEPENDS+=		${BZIP2}:archivers/bzip2
EXTRACT_CMD?=		${BZIP2}
EXTRACT_SUFX?=		.tar.bz2
.  else
EXTRACT_CMD?=		${GZIP_CMD}
EXTRACT_SUFX?=		.tar.gz
.  endif

.endif

MAKE_ENV+=	EXTRA_SYS_MK_INCLUDES="<bsd.own.mk>"


.if defined(OBJMACHINE)
WRKDIR?=		${.CURDIR}/work${_FEXT}.${MACHINE_ARCH}
.else
.  if defined(SEPARATE_BUILD) && ${SEPARATE_BUILD:L:Mflavored}
WRKDIR?=		${.CURDIR}/work
.  else
WRKDIR?=		${.CURDIR}/work${_FEXT}
.  endif
.endif

WRKDIST?=		${WRKDIR}/${DISTNAME}

WRKSRC?=	   ${WRKDIST}

.if defined(SEPARATE_BUILD)
WRKBUILD?=		${WRKDIR}/build-${ARCH}${_FEXT}
.else
WRKBUILD?=		${WRKSRC}
.endif

.if defined(WRKOBJDIR)
__canonical_PORTSDIR!=	cd ${PORTSDIR}; pwd -P
__canonical_CURDIR!=	cd ${.CURDIR}; pwd -P
PORTSUBDIR=		${__canonical_CURDIR:S,${__canonical_PORTSDIR}/,,}
.endif

# A few aliases for *-install targets
INSTALL_PROGRAM= \
	${INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}
INSTALL_SCRIPT= \
	${INSTALL} ${INSTALL_COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}
INSTALL_DATA= \
	${INSTALL} ${INSTALL_COPY} -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE}
INSTALL_MAN= \
	${INSTALL} ${INSTALL_COPY} -o ${MANOWN} -g ${MANGRP} -m ${MANMODE}

# DIRMODE lives in bsd.own.mk, but only starting from OpenBSD 2.7 !
DIRMODE?=755

INSTALL_PROGRAM_DIR= \
	${INSTALL} -d -o ${BINOWN} -g ${BINGRP} -m ${DIRMODE}
INSTALL_SCRIPT_DIR= \
	${INSTALL_PROGRAM_DIR}
INSTALL_DATA_DIR= \
	${INSTALL} -d -o ${SHAREOWN} -g ${SHAREGRP} -m ${DIRMODE}
INSTALL_MAN_DIR= \
	${INSTALL} -d -o ${MANOWN} -g ${MANGRP} -m ${DIRMODE}

INSTALL_MACROS=	BSD_INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			BSD_INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			BSD_INSTALL_DATA="${INSTALL_DATA}" \
			BSD_INSTALL_MAN="${INSTALL_MAN}" \
			BSD_INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
			BSD_INSTALL_SCRIPT_DIR="${INSTALL_SCRIPT_DIR}" \
			BSD_INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			BSD_INSTALL_MAN_DIR="${INSTALL_MAN_DIR}"
MAKE_ENV+=	${INSTALL_MACROS}
SCRIPTS_ENV+=	${INSTALL_MACROS}

# The user can override the NO_PACKAGE by specifying this from
# the make command line
.if defined(FORCE_PACKAGE)
.undef NO_PACKAGE
.endif

# Support architecture and flavor dependent packing lists
#
SED_PLIST?=

FLAVOR?=

# Build _FEXT, checking that no flavors are misspelled
_FEXT:=
.if defined(FLAVORS)
.  if defined(FLAVOR)
.    for _i in ${FLAVOR:L}
.      if empty(FLAVORS:L:M${_i})
.BEGIN:
	@echo >&2 "Unknown flavor: ${_i}"
	@echo >&2 "Possible flavors are: ${FLAVORS}"
	@exit 1
.      endif
.    endfor
.  endif
# Create the basic sed substitution pipeline for fragments
# (applies only to PLIST for now)
.  for _i in ${FLAVORS:L}
.    if empty(FLAVOR:L:M${_i})
SED_PLIST+=|sed -e '/^!%%${_i}%%$$/r${PKGDIR}/PFRAG.no-${_i}' -e '//d' -e '/^%%${_i}%%$$/d'
.    else
_FEXT:=${_FEXT}-${_i}
SED_PLIST+=|sed -e '/^!%%${_i}%%$$/d' -e '/^%%${_i}%%$$/r${PKGDIR}/PFRAG.${_i}' -e '//d'
.    endif
.  endfor
.endif

# Create the generic variable substitution list, from subst vars
SUBST_VARS+=ARCH HOMEPAGE PREFIX
_SED_SUBST=sed
.for _v in ${SUBST_VARS}
_SED_SUBST+=-e 's,$${${_v}},${${_v}},g'
.endfor
_SED_SUBST+=-e 's,$${FLAVORS},${_FEXT},g' -e 's,$$\\,$$,g'
# and append it to the PLIST substitution pipeline
SED_PLIST+=|${_SED_SUBST}

# compatibility kludge
.if !defined(PLIST) && exists(${PKGDIR}/PLIST.sed${SUBPACKAGE})
PLIST=${PKGDIR}/PLIST.sed${SUBPACKAGE}
_SED_SUBST+=-e 's/@ARCH@/${ARCH}/g' -e 's/@FLAVORS@/${_FEXT}/g'
.endif

# find out the most appropriate PLIST  source
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${_FEXT}.${ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${_FEXT}.${ARCH}
.endif
.if !defined(PLIST) && defined(NO_SHARED_LIBS) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${_FEXT}.noshared)
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${_FEXT}.noshared
.endif
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${_FEXT})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${_FEXT}
.endif
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.${ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.${ARCH}
.endif
.if !defined(PLIST) && defined(NO_SHARED_LIBS) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.noshared)
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.noshared
.endif
PLIST?=		${PKGDIR}/PLIST${SUBPACKAGE}

# Likewise for DESCR/MESSAGE/COMMENT
.if !defined(COMMENT)
.  if exists(${PKGDIR}/COMMENT${SUBPACKAGE}${_FEXT})
COMMENT=${PKGDIR}/COMMENT${SUBPACKAGE}${_FEXT}
.  else
COMMENT=	${PKGDIR}/COMMENT${SUBPACKAGE}
.  endif
.endif

.if exists(${PKGDIR}/MESSAGE${SUBPACKAGE})
MESSAGE?= ${PKGDIR}/MESSAGE${SUBPACKAGE}
.endif

DESCR?=		${PKGDIR}/DESCR${SUBPACKAGE}

# And create the actual files from sources
${WRKBUILD}/PLIST${SUBPACKAGE}: ${PLIST}
.  if defined(NO_SHARED_LIBS)
	@sed -e '/^%%!SHARED%%$$/r${PKGDIR}/PFRAG.no-shared${SUBPACKAGE}' \
		-e '//d' -e '/^%%SHARED%%$$/d' <$? \
		${SED_PLIST} >$@.tmp && mv -f $@.tmp $@
.  else
	@sed -e '/^%%!SHARED%%$$/d' \
		-e '/^%%SHARED%%$$/r${PKGDIR}/PFRAG.shared${SUBPACKAGE}' -e '//d' <$? \
		${SED_PLIST} >$@.tmp && mv -f $@.tmp $@
.  endif

${WRKBUILD}/DESCR${SUBPACKAGE}: ${DESCR}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@

.if defined(MESSAGE)
${WRKBUILD}/MESSAGE${SUBPACKAGE}: ${MESSAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.endif

PKG_CMD?=		/usr/sbin/pkg_create
PKG_DELETE?=	/usr/sbin/pkg_delete
_SORT_DEPENDS?=tsort|tail -r

# Fill out package command, and package dependencies
_PKG_PREREQ= ${WRKBUILD}/PLIST${SUBPACKAGE} ${WRKBUILD}/DESCR${SUBPACKAGE} ${COMMENT}
# Note that if you override PKG_ARGS, you will not get correct dependencies
.if !defined(PKG_ARGS)
PKG_ARGS= -v -c '${COMMENT}' -d ${WRKBUILD}/DESCR${SUBPACKAGE}
PKG_ARGS+=-f ${WRKBUILD}/PLIST${SUBPACKAGE} -p ${PREFIX} 
PKG_ARGS+=-P "`cd ${.CURDIR} && ${MAKE} SUBPACKAGE='${SUBPACKAGE}' package-depends|${_SORT_DEPENDS}`"
.  if exists(${PKGDIR}/INSTALL${SUBPACKAGE})
PKG_ARGS+=		-i ${PKGDIR}/INSTALL${SUBPACKAGE}
_PKG_PREREQ+=${PKGDIR}/INSTALL${SUBPACKAGE}
.  endif
.  if exists(${PKGDIR}/DEINSTALL${SUBPACKAGE})
PKG_ARGS+=		-k ${PKGDIR}/DEINSTALL${SUBPACKAGE}
_PKG_PREREQ+=${PKGDIR}/DEINSTALL${SUBPACKAGE}
.  endif
.  if exists(${PKGDIR}/REQ${SUBPACKAGE})
PKG_ARGS+=		-r ${PKGDIR}/REQ${SUBPACKAGE}
_PKG_PREREQ+=${PKGDIR}/REQ${SUBPACKAGE}
.  endif
.  if defined(MESSAGE)
PKG_ARGS+=		-D ${WRKBUILD}/MESSAGE${SUBPACKAGE}
_PKG_PREREQ+=${WRKBUILD}/MESSAGE${SUBPACKAGE}
.  endif
.endif
.if ${FAKE:U} == "YES"
PKG_ARGS+=		-s ${WRKINST}${PREFIX}
.endif

PKG_SUFX?=		.tgz
# where pkg_add records its dirty deeds.
PKG_DBDIR?=		/var/db/pkg

# shared/dynamic motif libs
.if defined(USE_MOTIF) || defined(HAVE_MOTIF)
.  if defined(MOTIF_STATIC)
MOTIFLIB?=	${X11BASE}/lib/libXm.a
.  else
MOTIFLIB?=	-L${X11BASE}/lib -lXm
.  endif
.endif

CHMOD?=		/bin/chmod
CHOWN?=		/usr/sbin/chown
GUNZIP_CMD?=	/usr/bin/gunzip -f
GZCAT?=		/usr/bin/gzcat
GZIP?=		-9
GZIP_CMD?=	/usr/bin/gzip -nf ${GZIP}
LDCONFIG?=	[ ! -x /sbin/ldconfig ] || /sbin/ldconfig
M4?=		/usr/bin/m4
STRIP?=		/usr/bin/strip

# Autoconf scripts MAY tend to use bison by default otherwise
YACC?=yacc
# XXX ${SETENV} is needed in front of var=value lists whenever the next
# command is expanded from a variable, as this could be a shell construct
SETENV?=	/usr/bin/env -i
SH?=		/bin/sh

# Used to print all the '===>' style prompts - override this to turn them off.
ECHO_MSG?=		echo

# XXX
_DEPEND_ECHO?=		echo

ALL_TARGET?=		all
INSTALL_TARGET?=	install

.if defined(USE_IMAKE) && !defined(NO_INSTALL_MANPAGES)
INSTALL_TARGET+=	install.man
.endif

FAKE_TARGET ?= ${INSTALL_TARGET}

# basic master sites configuration

.if exists(${PORTSDIR}/infrastructure/db/network.conf)
.include "${PORTSDIR}/infrastructure/db/network.conf"
.else
.include "${PORTSDIR}/infrastructure/templates/network.conf.template"
.endif
# Where to put distfiles that don't have any other master site
# ;;; This is referenced in a few Makefiles -- I'd like to get rid of it
#
MASTER_SITE_LOCAL?= \
	ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/LOCAL_PORTS/ \
	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/LOCAL_PORTS/

# Empty declarations to avoid "variable XXX is recursive" errors
MASTER_SITES?=
# Substitute subdirectory names in intermediate form
_MASTER_SITES:=		${MASTER_SITES:S@%SUBDIR%@${MASTER_SITE_SUBDIR}@}
# I guess we're in the master distribution business! :)  As we gain mirror
# sites for distfiles, add them to this list.
.if !defined(MASTER_SITE_OVERRIDE)
MASTER_SITES:=	${_MASTER_SITES} ${MASTER_SITE_BACKUP}
.else
MASTER_SITES:=	${MASTER_SITE_OVERRIDE} ${_MASTER_SITES}
.endif

# _SITE_SELECTOR chooses the value of sites based on select.
_SITE_SELECTOR=case $$select in


.for _I in 0 1 2 3 4 5 6 7 8 9
.  if defined(MASTER_SITES${_I})
_MASTER_SITES${_I}:=	${MASTER_SITES${_I}:S@%SUBDIR%@${MASTER_SITE_SUBDIR}@}
.    if !defined(MASTER_SITE_OVERRIDE)
MASTER_SITES${_I}:=	${_MASTER_SITES${_I}} ${MASTER_SITE_BACKUP}
.    else
MASTER_SITES${_I}:= ${MASTER_SITE_OVERRIDE} ${_MASTER_SITES${_I}}
.    endif
_SITE_SELECTOR+=*:${_I}) sites="${MASTER_SITES${_I}}";;
.  endif
.endfor
_SITE_SELECTOR+=*) sites="${MASTER_SITES}";; esac


# OpenBSD code to handle ports distfiles on a CDROM.  The distfiles
# are located in /cdrom/distfiles/${DIST_SUBDIR}/ (assuming that the
# CDROM is mounted on /cdrom).
#
.if exists(/cdrom/distfiles)
CDROM_SITE:=	/cdrom/distfiles/${DIST_SUBDIR}
.  if defined(FETCH_SYMLINK_DISTFILES)
CDROM_COPY:=	ln
CDROM_OPT=		-s
.  else
CDROM_COPY:=	cp
CDROM_OPT=		-f
.  endif
.endif

.if defined(CDROM_SITE)
.  if defined(FETCH_SYMLINK_DISTFILES)
_CDROM_OVERRIDE=if ln -s ${CDROM_SITE}/$$f .; then exit 0; fi;
.  else
_CDROM_OVERRIDE=if cp -f ${CDROM_SITE}/$$f .; then exit 0; fi;
.  endif
.else
_CDROM_OVERRIDE=:
.endif

# Derive names so that they're easily overridable.
DISTFILES?=		${DISTNAME}${EXTRACT_SUFX}
PKGNAME?=		${DISTNAME}${SUBPACKAGE}
PKGNAME:=${PKGNAME}${_FEXT}

_EVERYTHING=${DISTFILES}
_DISTFILES=	${DISTFILES:C/:[0-9]$//}
ALLFILES=	${_DISTFILES}

.if defined(PATCHFILES)
_PATCHFILES=${PATCHFILES:C/:[0-9]$//}
_EVERYTHING+=${PATCHFILES}
ALLFILES+=	${_PATCHFILES}
.endif

.if make(makesum) || make(addsum) || make(list-distfiles) || defined(__FETCH_ALL)
.  if defined(SUPDISTFILES)
_EVERYTHING+= ${SUPDISTFILES}
ALLFILES+= ${SUPDISTFILES:C/:[0-9]$//}
.  endif
.endif

CKSUMFILES=
# First, remove duplicates
.for _file in ${ALLFILES}
.  if empty(CKSUMFILES:M${_file})
CKSUMFILES+=${_file}
.  endif
.endfor
ALLFILES:=${CKSUMFILES}

.if defined(IGNOREFILES)
.  for _file in ${IGNOREFILES}
CKSUMFILES:=${CKSUMFILES:N${_file}}
.  endfor
.endif

# List of all files, with ${DIST_SUBDIR} in front.  Used for checksum.
.if defined(DIST_SUBDIR)
_CKSUMFILES=	${CKSUMFILES:S/^/${DIST_SUBDIR}\//}
_IGNOREFILES=	${IGNOREFILES:S/^/${DIST_SUBDIR}\//}
.else
_CKSUMFILES=	${CKSUMFILES}
_IGNOREFILES=	${IGNOREFILES}
.endif

# This is what is actually going to be extracted, and is overridable
#  by user.
EXTRACT_ONLY?=	${_DISTFILES}

# Documentation
MAINTAINER?=	ports@openbsd.org

.if !defined(CATEGORIES)
.BEGIN:
	@echo "CATEGORIES is mandatory."
	@exit 1
.endif

PKGREPOSITORYSUBDIR?=	All
PKGREPOSITORY?=		${PACKAGES}/${PKGREPOSITORYSUBDIR}
PKGFILE?=		${PKGREPOSITORY}/${PKGNAME}${PKG_SUFX}

CONFIGURE_STYLE?=

CONFIGURE_SCRIPT?=	configure
.if defined(SEPARATE_BUILD)
_CONFIGURE_SCRIPT=${WRKSRC}/${CONFIGURE_SCRIPT}
.else
_CONFIGURE_SCRIPT=./${CONFIGURE_SCRIPT}
.endif
CONFIGURE_ENV+=		PATH=${PORTPATH}

.if defined(GNU_CONFIGURE)
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}
HAS_CONFIGURE=		Yes
.endif

.if defined(NO_SHARED_LIBS)
CONFIGURE_SHARED?=	--disable-shared
.else
CONFIGURE_SHARED?=	--enable-shared
.endif

# Passed to configure invocations, and user scripts
SCRIPTS_ENV+= CURDIR=${.CURDIR} DISTDIR=${DISTDIR} \
          PATH=${PORTPATH} WRKDIR=${WRKDIR} WRKDIST=${WRKDIST} \
		  WRKSRC=${WRKSRC} WRKBUILD=${WRKBUILD} \
		  PATCHDIR=${PATCHDIR} SCRIPTDIR=${SCRIPTDIR} FILESDIR=${FILESDIR} \
		  PORTSDIR=${PORTSDIR} DEPENDS="${DEPENDS}" \
		  PREFIX=${PREFIX} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}

.if defined(BATCH)
SCRIPTS_ENV+=	BATCH=yes
.endif

.if ${FAKE:U} == "YES" && !defined(TRUEPREFIX)
MANPREFIX?=  ${WRKINST}${PREFIX}
CATPREFIX?=  ${WRKINST}${PREFIX}
.else
MANPREFIX?=	${PREFIX}
CATPREFIX?=	${PREFIX}
.endif

.for sect in 1 2 3 4 5 6 7 8 9 L N
MAN${sect}PREFIX?=	${MANPREFIX}
CAT${sect}PREFIX?=	${CATPREFIX}
.endfor

MANLANG?=	""	# english only by default

.for lang in ${MANLANG}

.  for sect in 1 2 3 4 5 6 7 8 9 L N
.    if defined(MAN${sect})
_MANPAGES+=	${MAN${sect}:S%^%${MAN${sect}PREFIX}/man/${lang}/man${sect:L}/%}
.    endif
.    if defined(CAT${sect})
_CATPAGES+=	${CAT${sect}:S%^%${CAT${sect}PREFIX}/man/${lang}/cat${sect:L}/%}
.    endif
.  endfor
.endfor

.MAIN: all

################################################################
# Many ways to disable a port.
#
# If we're in BATCH mode and the port is interactive, or we're
# in interactive mode and the port is non-interactive, skip all
# the important targets.  The reason we have two modes is that
# one might want to leave a build in BATCH mode running
# overnight, then come back in the morning and do _only_ the
# interactive ones that required your intervention.
#
# Don't attempt to build ports that require Motif if you don't
# have Motif.
#
# Ignore ports that can't be resold if building for a CDROM.
#
# Don't build a port if it's restricted and we don't want to get
# into that.
#
# Don't build a port if it's broken.
#
# Don't build a port if it comes with the base system.
################################################################

.if !defined(NO_IGNORE)
.  if (defined(IS_INTERACTIVE) && defined(BATCH))
IGNORE=	"is an interactive port"
.  elif (!defined(IS_INTERACTIVE) && defined(INTERACTIVE))
IGNORE=	"is not an interactive port"
.  elif (defined(REQUIRES_MOTIF) && !defined(HAVE_MOTIF))
IGNORE=	"requires Motif"
.  elif (defined(MOTIF_ONLY) && !defined(REQUIRES_MOTIF))
IGNORE=	"does not require Motif"
.  elif (defined(NO_CDROM) && defined(FOR_CDROM))
IGNORE=	"may not be placed on a CDROM: ${NO_CDROM}"
.  elif (defined(RESTRICTED) && defined(NO_RESTRICTED))
IGNORE=	"is restricted: ${RESTRICTED}"
.  elif ((defined(USE_IMAKE) || defined(USE_X11)) && !exists(${X11BASE}))
IGNORE=	"uses X11, but ${X11BASE} not found"
.  elif defined(BROKEN)
IGNORE=	"is marked as broken: ${BROKEN}"
.  elif defined(ONLY_FOR_ARCHS)
.    for __ARCH in ${MACHINE_ARCH} ${ARCH}
.      if !empty(ONLY_FOR_ARCHS:M${__ARCH})
_ARCH_OK=1
.      endif
.    endfor
.    if !defined(_ARCH_OK)
.      if ${MACHINE_ARCH} == "${ARCH}"
IGNORE= "is only for ${ONLY_FOR_ARCHS}, not ${MACHINE_ARCH}"
.      else
IGNORE= "is only for ${ONLY_FOR_ARCHS}, not ${MACHINE_ARCH} \(${ARCH}\)"
.      endif
.    endif
.  endif
.  if !defined(IGNORE) && defined(COMES_WITH)
.    if ( ${OPSYS_VER} >= ${COMES_WITH} )
IGNORE= "-- ${PKGNAME:C/-[0-9].*//g} comes with ${OPSYS} as of release ${COMES_WITH}"
.    endif
.  endif

.endif		# NO_IGNORE

.if defined(IGNORE) && !defined(NO_IGNORE)
fetch checksum extract patch configure all build install \
uninstall deinstall package:
.  if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${PKGNAME} ${IGNORE}."
.  endif

.else 


# Most standard port targets create a cookie to avoid being re-run.
#
# fetch is an exception, as it uses the files it fetches as `cookies',
# and it's run by checksum, so in essence it's a sub-goal of extract,
# in normal use.
# 
# Besides, fetch can't create cookies, as it does not have WRKDIR available
# in the first place.
#
# IMPORTANT: pre-fetch/do-fetch/post-fetch MUST be designed so that they
# can be run several times in a row.

fetch: fetch-depends
# You need to define LICENCE_TYPE and PERMIT_* to make the warning go away.
# See ports/infrastructure/templates/Makefile.template
.  if !defined(PERMIT_PACKAGE_CDROM) || !defined(PERMIT_PACKAGE_FTP) || \
    !defined(PERMIT_DISTFILES_CDROM) || !defined(PERMIT_DISTFILES_FTP)
	@echo >&2 "*** The licensing info for this port is incomplete."
	@echo >&2 "*** Please notify the OpenBSD port maintainer <${MAINTAINER}>"
.  endif
.  if target(pre-fetch)
	@cd ${.CURDIR} && exec ${MAKE} pre-fetch
.  endif
.  if target(do-fetch)
	@cd ${.CURDIR} && exec ${MAKE} do-fetch
.  else
# What FETCH normally does:
.    if !empty(ALLFILES)
	@cd ${.CURDIR} && exec ${MAKE} ${ALLFILES:S@^@${FULLDISTDIR}/@}
.    endif
# End of FETCH
.  endif
.  if target(post-fetch)
	@cd ${.CURDIR} && exec ${MAKE} post-fetch
.  endif


# Set to true to try to retrieve older distfiles from ftp.openbsd.org if
# checksums no longer match.

REFETCH?=false

checksum: fetch
.  if ! (defined(NO_CHECKSUM) || defined(NO_EXTRACT))
	@if [ ! -f ${CHECKSUM_FILE} ]; then \
	  ${ECHO_MSG} ">> No checksum file."; \
	else \
	  cd ${DISTDIR}; OK=true; list=''; \
		for file in ${_CKSUMFILES}; do \
		  for cipher in ${PREFERRED_CIPHERS}; do \
			set -- `grep -i "^$$cipher ($$file)" ${CHECKSUM_FILE}` && break || \
			  ${ECHO_MSG} ">> No $$cipher checksum recorded for $$file."; \
		  done; \
		  case "$$4" in \
			"") \
			  ${ECHO_MSG} ">> No checksum recorded for $$file."; \
			  OK=false;; \
			"IGNORE") \
			  echo ">> Checksum for $$file is set to IGNORE in md5 file even though"; \
			  echo "   the file is not in the "'$$'"{IGNOREFILES} list."; \
			  OK=false;; \
			*) \
			  CKSUM=`$$cipher < $$file`; \
			  case "$$CKSUM" in \
			  	"$$4") \
				  ${ECHO_MSG} ">> Checksum OK for $$file. ($$cipher)";; \
				*) \
				  echo ">> Checksum mismatch for $$file. ($$cipher)"; \
				  list="$$list $$file $$cipher $$4"; \
				  OK=false;; \
			  esac;; \
		  esac; \
		done; \
		set --; \
		for file in ${_IGNOREFILES}; do \
		  set -- `grep "($$file)" ${CHECKSUM_FILE}` || \
			  { echo ">> No checksum recorded for $$file, file is in "'$$'"{IGNOREFILES} list." && \
			  OK=false; } ; \
		  case "$$4" in \
		  	"IGNORE") : ;; \
			*) \
			  echo ">> Checksum for $$file is not set to IGNORE in md5 file even though"; \
			  echo "   the file is in the "'$$'"{IGNOREFILES} list."; \
			  OK=false;; \
		  esac; \
		done; \
		if ! $$OK; then \
		  if ${REFETCH}; then \
		  	cd ${.CURDIR} && ${MAKE} refetch PROBLEMS="$$list"; \
		  else \
			echo "Make sure the Makefile and checksum file (${CHECKSUM_FILE})"; \
			echo "are up to date.  If you want to override this check, type"; \
			echo "\"make NO_CHECKSUM=Yes [other args]\"."; \
			exit 1; \
		  fi; \
		fi ; \
  fi
.  endif

refetch:
	@set -- ${PROBLEMS}; \
	 while [ $$# -gt 0 ]; do \
		file=$$1; \
		cipher=$$2; \
		value=$$3; \
		shift; shift; shift; \
		rm ${FULLDISTDIR}/$$file; \
		cd ${.CURDIR} && ${MAKE} ${FULLDISTDIR}/$$file \
			MASTER_SITE_OVERRIDE="ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/$$cipher/$$value/"; \
	done;
	cd ${.CURDIR} && exec ${MAKE} checksum REFETCH=false



# Normal user-mode targets are PHONY targets, e.g., don't create the
# corresponding file. However, there is nothing phony about the cookie.

# The cookie's recipe hold the real rule for each of those targets.

extract: ${_EXTRACT_COOKIE}
patch: ${_PATCH_COOKIE}
distpatch: ${_DISTPATCH_COOKIE}
configure: ${_CONFIGURE_COOKIE}
all build: ${_BUILD_COOKIE}
.if defined(ALWAYS_PACKAGE)
install: ${_INSTALL_COOKIE} ${_PACKAGE_COOKIE}
.else
install: ${_INSTALL_COOKIE}
.endif
fake: ${_FAKE_COOKIE}
package: ${_PACKAGE_COOKIE}


uninstall deinstall:
	@${ECHO_MSG} "===> Deinstalling for ${PKGNAME}"
	@${SUDO} ${PKG_DELETE} -f ${PKGNAME}
	@rm -f ${_INSTALL_COOKIE} ${_PACKAGE_COOKIE} ${_SUBPACKAGE_COOKIES}

.endif # IGNORECMD

.if !defined(DEPENDS_TARGET)
.  if make(reinstall)
DEPENDS_TARGET=	reinstall
.  else
DEPENDS_TARGET=	install
.  endif
.endif

makesum: fetch-all
.if !(defined(NO_CHECKSUM) || defined(NO_EXTRACT))
	@mkdir -p ${FILESDIR} && rm -f ${CHECKSUM_FILE}
	@cd ${DISTDIR} && \
		for cipher in ${_CIPHERS}; do \
			$$cipher ${_CKSUMFILES} >> ${CHECKSUM_FILE}; \
	 done
	@for file in ${_IGNOREFILES}; do \
		echo "MD5 ($$file) = IGNORE" >> ${CHECKSUM_FILE}; \
	done
	@sort -u -o ${CHECKSUM_FILE} ${CHECKSUM_FILE} 
.endif


addsum: fetch-all
.if !(defined(NO_CHECKSUM) || defined(NO_EXTRACT))
	@mkdir -p ${FILESDIR} && touch ${CHECKSUM_FILE}
	@cd ${DISTDIR} && \
	 	for cipher in ${_CIPHERS}; do \
			$$cipher ${_CKSUMFILES} >> ${CHECKSUM_FILE}; \
	 done
	@for file in ${_IGNOREFILES}; do \
		echo "MD5 ($$file) = IGNORE" >> ${CHECKSUM_FILE}; \
	done
	@sort -u -o ${CHECKSUM_FILE} ${CHECKSUM_FILE} 
	@if [ `sed -e 's/\=.*$$//' ${CHECKSUM_FILE} | uniq -d | wc -l` -ne 0 ]; then \
		echo "Inconsistent checksum in ${CHECKSUM_FILE}"; \
		exit 1; \
	else \
		${ECHO_MSG} "${CHECKSUM_FILE} updated okay, don't forget to remove cruft"; \
	fi
.endif


# The real targets. Note that some parts always get run, some parts can be
# disabled, and there are hooks to override behavior.

${_EXTRACT_COOKIE}:
	@cd ${.CURDIR} && exec ${MAKE} checksum build-depends lib-depends misc-depends
.if !defined(NO_EXTRACT)
	@${ECHO_MSG} "===>  Extracting for ${PKGNAME}"
.  if target(pre-extract)
	@cd ${.CURDIR} && exec ${MAKE} pre-extract
.  endif
.  if target(do-extract)
	@cd ${.CURDIR} && exec ${MAKE} do-extract
.  else
# What EXTRACT normally does:
.    if defined(WRKOBJDIR)
	@rm -rf ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT}
	@mkdir -p ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT}
	@if [ ! -L ${WRKDIR} ] || \
	  [ X`readlink ${WRKDIR}` != X${WRKOBJDIR}/${PORTSUBDIR}${_FEXT} ]; then \
		${ECHO_MSG} "${WRKDIR} -> ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT}"; \
		rm -f ${WRKDIR}; \
		ln -sf ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT} ${WRKDIR}; \
	fi
.    else
	@rm -rf ${WRKDIR}
	@mkdir -p ${WRKDIR}
.    endif
	@PATH=${PORTPATH}; \
	for file in ${EXTRACT_ONLY}; do \
		if cd ${WRKDIR} && ${EXTRACT_CMD} ${EXTRACT_BEFORE_ARGS} ${FULLDISTDIR}/$$file ${EXTRACT_AFTER_ARGS}; then : ; \
		else\
			exit 1; \
		fi \
	done
# End of EXTRACT
.  endif
.  if target(post-extract)
	@cd ${.CURDIR} && exec ${MAKE} post-extract
.  endif
.endif

	@${_MAKE_COOKIE} ${_EXTRACT_COOKIE}



# Both distpatch and patch invoke pre-patch, if it's defined.
# Hence it needs special treatment (a specific cookie).
.if target(pre-patch)
${_PREPATCH_COOKIE}:
	@cd ${.CURDIR} && exec ${MAKE} pre-patch
	@${_MAKE_COOKIE} ${_PREPATCH_COOKIE}
.endif



# The real distpatch

${_DISTPATCH_COOKIE}: ${_EXTRACT_COOKIE}
.if !defined(NO_PATCH)
.  if target(pre-patch)
	@cd ${.CURDIR} && exec ${MAKE} ${_PREPATCH_COOKIE}
.  endif
.  if target(do-distpatch)
	@cd ${.CURDIR} && exec ${MAKE} do-distpatch
.  else
# What DISTPATCH normally does
.    if defined(_PATCHFILES)
	@${ECHO_MSG} "===>  Applying distribution patches for ${PKGNAME}"
	@cd ${FULLDISTDIR}; \
	  for i in ${_PATCHFILES}; do \
	  	case ${PATCH_DEBUG_TMP:L} in \
			yes) ${ECHO_MSG} "===>   Applying distribution patch $$i" ;; \
		esac; \
		case $$i in \
			*.Z|*.gz) \
				${GZCAT} $$i | ${PATCH} ${PATCH_DIST_ARGS}; \
				;; \
			*) \
				${PATCH} ${PATCH_DIST_ARGS} < $$i; \
				;; \
		esac; \
	  done
.    endif
# End of DISTPATCH.
.  endif
.  if target(post-distpatch)
	@cd ${.CURDIR} && exec ${MAKE} post-distpatch
.  endif
.endif
	@${_MAKE_COOKIE} ${_DISTPATCH_COOKIE}


# The real patch

${_PATCH_COOKIE}: ${_EXTRACT_COOKIE}
.if !defined(NO_PATCH)
	@${ECHO_MSG} "===>  Patching for ${PKGNAME}"
.  if target(pre-patch)
	@cd ${.CURDIR} && exec ${MAKE} ${_PREPATCH_COOKIE}
.  endif
.  if target(do-patch)
	@cd ${.CURDIR} && exec ${MAKE} do-patch
.  else
# What PATCH normally does:
# XXX test for efficiency, don't bother with distpatch if it's not needed
.    if target(do-distpatch) || target(post-distpatch) || defined(PATCHFILES) 
	@cd ${.CURDIR} && exec ${MAKE} distpatch
.    endif 
	@if cd ${PATCHDIR} 2>/dev/null; then \
		error=0; \
		for i in ${PATCH_LIST}; do \
			case $$i in \
				*.orig|*.rej|*~) \
					${ECHO_MSG} "===>   Ignoring patchfile $$i" ; \
					;; \
				*) \
				    if [ -e $$i ]; then \
						case ${PATCH_DEBUG_TMP:L} in \
							yes) ${ECHO_MSG} "===>   Applying ${OPSYS} patch $$i" ;; \
						esac; \
						${PATCH} ${PATCH_ARGS} < $$i || \
							{ echo "***>   $$i did not apply cleanly"; \
							error=1; }\
					else \
						echo "===>   Can't find patch matching $$i"; \
						if [ -d ${PATCHDIR}/CVS -a "$$i" = \
							"${PATCHDIR}/patch-*" ]; then \
								echo "===>   Perhaps you forgot the -P flag to cvs co or update?"; \
								error=1; \
						fi; \
					fi; \
					;; \
			esac; \
		done;\
		case $$error in 1) exit 1;; esac; \
	fi
# End of PATCH.
.  endif
.  if target(post-patch)
	@cd ${.CURDIR} && exec ${MAKE} post-patch
.  endif
.endif
.if !defined(PATCH_CHECK_ONLY) && defined(USE_AUTOCONF)
	@cd ${AUTOCONF_DIR} && exec ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
.endif
	@${_MAKE_COOKIE} ${_PATCH_COOKIE}


# The real configure

${_CONFIGURE_COOKIE}: ${_PATCH_COOKIE}
.if !defined(NO_CONFIGURE)
	@${ECHO_MSG} "===>  Configuring for ${PKGNAME}"
	@mkdir -p ${WRKBUILD}
.  if target(pre-configure)
	@cd ${.CURDIR} && exec ${MAKE} pre-configure
.  endif
.  if target(do-configure)
	@cd ${.CURDIR} && exec ${MAKE} do-configure
.  else
# What CONFIGURE normally does
	@if [ -f ${SCRIPTDIR}/configure ]; then \
		cd ${.CURDIR} && ${SETENV} ${SCRIPTS_ENV} ${SH} \
		  ${SCRIPTDIR}/configure; \
	fi
.    if ${CONFIGURE_STYLE:L} == "perl"
	@arch=`/usr/bin/perl -e 'use Config; print $$Config{archname}, "\n";'`; \
     cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
     /usr/bin/perl Makefile.PL \
     	PREFIX='$${DESTDIR}${PREFIX}' \
		INSTALLSITELIB='$${DESTDIR}${PREFIX}/libdata/perl5/site_perl' \
		INSTALLSITEARCH="\$${INSTALLSITELIB}/$$arch" \
		INSTALLPRIVLIB='$${DESTDIR}/usr/libdata/perl5' \
		INSTALLARCHLIB="\$${INSTALLPRIVLIB}/$$arch" \
		INSTALLMAN1DIR='$${DESTDIR}${PREFIX}/man/man1' \
		INSTALLMAN3DIR='$${DESTDIR}${PREFIX}/man/man3' \
		INSTALLBIN='$${PREFIX}/bin' \
		INSTALLSCRIPT='$${INSTALLBIN}'
.    endif
.    if defined(HAS_CONFIGURE)
	@cd ${WRKBUILD} && CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS}" \
		CXX="${CXX}" ac_cv_path_CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
		INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
		YACC="${YACC}" \
		${CONFIGURE_ENV} ${_CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}
.    endif
.    if defined(USE_IMAKE)
.      if exists(${X11BASE}/lib/X11/config/ports.cf)
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${XMKMF}
.      else
	@echo >&2 "Error: your X installation is not recent enough"
	@echo >&2 "Update to a more recent version, or use a ports tree"
	@echo >&2 "that predates March 18, 2000"
	@exit 1
.      endif
.    endif
# End of CONFIGURE.
.  endif
.  if target(post-configure)
	@cd ${.CURDIR} && exec ${MAKE} post-configure
.  endif
.endif
	@${_MAKE_COOKIE} ${_CONFIGURE_COOKIE}


# The real build

${_BUILD_COOKIE}: ${_CONFIGURE_COOKIE}
.if !defined(NO_BUILD) 
	@${ECHO_MSG} "===>  Building for ${PKGNAME}"
.  if target(pre-build)
	@cd ${.CURDIR} && exec ${MAKE} pre-build
.  endif
.  if target(do-build)
	@cd ${.CURDIR} && exec ${MAKE} do-build
.  else
# What BUILD normally does:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
# End of BUILD
.  endif
.  if target(post-build)
	@cd ${.CURDIR} && exec ${MAKE} post-build
.  endif
.endif
	@${_MAKE_COOKIE} ${_BUILD_COOKIE}

_FAKE_SETUP=TRUEPREFIX=${PREFIX} PREFIX=${WRKINST}${PREFIX} DESTDIR=${WRKINST}

.if ${FAKE:U} == "YES"
${_FAKE_COOKIE}: ${_BUILD_COOKIE} 
	@${ECHO_MSG} "===>  Faking installation for ${PKGNAME}"
	@if [ `${SH} -c umask` != ${DEF_UMASK} ]; then \
		echo >&2 "Error: your umask is \"`${SH} -c umask`"\".; \
		exit 1; \
	fi
	@${SUDO} install -d -m 755 -o root -g wheel ${WRKINST}
	@${SUDO} mtree -U -e -d -n -p ${WRKINST} \
		-f ${PORTSDIR}/infrastructure/db/fake.mtree  >/dev/null
.  if ${CONFIGURE_STYLE:L} == "perl"
	@${SUDO} mkdir -p ${WRKINST}`/usr/bin/perl -e 'use Config; print $$Config{installarchlib}, "\n";'`
.  endif

.  if target(pre-fake)
	@cd ${.CURDIR} && exec ${SUDO} ${MAKE} pre-fake ${_FAKE_SETUP}
.  endif
	@${SUDO} ${_MAKE_COOKIE} ${_INSTALL_PRE_COOKIE}
.  if target(pre-install)
	@cd ${.CURDIR} && exec ${SUDO} ${MAKE} pre-install ${_FAKE_SETUP}
.  endif
.  if target(do-install)
	@cd ${.CURDIR} && exec ${SUDO} ${MAKE} do-install ${_FAKE_SETUP}
.  else
# What FAKE normally does:
	@cd ${WRKBUILD} && exec ${SUDO} ${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} ${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
# End of FAKE.
.  endif
.  if target(post-install)
	@cd ${.CURDIR} && exec ${SUDO} ${MAKE} post-install ${_FAKE_SETUP}
.  endif
.  if defined(_MANPAGES) || defined(_CATPAGES)
.    if defined(MANCOMPRESSED) && defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Uncompressing manual pages for ${PKGNAME}"
.      for manpage in ${_MANPAGES} ${_CATPAGES}
	@${SUDO} ${GUNZIP_CMD} ${manpage}.gz
.      endfor
.    elif !defined(MANCOMPRESSED) && !defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Compressing manual pages for ${PKGNAME}"
.      for manpage in ${_MANPAGES} ${_CATPAGES}
	@if [ -L ${manpage} ]; then \
		set - `file ${manpage}`; \
		shift `expr $$# - 1`; \
		${SUDO} ln -sf $${1}.gz ${manpage}.gz; \
		${SUDO} rm ${manpage}; \
	else \
		${SUDO} ${GZIP_CMD} ${manpage}; \
	fi
.      endfor
.    endif
.  endif
	@if find ${WRKINST} -type l -ls|fgrep -- '-> ${WRKINST}'; then \
		echo >&2 "*** bad links in ${WRKINST}"; \
		exit 1; \
	fi
	@${SUDO} ${_MAKE_COOKIE} ${_FAKE_COOKIE}

${_INSTALL_COOKIE}:  ${_PACKAGE_COOKIE}
	@cd ${.CURDIR} && exec ${MAKE} run-depends lib-depends DEPENDS_TARGET=package
	@${ECHO_MSG} "===>  Installing ${PKGNAME} from ${PKGFILE}"
# Kludge
.if defined(USE_IMAKE)
	@${SUDO} mkdir -p /usr/local/lib/X11
	@if [ ! -e /usr/local/lib/X11/app-defaults ]; then \
		${SUDO} ln -sf /var/X11/app-defaults /usr/local/lib/X11/app-defaults; \
	fi
.endif
	@${SUDO} ${SETENV} PKG_PATH=${PKGREPOSITORY}:${PKG_PATH} pkg_add ${PKGFILE}
	@${SUDO} ${_MAKE_COOKIE} ${_INSTALL_COOKIE}

.else

${_FAKE_COOKIE}: ${_BUILD_COOKIE}
	@echo 1>&2 "*** ${PKGNAME} does not use fake installation yet"

# The real install, old version
${_INSTALL_COOKIE}: ${_BUILD_COOKIE} 
	@cd ${.CURDIR} && exec ${MAKE} run-depends lib-depends 
.  if !defined(NO_INSTALL)
	@${ECHO_MSG} "===>  Installing for ${PKGNAME}"
# Kludge
.    if defined(USE_IMAKE)
	@mkdir -p /usr/local/lib/X11
	@if [ ! -e /usr/local/lib/X11/app-defaults ]; then \
		ln -sf /var/X11/app-defaults /usr/local/lib/X11/app-defaults; \
	fi
.    endif
.    if !defined(NO_PKG_REGISTER) && !defined(FORCE_PKG_REGISTER)
	@if [ -d ${PKG_DBDIR}/${PKGNAME} -o "X$$(ls -d ${PKG_DBDIR}/${PKGNAME:C/-[0-9].*//g}-* 2> /dev/null)" != "X" ]; then \
		echo "===>  ${PKGNAME} is already installed - perhaps an older version?"; \
		echo "      If so, you may wish to \`\`make deinstall'' and install"; \
		echo "      this port again by \`\`make reinstall'' to upgrade it properly."; \
		echo "      If you really wish to overwrite the old port of ${PKGNAME}"; \
		echo "      without deleting it first, set the variable \"FORCE_PKG_REGISTER\""; \
		echo "      in your environment or the \"make install\" command line."; \
		exit 1; \
	fi
.    endif
	@if [ `${SH} -c umask` != ${DEF_UMASK} ]; then \
		${ECHO_MSG} "===>  Warning: your umask is \"`${SH} -c umask`"\".; \
		${ECHO_MSG} "      If this is not desired, set it to an appropriate value"; \
		${ECHO_MSG} "      and install this port again by \`\`make reinstall''."; \
	fi
	@${_MAKE_COOKIE} ${_INSTALL_PRE_COOKIE}
.    if target(pre-install)
	@cd ${.CURDIR} && exec ${MAKE} pre-install
.    endif
.    if target(do-install)
	@cd ${.CURDIR} && exec ${MAKE} do-install
.    else
# What INSTALL normally does:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${INSTALL_TARGET}
# End of INSTALL.
.    endif
.    if target(post-install)
	@cd ${.CURDIR} && exec ${MAKE} post-install
.    endif
.    if defined(_MANPAGES) || defined(_CATPAGES)
.      if defined(MANCOMPRESSED) && defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Uncompressing manual pages for ${PKGNAME}"
.        for manpage in ${_MANPAGES} ${_CATPAGES}
	@${GUNZIP_CMD} ${manpage}.gz
.        endfor
.      elif !defined(MANCOMPRESSED) && !defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Compressing manual pages for ${PKGNAME}"
.        for manpage in ${_MANPAGES} ${_CATPAGES}
	@if [ -L ${manpage} ]; then \
		set - `file ${manpage}`; \
		shift `expr $$# - 1`; \
		ln -sf $${1}.gz ${manpage}.gz; \
		rm ${manpage}; \
	else \
		${GZIP_CMD} ${manpage}; \
	fi
.          endfor
.      endif
.    endif
.    if defined(${MESSAGE})
	@cat	${WRKBUILD}/MESSAGE${SUBPACKAGE}
.    endif
.    if !defined(NO_PKG_REGISTER)
	@cd ${.CURDIR} && exec ${MAKE} fake-pkg
.    endif
.  endif
	@${_MAKE_COOKIE} ${_INSTALL_COOKIE}

.endif 

_SUBPACKAGE_COOKIES=
.if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.  for _sub in ${MULTI_PACKAGES}

_SUBPACKAGE_COOKIES+= ${_PACKAGE_COOKIE}${_sub}
.    if ${FAKE:U} == "YES"
${_PACKAGE_COOKIE}${_sub}: ${_FAKE_COOKIE}
.    else
${_PACKAGE_COOKIE}${_sub}: ${_INSTALL_COOKIE}
.    endif
	@cd ${.CURDIR} && exec ${MAKE} package SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}'

.  endfor
.endif


.if ${FAKE:U} == "YES"
${_PACKAGE_COOKIE}: ${_FAKE_COOKIE} ${_SUBPACKAGE_COOKIES} ${_PKG_PREREQ}
.else
${_PACKAGE_COOKIE}: ${_INSTALL_COOKIE} ${_SUBPACKAGE_COOKIES} ${_PKG_PREREQ}
.endif
.if !defined(NO_PACKAGE)
.  if target(pre-package)
	@cd ${.CURDIR} && exec ${MAKE} pre-package
.  endif
.  if target(do-package)
	@cd ${.CURDIR} && exec ${MAKE} do-package
.  else
# What PACKAGE normally does:
	@${ECHO_MSG} "===>  Building package for ${PKGNAME}"
	@if [ ! -d ${PKGREPOSITORY} ]; then \
	   if ! mkdir -p ${PKGREPOSITORY}; then \
	      echo ">> Can't create directory ${PKGREPOSITORY}."; \
		  exit 1; \
	   fi; \
	fi
# PLIST should normally hold no duplicates.
# This is left as a warning, because stuff such as @exec %F/%D
# completion may cause legitimate dups.
	@duplicates=`sort <${PLIST}|uniq -d`; \
	case "$${duplicates}" in "");; \
		*) echo "\n*** WARNING *** Duplicates in PLIST:\n$$duplicates\n";; \
	esac
	@cd ${.CURDIR} && \
	  if ${PKG_CMD} ${PKG_ARGS} ${PKGFILE}; then \
	    ${MAKE} package-links; \
	  else \
	    ${MAKE} delete-package; \
	    exit 1; \
	  fi
# End of PACKAGE.
.  endif
.  if target(post-package)
	@cd ${.CURDIR} && exec ${MAKE} post-package
.  endif
.else
.  if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${PKGNAME} may not be packaged: ${NO_PACKAGE}."
.  endif
.endif
.if !defined(PACKAGE_NOINSTALL)
	@${_MAKE_COOKIE} ${_PACKAGE_COOKIE}
.endif

.if !target(fetch-all)
fetch-all:
	@cd ${.CURDIR} && exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes NO_WARNINGS=Yes fetch
.endif

# Separate target for each file fetch will retrieve

.for _F in ${ALLFILES:S@^@${FULLDISTDIR}/@}
${_F}:
# Bug-fix for make/ftp interaction in 2.6
	@if [ -e ${_F} ]; then touch ${_F}; exit 0; fi; \
	mkdir -p ${_F:H}; \
	cd ${_F:H}; \
	select=${_EVERYTHING:M*${_F:S@^${FULLDISTDIR}/@@}\:[0-9]}; \
	f=${_F:S@^${FULLDISTDIR}/@@}; \
	${ECHO_MSG} ">> $$f doesn't seem to exist on this system."; \
	${_CDROM_OVERRIDE}; \
	${_SITE_SELECTOR}; \
	for site in $$sites; do \
		${ECHO_MSG} ">> Attempting to fetch ${_F} from $${site}."; \
		if ${FETCH_CMD} ${FETCH_BEFORE_ARGS} $${site}$$f ${FETCH_AFTER_ARGS}; then \
				exit 0; \
		fi; \
	done; exit 1
.endfor

# This is for the use of sites which store distfiles which others may
# fetch - only fetch the distfile if it is allowed to be
# re-distributed freely
mirror-distfiles:
.if (${MIRROR_DISTFILE:L} == "yes")
	@cd ${.CURDIR} && exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes NO_WARNINGS=Yes fetch
.endif

all-package: ${PKGFILE}
.if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.  for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && exec ${MAKE} ${.TARGET} SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}'
.  endfor
.endif

# Invoke "make cdrom-packages CDROM_PACKAGES=/cdrom/snapshots/packages"
.if defined(PERMIT_PACKAGE_CDROM) && ${PERMIT_PACKAGE_CDROM:L} == "yes"
cdrom-packages: ${CDROM_PACKAGES}/${PKGNAME}${PKG_SUFX}
.else
cdrom-packages:
.endif
.if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.  for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && exec ${MAKE} ${.TARGET} SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}'
.  endfor
.endif

# Invoke "make ftp-packages FTP_PACKAGES=/pub/OpenBSD/snapshots/packages"
.if defined(PERMIT_PACKAGE_FTP) && ${PERMIT_PACKAGE_FTP:L} == "yes"
ftp-packages: ${FTP_PACKAGES}/${PKGNAME}${PKG_SUFX}
.else
ftp-packages:
.endif
.if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.  for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && exec ${MAKE} ${.TARGET} SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}'
.  endfor
.endif


${PKGFILE}:
	@mkdir -p ${PORTSDIR}/logs/${ARCH}
	@cd ${.CURDIR} && exec ${MAKE} package ALWAYS_PACKAGE=Yes 2>&1 | \
		tee ${PORTSDIR}/logs/${ARCH}/${PKGNAME}.log

${FTP_PACKAGES}/${PKGNAME}${PKG_SUFX}: ${PKGFILE}
	@mkdir -p ${FTP_PACKAGES}
	@rm -f ${FTP_PACKAGES}/${PKGNAME}${PKG_SUFX}
	@ln ${PKGFILE} ${FTP_PACKAGES}/${PKGNAME}${PKG_SUFX} 2>/dev/null || \
	cp -p ${PKGFILE} ${FTP_PACKAGES}/${PKGNAME}${PKG_SUFX}

${CDROM_PACKAGES}/${PKGNAME}${PKG_SUFX}: ${PKGFILE}
	@mkdir -p ${CDROM_PACKAGES}
	@rm -f ${CDROM_PACKAGES}/${PKGNAME}${PKG_SUFX}
	@ln ${PKGFILE} ${CDROM_PACKAGES}/${PKGNAME}${PKG_SUFX} 2>/dev/null || \
	cp -p ${PKGFILE} ${CDROM_PACKAGES}/${PKGNAME}${PKG_SUFX}

# list the distribution and patch files used by a port.  Typical
# use is		make ECHO_MSG=: list-distfiles | tee some-file
#
list-distfiles:
	@echo "${PKGNAME}"
	@for file in ${ALLFILES}; do \
		if [ "$$file" != "${EXTRACT_SUFX}" ]; then \
			if [ -z "${DIST_SUBDIR}" ]; then \
				printf "\t$$file\n"; \
			else \
				printf "\t${DIST_SUBDIR}/$$file\n"; \
			fi \
		fi \
	 done
	@echo ""

# Obj
#
.if !target(obj)
obj:
.  if defined(WRKOBJDIR)
	@rm -rf ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT}
	@mkdir -p ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT}
	@if [ ! -L ${WRKDIR} ] || \
	  [ X`readlink ${WRKDIR}` != X${WRKOBJDIR}/${PORTSUBDIR}${_FEXT} ]; then \
		${ECHO_MSG} "${WRKDIR} -> ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT}"; \
		rm -f ${WRKDIR}; \
		ln -sf ${WRKOBJDIR}/${PORTSUBDIR}${_FEXT} ${WRKDIR}; \
	fi
.  else
	@echo ">>"
	@echo ">> Please set the WRKOBJDIR variable before using 'make obj'"
	@echo ">>"
	@exit 1;
.  endif
.endif


# Some support rules for do-package

.if !target(package-links)
package-links:
	@cd ${.CURDIR} && exec ${MAKE} delete-package-links
	@for cat in ${CATEGORIES}; do \
		if [ ! -d ${PACKAGES}/$$cat ]; then \
			if ! mkdir -p ${PACKAGES}/$$cat; then \
				echo ">> Can't create directory ${PACKAGES}/$$cat."; \
				exit 1; \
			fi; \
		fi; \
		ln -s ../${PKGREPOSITORYSUBDIR}/${PKGNAME}${PKG_SUFX} ${PACKAGES}/$$cat; \
	done;
.endif

.if !target(delete-package-links)
delete-package-links:
	@cd ${PACKAGES} && find . -type l -name ${PKGNAME}${PKG_SUFX}|xargs rm -f
.endif

.if !target(delete-package)
delete-package:
	@cd ${.CURDIR} && exec ${MAKE} delete-package-links
	@rm -f ${PKGFILE}
.endif

# Checkpatch
#
# Special target to verify patches

.if !target(checkpatch)
checkpatch:
	@cd ${.CURDIR} && exec ${MAKE} PATCH_CHECK_ONLY=Yes patch
.endif

# Reinstall
#
# Special target to re-run install

.if !target(reinstall)
reinstall:
	@rm -f ${_INSTALL_PRE_COOKIE} ${_INSTALL_COOKIE} ${_PACKAGE_COOKIE}
	@cd ${.CURDIR} && DEPENDS_TARGET=${DEPENDS_TARGET} exec ${MAKE} install
.endif

# Deinstall
#
# Special target to remove installation

.if !target(deinstall)
uninstall deinstall:
	@${ECHO_MSG} "===> Deinstalling for ${PKGNAME}"
	@${PKG_DELETE} -f ${PKGNAME}
	@rm -f ${_INSTALL_COOKIE} ${_PACKAGE_COOKIE}
.endif


################################################################
# Some more targets supplied for users' convenience
################################################################

# Cleaning up

.if !target(pre-clean)
pre-clean:
.endif

.if !target(clean)
clean: pre-clean
.  if ${CLEANDEPENDS:L}=="yes"
	@cd ${.CURDIR} && exec ${MAKE} clean-depends
.  endif
	@${ECHO_MSG} "===>  Cleaning for ${PKGNAME}"
	@if cd ${WRKINST} 2>/dev/null; then ${SUDO} rm -rf ${WRKINST}; fi
	@if [ -L ${WRKDIR} ]; then rm -rf `readlink ${WRKDIR}`; fi
	@rm -rf ${WRKDIR}
.endif

.if !target(pre-distclean)
pre-distclean:
.endif

.if !target(distclean)
distclean: pre-distclean clean
	@${ECHO_MSG} "===>  Dist cleaning for ${PKGNAME}"
	@if cd ${FULLDISTDIR} 2>/dev/null; then \
		rm -f ${_DISTFILES} ${_PATCHFILES}; \
	fi
.  if defined(DIST_SUBDIR)
	-@rmdir ${FULLDISTDIR}  
.  endif
.endif

# Prints out a list of files to fetch (useful to do a batch fetch)

RECURSIVE_FETCH_LIST?=	Yes

.if !target(fetch-list)
fetch-list:
	@cd ${.CURDIR} && ${MAKE} fetch-list-recursive RECURSIVE_FETCH_LIST=${RECURSIVE_FETCH_LIST} | sort -u
.endif # !target(fetch-list)

.if !target(fetch-list-recursive)
fetch-list-recursive:
	@cd ${.CURDIR} && exec ${MAKE} fetch-list-one-pkg 
.  if ${RECURSIVE_FETCH_LIST:L} != "no"
	@for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP} \
	| tr '\040' '\012' | sort -u`; do \
		cd ${PORTSDIR} && cd $$dir && ${MAKE} fetch-list-recursive; \
	done
.  endif # ${RECURSIVE_FETCH_LIST} != "NO"
.endif # !target(fetch-list-recursive)

.if !target(fetch-list-one-pkg)
fetch-list-one-pkg:
	@mkdir -p ${FULLDISTDIR}
	@[ -z "${FULLDISTDIR}" ] || echo "mkdir -p ${FULLDISTDIR}"
	@cd ${FULLDISTDIR}; \
	 for select in ${_EVERYTHING}; do \
	 	file=`echo $$select|sed -e 's,:[0-9]$$,,'`; \
		if [ ! -f $$file -a ! -f `basename $$file` ]; then \
			echo -n "cd ${FULLDISTDIR} && [ -f $$file -o -f `basename $$file` ] || " ; \
			${_SITE_SELECTOR}; \
			for site in $$sites ; do \
				echo -n ${FETCH_CMD} ${FETCH_BEFORE_ARGS} $${site}$${file} "${FETCH_AFTER_ARGS}" '|| ' ; \
			done; \
			echo "echo $${file} not fetched" ; \
		fi \
	done
.endif # !target(fetch-list-one-pkg)

# packing list utilities.  This generates a packing list from a recently
# installed port.  Not perfect, but pretty close.  The generated file
# will have to have some tweaks done by hand.
# Note: add @comment PACKAGE(arch=${ARCH}, opsys=${OPSYS}, vers=${OPSYS_VER})
# when port is installed or package created.
#
.if ${FAKE:U} == "YES"
plist: fake
	@DESTDIR=${WRKINST} PREFIX=${WRKINST}${PREFIX} LDCONFIG="${LDCONFIG}" \
	MTREE_FILE=${PORTSDIR}/infrastructure/db/fake.mtree \
	INSTALL_PRE_COOKIE=${_INSTALL_PRE_COOKIE} \
	perl ${PORTSDIR}/infrastructure/install/make-plist > ${PLIST}-auto
.else

# Figure out where the local mtree file is
.  if ${PREFIX} == "/usr/local"
MTREE_FILE?=	/etc/mtree/BSD.local.dist
.  else
MTREE_FILE?=	/etc/mtree/BSD.x11.dist
.  endif

plist: install
	@DESTDIR=${PREFIX} PREFIX=${PREFIX} LDCONFIG="${LDCONFIG}" MTREE_FILE=${MTREE_FILE} \
	INSTALL_PRE_COOKIE=${_INSTALL_PRE_COOKIE} \
	perl ${PORTSDIR}/infrastructure/install/make-plist > ${PLIST}-auto
.endif

update-patches:
	@toedit=`WRKDIST=${WRKDIST} PATCHDIR=${PATCHDIR} PATCH_LIST=${PATCH_LIST} \
		DIFF_ARGS=${DIFF_ARGS} DISTORIG=${DISTORIG} \
		/bin/sh ${PORTSDIR}/infrastructure/build/update-patches`; \
	case $$toedit in "");; \
	*) read i?'edit patches: '; \
	cd ${PATCHDIR} && $${VISUAL:-$${EDIT:-/usr/bin/vi}} $$toedit;; esac
	

################################################################
# The special package-building targets
# You probably won't need to touch these
################################################################

# mirroring utilities
.if defined(DIST_SUBDIR)
_ALLFILES=${ALLFILES:S/^/${DIST_SUBDIR}\//}
.else
_ALLFILES=${ALLFILES}
.endif

fetch-makefile:
	@echo -n "all"
.if defined(PERMIT_DISTFILES_FTP) && ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo -n " ftp"
.endif
.if defined(PERMIT_DISTFILES_CDROM) && ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n " cdrom"
.endif
	@echo ":: "`${MAKE} package-name FULL_PACKAGE_NAME=${FULL_PACKAGE_NAME}`
	@cd ${.CURDIR} && exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes NO_WARNINGS=Yes _fetch-makefile-helper

_fetch-makefile-helper:
# write generic package dependencies
	@name=`${MAKE} package-name FULL_PACKAGE_NAME=${FULL_PACKAGE_NAME}`; \
	echo ".PHONY: $${name}"; \
	case '${RECURSIVE_FETCH_LIST:L}' in yes) \
	  echo "$${name}:: "`${MAKE} depends-list package-depends FULL_PACKAGE_NAME=Yes |${_SORT_DEPENDS}`;; \
	esac; \
	echo "$${name}:: ${_ALLFILES}"
.if !empty(ALLFILES)
.  for _F in ${_ALLFILES}
	@echo '${_F}: $$F'
	@echo -n '\t@MAINTAINER="${MAINTAINER}" '
.    if defined(DIST_SUBDIR)
	@echo -n 'DIST_SUBDIR="${DIST_SUBDIR}" '
.    endif
	@echo '\\'
	@select='${_EVERYTHING:M*${_F:S@^${DIST_SUBDIR}/@@}\:[0-9]}'; \
	${_SITE_SELECTOR}; \
	echo "\t SITES=\"$$sites\" \\"
.    if !defined(NO_CHECKSUM) && !empty(_CKSUMFILES:M${_F})
	@if [ ! -f ${CHECKSUM_FILE} ]; then \
	  echo >&2 'Missing checksum file: ${CHECKSUM_FILE}'; \
	  echo '\t ERROR="no checksum file" \\'; \
	else \
	  for c in ${PREFERRED_CIPHERS}; do \
		if set -- `grep -i "^$$c (${_F})" ${CHECKSUM_FILE}`; then break; fi; \
	  done; \
	  case "$$4" in \
		"") \
		  echo >&2 "No checksum recorded for ${_F}."; \
		  echo '\t ERROR="no checksum" \\';; \
		"IGNORE") \
		  echo >&2 "Checksum for ${_F} is IGNORE in ${CHECKSUM_FILE}"; \
		  echo >&2 'but file is not in $${IGNORE_FILES}'; \
		  echo '\t ERROR="IGNORE inconsistent" \\';; \
		*) \
		  echo "\t CIPHER=\"$$c\" CKSUM=\"$$4\" \\";; \
	  esac; \
	fi
.    endif
	@echo '\t exec $${FETCH} "$$@"'
.  endfor
.endif
	@echo
	

# The README.html target needs full information (this is passed via 
# depends-list and package-depends)
.ifndef FULL_PACKAGE_NAME
FULL_PACKAGE_NAME=No
.endif 

# Make variables to pass along on recursive builds
_DEPEND_THRU=FULL_PACKAGE_NAME=${FULL_PACKAGE_NAME} FLAVOR='' SUBPACKAGE=''

# Nobody should want to override this unless PKGNAME is simply bogus.

# XXX
.if !target(package-name)
package-name:
.  if (${FULL_PACKAGE_NAME:L} == "yes")
	@${_DEPEND_ECHO} `${MAKE} package-path`/${PKGNAME}
.  else
	@${_DEPEND_ECHO} '${PKGNAME}'
.  endif 
.endif 

.if !target(package-path)
package-path:
	@pwd | sed s@`cd ${PORTSDIR} ; pwd`/@@g
.endif
# Build a package but don't check the package cookie

.if !target(repackage)
repackage: pre-repackage package

pre-repackage:
	@rm -f ${_PACKAGE_COOKIE}
.endif

# Build a package but don't rely on cookie for installation, also don't
# install package cookie

.if !target(package-noinstall)
package-noinstall:
	@rm -f ${_PACKAGE_COOKIE}
	@cd ${.CURDIR} && exec ${MAKE} PACKAGE_NOINSTALL=Yes ${_PACKAGE_COOKIE}
.endif

################################################################
# Dependency checking
################################################################

.if !target(depends)
depends: lib-depends misc-depends fetch-depends build-depends run-depends

.  for _DEP in fetch build run
${_DEP}-depends:
.    if defined(${_DEP:U}_DEPENDS) && !defined(NO_DEPENDS)
	@PATH=${PORTPATH}; { unset DEPENDS_TARGET || true; }; \
	for i in ${${_DEP:U}_DEPENDS:S,::,:,}; do \
		cd ${PORTSDIR}; \
		prog=`echo $$i | sed -e 's/:.*//'`; \
		dir=`echo $$i | sed -e 's/[^:]*://'`; \
		if expr "$$dir" : '.*:' > /dev/null; then \
			target=`echo $$dir | sed -e 's/.*://'`; \
			dir=`echo $$dir | sed -e 's/:.*//'`; \
		else \
			target=${DEPENDS_TARGET}; \
		fi; \
		if [ ! -d $$dir ]; then \
			echo ">> No directory for $$prog ($$dir)"; \
		fi; \
		found=false; \
		if expr "$$prog" : \\/ >/dev/null; then \
			if [ -e "$$prog" ]; then \
				found=true; \
			fi; \
		else \
			IFS=:; for d in $$PATH; do \
				if [ -x $$d/$$prog ]; then \
					found=true; \
					break; \
				fi \
			done; unset IFS; \
		fi; \
		if $$found; then \
			${ECHO_MSG} "===>  ${PKGNAME} depends on file: $$prog - found"; \
		else \
			${ECHO_MSG} "===>  ${PKGNAME} depends on file: $$prog - not found"; \
			${ECHO_MSG} "===>  Verifying $$target for $$prog in $$dir"; \
			if cd $$dir && ${MAKE} ${_DEPEND_THRU} $$target; then \
				${ECHO_MSG} "===> Returning to build of ${PKGNAME}"; \
			else \
				exit 1; \
			fi; \
		fi; \
	done
.    endif
.  endfor

lib-depends:
.  if defined(LIB_DEPENDS) && !defined(NO_DEPENDS)
.    if defined(NO_SHARED_LIBS)
	@{ unset DEPENDS_TARGET || true; }; \
	for i in ${LIB_DEPENDS:S,::,:,}; do \
		cd ${PORTSDIR}; \
		lib=`echo $$i | sed -e 's/:.*//' -e 's|\([^\\]\)[\\\.].*|\1|'`; \
		dir=`echo $$i | sed -e 's/[^:]*://'`; \
		if expr "$$dir" : '.*:' > /dev/null; then \
			target=`echo $$dir | sed -e 's/.*://'`; \
			dir=`echo $$dir | sed -e 's/:.*//'`; \
		else \
			target=${DEPENDS_TARGET}; \
		fi; \
		if [ ! -d "$$dir" ]; then \
			echo ">> No directory for $$lib ($$dir)"; \
		fi; \
		tmp=`mktemp /tmp/bpmXXXXXXXXXX`; \
		if ${LD} -r -o $$tmp -L${LOCALBASE}/lib -L${X11BASE}/lib -l$$lib; then \
			${ECHO_MSG} "===>  ${PKGNAME} depends on library: $$lib - found"; \
		else \
			${ECHO_MSG} "===>  ${PKGNAME} depends on library: $$lib - not found"; \
			${ECHO_MSG} "===>  Verifying $$target for $$lib in $$dir"; \
			if cd $$dir && ${MAKE} ${_DEPEND_THRU} $$target; then \
				${ECHO_MSG} "===>  Returning to build of ${PKGNAME}"; \
			else \
				rm -f $$tmp; \
				exit 1; \
			fi; \
		fi; \
		rm -f $$tmp; \
	done
.    else
	@{ unset DEPENDS_TARGET || true ; }; \
	for i in ${LIB_DEPENDS:S,::,:,}; do \
		cd ${PORTSDIR}; \
		lib=`echo $$i | sed -e 's/:.*//' -e 's|\([^\\]\)\.|\1\\\\.|g'`; \
		dir=`echo $$i | sed -e 's/[^:]*://'`; \
		if expr "$$dir" : '.*:' > /dev/null; then \
			target=`echo $$dir | sed -e 's/.*://'`; \
			dir=`echo $$dir | sed -e 's/:.*//'`; \
		else \
			target=${DEPENDS_TARGET}; \
		fi; \
		if [ ! -d "$$dir" ]; then \
			echo ">> No directory for $$libname ($$dir)"; \
		fi; \
		libname=`echo $$lib | sed -e 's|\\\\||g'`; \
		reallib=`${LDCONFIG} -r | grep -e "-l$$lib" | awk '{ print $$3 }'`; \
		if [ "X$$reallib" = X"" ]; then \
			${ECHO_MSG} "===>  ${PKGNAME} depends on shared library: $$libname - not found"; \
			${ECHO_MSG} "===>  Verifying $$target for $$libname in $$dir"; \
			if cd $$dir && ${MAKE} ${_DEPEND_THRU} $$target; then \
				${ECHO_MSG} "===>  Returning to build of ${PKGNAME}"; \
			else \
				exit 1; \
			fi; \
		else \
			${ECHO_MSG} "===>  ${PKGNAME} depends on shared library: $$libname - $$reallib found"; \
		fi; \
	done
.    endif
.  endif

misc-depends:
.  if defined(DEPENDS) && !defined(NO_DEPENDS)
	@{ unset DEPENDS_TARGET || true; } ; \
	for dir in ${DEPENDS:S,::,:,}; do \
		cd ${PORTSDIR}; \
		if expr "$$dir" : '.*:' > /dev/null; then \
			target=`echo $$dir | sed -e 's/.*://'`; \
			dir=`echo $$dir | sed -e 's/:.*//'`; \
		else \
			target=${DEPENDS_TARGET}; \
		fi; \
		if [ ! -d $$dir ]; then \
			echo ">> No directory for $$dir."; \
		fi; \
		${ECHO_MSG} "===>  ${PKGNAME} depends on: $$dir"; \
		${ECHO_MSG} "===>  Verifying $$target for $$dir"; \
		if cd $$dir && ${MAKE} ${_DEPEND_THRU} $$target; then \
			${ECHO_MSG} "===>  Returning to build of ${PKGNAME}"; \
		else \
			exit 1; \
		fi \
	done
.  endif

.endif

# Internal variables, used by dependencies targets 

.if defined(LIB_DEPENDS) || defined(DEPENDS)
_ALWAYS_DEP = ${LIB_DEPENDS:S,::,:,:C/^[^:]*://:C/:.*//} \
	${DEPENDS:S,::,:,:C/:.*//} 
.endif

.if defined(FETCH_DEPENDS) || defined(BUILD_DEPENDS)
_BUILD_DEP = ${FETCH_DEPENDS:S,::,:,:C/^[^:]*://:C/:.*//} \
	${BUILD_DEPENDS:S,::,:,:C/^[^:]*://:C/:.*//}
.endif

.if defined(RUN_DEPENDS)
_RUN_DEP = ${RUN_DEPENDS:S,::,:,:C/^[^:]*://:C/:.*//}
.endif

.if !target(clean-depends)
clean-depends:
.  if defined(_ALWAYS_DEP) || defined(_BUILD_DEP) || defined(_RUN_DEP)
	@for dir in \
	   `echo ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		if cd ${PORTSDIR} && cd $$dir 2>/dev/null ; then \
			${MAKE} CLEANDEPENDS=No ${_DEPEND_THRU} clean clean-depends; \
		fi \
	done
.  endif
.endif

################################################################
# Everything after here are internal targets and really
# shouldn't be touched by anybody but the release engineers.
################################################################

# This target generates an index entry suitable for aggregation into
# a large index.  Format is:
#
# distribution-name|port-path|installation-prefix|comment| \
#  description-file|maintainer|categories|build deps|run deps|for arch
#
describe:
.if !defined(NO_DESCRIBE) 
.  if !empty(FLAVOR)
	@echo -n "${PKGNAME}|${.CURDIR:S,^${PORTSDIR}/,,}${_FEXT:S/-/,/g}|"
.  else
	@echo -n "${PKGNAME}|${.CURDIR:S,^${PORTSDIR}/,,}|"
.  endif
.  if ${PREFIX} == ${LOCALBASE}
	@echo -n "|"
.  else
	@echo -n "${PREFIX}|"
.  endif
	@case '${COMMENT}' in \
		-*) echo -n '${COMMENT:S/^-//}|';; \
		*)if [ -f '${COMMENT}' ]; then \
			echo -n "`cat ${COMMENT}`|"; \
		else \
			echo -n "** No Description|"; \
		fi;; \
	esac; \
	if [ -f ${DESCR} ]; then \
		echo -n "${DESCR:S,^${PORTSDIR}/,,}|"; \
	else \
		echo -n "/dev/null|"; \
	fi; \
	echo -n "${MAINTAINER}|${CATEGORIES}|"
.if defined(_ALWAYS_DEP) || defined(_BUILD_DEP) || target(depends-list)
	@cd ${.CURDIR} && echo -n `${MAKE} depends-list|${_SORT_DEPENDS}`
.endif
	@echo -n "|"
.if defined(_ALWAYS_DEP) || defined(_RUN_DEP) || target(package-depends)
	@cd ${.CURDIR} && echo -n `${MAKE} package-depends|${_SORT_DEPENDS}`
.endif
	@echo -n "|"
	@if [ "${ONLY_FOR_ARCHS}" = "" ]; then \
		echo -n "any|"; \
	else \
		echo -n "${ONLY_FOR_ARCHS}|"; \
	fi

.	if defined(PERMIT_PACKAGE_CDROM)
.     if ${PERMIT_PACKAGE_CDROM:L} == "yes"
	@echo -n "y|"
.     else
	@echo -n "n|"
.     endif
.	else
	@echo -n "?|"
.	endif	

.	if defined(PERMIT_PACKAGE_FTP)
.     if ${PERMIT_PACKAGE_FTP:L} == "yes"
	@echo -n "y|"
.     else
	@echo -n "n|"
.     endif
.	else
	@echo -n "?|"
.	endif	


.	if defined(PERMIT_DISTFILES_CDROM)
.	  if ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n "y|"
.     else
	@echo -n "n|"
.     endif
.	else
		@echo -n "?|"
.	endif	


.	if defined(PERMIT_DISTFILES_FTP)
.	  if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo "y"
.     else
	@echo "n"
.     endif
.	else
	@echo "?"
.   endif
.endif
.if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.  for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && exec ${MAKE} SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}' describe
.  endfor
.endif	


README.html:
	@echo ${PKGNAME} | ${HTMLIFY} > $@.tmp3
.if defined(_ALWAYS_DEP) || defined(_BUILD_DEP) || target(depends-list)
	@cd ${.CURDIR} && ${MAKE} depends-list FULL_PACKAGE_NAME=Yes | ${_SORT_DEPENDS}>$@.tmp1
.endif
.if defined(_ALWAYS_DEP) || defined(_RUN_DEP) || target(package-depends)
	@cd ${.CURDIR} && ${MAKE} package-depends FULL_PACKAGE_NAME=Yes | ${_SORT_DEPENDS} >$@.tmp2
.endif
.if defined(HOMEPAGE)
	@echo 'See <a href="${HOMEPAGE}">${HOMEPAGE}</a> for details.' >$@.tmp4
.else
	@echo "" >$@.tmp4
.endif
.for I in 1 2
	@if [ -s $@.tmp$I ]; then \
		{ cat $@.tmp$I | while read n; do \
			j=`dirname $$n|${HTMLIFY}`; k=`basename $$n|${HTMLIFY}`; \
			echo "<A HREF=\"${PKGDEPTH}/$$j/README.html\">$$k</A>"; \
		 done; } >$@.tmp$Ia; \
    else \
    echo "(none)" > $@.tmp$Ia; \
	fi
.endfor
	@cat ${README_NAME} | \
		sed -e 's|%%PORT%%|'"`${MAKE} package-path | ${HTMLIFY}`"'|g' \
			-e '/%%PKG%%/r$@.tmp3' -e '//d' \
			-e '/%%COMMENT%%/r${PKGDIR}/COMMENT' -e '//d' \
			-e '/%%DESCR%%/r${PKGDIR}/DESCR' -e '//d' \
			-e '/%%HOMEPAGE%%/r$@.tmp4' -e '//d' \
			-e '/%%BUILD_DEPENDS%%/r$@.tmp1a' -e '//d' \
			-e '/%%RUN_DEPENDS%%/r$@.tmp2a' -e '//d' \
		>> $@
	@rm -f $@.tmp*

.if !target(print-depends-list)
print-depends-list:
.  if defined(_ALWAYS_DEP) || defined(_BUILD_DEP) || target(depends-list)
	@echo -n 'This port requires package(s) "'
	@echo -n `cd ${.CURDIR} && ${MAKE} ${_DEPEND_THRU} depends-list | ${_SORT_DEPENDS}`
	@echo '" to build.'
.  endif
.endif

.if !target(print-package-depends)
print-package-depends:
.  if defined(_ALWAYS_DEP) || defined(_RUN_DEP) || target(package-depends)
	@echo -n 'This port requires package(s) "'
	@echo -n `cd ${.CURDIR} && ${MAKE} ${_DEPEND_THRU} package-depends | ${_SORT_DEPENDS}`
	@echo '" to run.'
.  endif
.endif


.if !target(recurse-build-depends)
recurse-build-depends:
.  if defined(_ALWAYS_DEP) || defined(_BUILD_DEP) || defined(_RUN_DEP)
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name ${_DEPEND_THRU}`; \
	for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP} \
		 | tr '\040' '\012' | sort -u`; do \
		if cd ${PORTSDIR} && cd $$dir 2>/dev/null; then \
			if ! ${MAKE} _DEPEND_ECHO="echo $$pname" package-name recurse-build-depends ${_DEPEND_THRU}; then  \
				echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
				exit 1; \
			fi; \
		else \
			echo 1>&2  "*** Build dependencies bogus: \"$$dir\" non-existent"; \
			exit 1; \
		fi; \
	done 
.  else
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name`; echo $$pname $$pname
.  endif
.endif

.if !target(depends-list)
depends-list:
.  if defined(_ALWAYS_DEP) || defined(_BUILD_DEP)
	@for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		if cd ${PORTSDIR} && cd $$dir 2>/dev/null; then \
			if ! ${MAKE} recurse-build-depends ${_DEPEND_THRU}; then  \
				echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
				exit 1; \
			fi; \
		else \
			echo 1>&2  "*** Build dependencies bogus: \"$$dir\" non-existent"; \
			exit 1; \
		fi; \
	done 
.  endif
.endif

# Build (recursively) a list of package dependencies suitable for tsort
.if !target(recurse-package-depends)
recurse-package-depends:
.  if defined(_ALWAYS_DEP) || defined(_RUN_DEP)
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name ${_DEPEND_THRU}`; \
	for dir in `echo ${_ALWAYS_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		if cd ${PORTSDIR} && cd $$dir 2>/dev/null; then \
			if ! ${MAKE} _DEPEND_ECHO="echo $$pname" package-name recurse-package-depends ${_DEPEND_THRU}; then  \
				echo 1>&2 "*** Problem checking deps in \"$$dir\"." ; \
				exit 1; \
			fi; \
		else \
			echo 1>&2 "*** @pkgdep registration bogus: \"$$dir\" non-existent"; \
			exit 1; \
		fi; \
	done
.  else
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name`; echo $$pname $$pname
.  endif
.endif

.if !target(package-depends)
package-depends:
.  if defined(_ALWAYS_DEP) || defined(_RUN_DEP)
	@for dir in `echo ${_ALWAYS_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		if cd ${PORTSDIR} && cd $$dir 2>/dev/null; then \
			if ! ${MAKE} recurse-package-depends ${_DEPEND_THRU}; then  \
				echo 1>&2 "*** Problem checking deps in \"$$dir\"." ; \
				exit 1; \
			fi; \
		else \
			echo 1>&2 "*** @pkgdep registration bogus: \"$$dir\" non-existent"; \
			exit 1; \
		fi; \
	done
.  endif
.endif

README_NAME?=	${TEMPLATES}/README.port

.if !target(readmes)
readmes:	readme
.endif

.if !target(readme)
readme:
	@rm -f README.html
	@cd ${.CURDIR} && exec ${MAKE} README_NAME=${README_NAME} README.html
.endif


HTMLIFY=	sed -e 's/&/\&amp;/g' -e 's/>/\&gt;/g' -e 's/</\&lt;/g'

.if make(README.html) || make(readme) || make(readmes)
PKGDEPTH!=${MAKE} package-path|sed -e 's|[^./][^/]*|..|g'
.endif

.if !target(print-depends)
print-depends: 
	@cd ${.CURDIR} && exec ${MAKE} FULL_PACKAGE_NAME=Yes print-depends-list print-package-depends
.endif

# Fake installation of package so that user can pkg_delete it later.
# Also, make sure that an installed port is recognized correctly in
# accordance to the @pkgdep directive in the packing lists

.if !target(fake-pkg)
fake-pkg: ${_PKG_PREREQ}
	@if [ `/bin/ls -l ${COMMENT} | awk '{print $$5}'` -gt 60 ]; then \
	    echo "** ${COMMENT} too large - installation not recorded."; \
	    exit 1; \
	 fi
	@if [ ! -d ${PKG_DBDIR} ]; then rm -f ${PKG_DBDIR}; mkdir -p ${PKG_DBDIR}; fi
.  if defined(FORCE_PKG_REGISTER)
	@rm -rf ${PKG_DBDIR}/${PKGNAME}
.  endif
	@if [ ! -d ${PKG_DBDIR}/${PKGNAME} ]; then \
		${ECHO_MSG} "===>  Registering installation for ${PKGNAME}"; \
		mkdir -p ${PKG_DBDIR}/${PKGNAME}; \
		${PKG_CMD} ${PKG_ARGS} -O ${PKGFILE} > ${PKG_DBDIR}/${PKGNAME}/+CONTENTS; \
		cp ${WRKBUILD}/DESCR${SUBPACKAGE} ${PKG_DBDIR}/${PKGNAME}/+DESC; \
		cp ${COMMENT} ${PKG_DBDIR}/${PKGNAME}/+COMMENT; \
		if [ -f ${PKGDIR}/INSTALL ]; then \
			cp ${PKGDIR}/INSTALL ${PKG_DBDIR}/${PKGNAME}/+INSTALL; \
		fi; \
		if [ -f ${PKGDIR}/DEINSTALL ]; then \
			cp ${PKGDIR}/DEINSTALL ${PKG_DBDIR}/${PKGNAME}/+DEINSTALL; \
		fi; \
		if [ -f ${PKGDIR}/REQ ]; then \
			cp ${PKGDIR}/REQ ${PKG_DBDIR}/${PKGNAME}/+REQ; \
		fi; \
		if [ -f ${WRKBUILD}/MESSAGE${SUBPACKAGE} ]; then \
			cp ${WRKBUILD}/MESSAGE${SUBPACKAGE} ${PKG_DBDIR}/${PKGNAME}/+DISPLAY; \
		fi; \
		for dep in `cd ${.CURDIR} && ${MAKE} package-depends ECHO_MSG=true | ${_SORT_DEPENDS}`; do \
			if [ -d ${PKG_DBDIR}/$$dep ]; then \
				if ! grep ^${PKGNAME}$$ ${PKG_DBDIR}/$$dep/+REQUIRED_BY \
					>/dev/null 2>&1; then \
					echo ${PKGNAME} >> ${PKG_DBDIR}/$$dep/+REQUIRED_BY; \
				fi; \
			fi; \
		done; \
	fi
.endif

.if defined(VARNAME)
show:
.  for _var in ${VARNAME}
	@echo ${${_var}}
.  endfor
.endif
# Depend is generally meaningless for arbitrary ports, but if someone wants
# one they can override this.  This is just to catch people who've gotten into
# the habit of typing `make depend all install' as a matter of course.
#
.if !target(depend)
depend:
.endif

# Same goes for tags
.if !target(tags)
tags:
.endif

.PHONY: \
   addsum all build build-depends checkpatch \
   checksum clean clean-depends configure deinstall \
   delete-package delete-package-links depend depends depends-list \
   describe distclean do-build do-configure do-extract \
   do-fetch do-install do-package do-patch extract list-distfiles \
   fake-pkg fetch fetch-depends fetch-list fetch-list-one-pkg \
   fetch-list-recursive install lib-depends makesum mirror-distfiles \
   cdrom-packages ftp-packages \
   misc-depends package package-depends package-links package-name \
   package-noinstall package-path patch plist update-patches post-build \
   post-configure post-extract post-fetch post-install post-package \
   post-patch pre-build pre-clean pre-configure pre-distclean \
   pre-extract pre-fetch pre-install pre-package pre-patch \
   pre-repackage print-depends-list print-package-depends readme \
   readmes reinstall \
   repackage run-depends tags uninstall fetch-all print-depends \
   recurse-build-depends recurse-package-depends \
   distpatch real-distpatch do-distpatch post-distpatch show
