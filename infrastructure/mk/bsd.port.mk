#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	$OpenBSD: bsd.port.mk,v 1.543 2003/03/02 17:54:27 pvalchev Exp $
#	$FreeBSD: bsd.port.mk,v 1.264 1996/12/25 02:27:44 imp Exp $
#	$NetBSD: bsd.port.mk,v 1.62 1998/04/09 12:47:02 hubertf Exp $
#
#	bsd.port.mk - 940820 Jordan K. Hubbard.
#	This file is in the public domain.

# Each port has a MAINTAINER, which is the email address(es) of the person(s)
# to contact if you have questions/suggestions about that specific port.
# To obtain that address, just type 
#	make show VARNAME=MAINTAINER
# in the specific port's directory.
# 
# The ports@openbsd.org address is the `default' MAINTAINER (the generic
# OpenBSD ports mailing-list).

# Enquiries as to the bsd.port.mk framework should usually be directed 
# to ports@openbsd.org.


.if ${.MAKEFLAGS:MFLAVOR=*}
ERRORS+= "Fatal: Use 'env FLAVOR=${FLAVOR} ${MAKE}' instead."
.endif
.if ${.MAKEFLAGS:MSUBPACKAGE=*}
ERRORS+= "Fatal: Use 'env SUBPACKAGE=${SUBPACKAGE} ${MAKE}' instead."
.endif

# There is a transition in progress. When the dust settles, 
# the definitive source of documentation to this file's working
# should be bsd.port.mk(5).
#
# All redundant documentation is being stripped, refer to bsd.port.mk(5),
# really !
#
# IMPORTANT: any variable or target starting with an underscore 
# (e.g., _DEPEND_ECHO) is internal to bsd.port.mk, and 
# liable to change without notice. 
#
# DON'T USE IN INDIVIDUAL PORTS !!!
#
# Variables that typically apply to all ports:
# 
# MASTER_SITES	- Primary location(s) for distribution files if not found
#				  locally.
# MASTER_SITESn	- Primary location(s) for more distribution files, in case
#				  some distfiles must be fetched from elsewhere.
#
# Variables that typically apply to an individual port.  Non-Boolean
# variables without defaults are *mandatory*.
#
# COMES_WITH	- The first version that a port was made part of the
#				  standard OpenBSD distribution.  If the current OpenBSD
#				  version is >= this version then a notice will be
#				  displayed instead of the port being generated.
#
# NO_DESCRIBE	- Use a dummy (do-nothing) describe target.
# NO_PACKAGE	- Use a dummy (do-nothing) package target.
# NO_PKG_REGISTER - Don't register a port install as a package.
# BROKEN		- Port is broken.  Set this string to the reason why.
# RESTRICTED	- Port is restricted.  Set this string to the reason why.
#
# PKG_DBDIR		- Where package installation is recorded (default: /var/db/pkg)
#
# USE_X11		- Port uses X11.
#
# SCRIPTS_ENV	- Additional environment vars passed to scripts in
#                 ${SCRIPTDIR} executed by bsd.port.mk.
# DEPENDS		- A list of other ports this package depends on being
#				  made first.  
#
# FETCH_BEFORE_ARGS -
#				  Arguments to ${FETCH_CMD} before filename (default: none).
# FETCH_AFTER_ARGS -
#				  Arguments to ${FETCH_CMD} following filename (default: none).
# NO_IGNORE     - Set this to Yes (most probably in a "make fetch" in
#                 ${PORTSDIR}) if you want to fetch all distfiles,
#                 even for packages not built due to limitation by
#                 absent X or ONLY_FOR_ARCHS...
# NO_WARNINGS	- Set this to Yes to disable warnings regarding variables
#				  to define to control the build.  Automatically set
#				  from the "mirror-distfiles" target.
#
# Motif support:
#
# USE_MOTIF		- Set this to "any" for ports that work with lesstif or
#				  openmotif (automatic flavoring), "openmotif" for ports
#				  that require openmotif, "lesstif" for ports that require
#				  lesstif. "any" will create an extra hidden lesstif
#				  FLAVOR, beware in flavor tests.
#
# Variables to change if you want a special behavior:
#
# DEPENDS_TARGET - The target to execute when a port is calling a
#				  dependency (default: "install").
#
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
# Default targets and their behaviors:
#
# fetch			- Retrieves ${DISTFILES} (and ${PATCHFILES} if defined, and
#                 ${SUPDISTFILES} if needed) into ${DISTDIR} as necessary.
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
# obj			- pre-build ${WRKDIR} -> ${WRKOBJDIR}/${PKGPATH} links
#
# readme		- Create a README.html file describing the category or package
#				  (somewhat broken due to NEW_DEPENDS)


# Somewhat obsolete targets:
# list-distfiles- list the distribution and patch files used by a port.
#				  Typical use is (from the top level of the ports tree)
#				  make ECHO_MSG=: list-distfiles | tee some-file
#				  (rely on mirror-maker instead)
# print-depends - print all dependencies for the given package
#				  (for new dependencies, use
#				  build-depends-list/run-depends-list instead)
#
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
#
# For historical reasons, you shouldn't override pre-extract and
# do-extract. Rely on EXTRACT_ONLY and post-extract instead.



.if exists(${.CURDIR}/../Makefile.inc)
.include "${.CURDIR}/../Makefile.inc"
.endif

.if !defined(PERMIT_PACKAGE_CDROM) || !defined(PERMIT_PACKAGE_FTP) || \
  !defined(PERMIT_DISTFILES_CDROM) || !defined(PERMIT_DISTFILES_FTP)
ERRORS+="The licensing info for ${FULLPKGNAME} is incomplete."
ERRORS+="Please notify the OpenBSD port maintainer:"
ERRORS+="    ${MAINTAINER}"
_BAD_LICENSING=Yes
PERMIT_PACKAGE_CDROM = No
PERMIT_DISTFILES_CDROM = No
PERMIT_PACKAGE_FTP = No
PERMIT_DISTFILES_FTP = No
.endif

# MODULES support
# reserved name spaces: for module=NAME, modname*, _modname* variables and
# targets.

.if defined(show)
VARNAME=${show}
.MAIN: show
.elif defined(clean)
.MAIN: clean
.else
.MAIN: all
.endif

FAKE?=Yes
TRUST_PACKAGES?=No
BIN_PACKAGES?=No
WRKINST?=${WRKDIR}/fake-${ARCH}${_FLAVOR_EXT2}
_LIBLIST=${WRKDIR}/.liblist-${ARCH}${_FLAVOR_EXT2}
_BUILDLIBLIST=${WRKDIR}/.buildliblist-${ARCH}${_FLAVOR_EXT2}


# Get the architecture
ARCH!=	uname -m

# Get the operating system type and version
OPSYS=	OpenBSD
OPSYS_VER=	${OSREV}

NO_SHARED_ARCHS=hppa m88k vax

# Define NO_SHARED_LIBS for those machines that don't support shared libraries.
.for _m in ${MACHINE_ARCH}
.  if !empty(NO_SHARED_ARCHS:M${_m})
NO_SHARED_LIBS=	Yes
.  endif
.endfor

# Compatibility kludge for old scripts
.if defined(NOCLEANDEPENDS)
.  if ${NOCLEANDEPENDS:L} == "no"
CLEANDEPENDS?=Yes
.  else
CLEANDEPENDS?=No
.  endif
.else
CLEANDEPENDS?=No
.endif
clean?=work
.if ${CLEANDEPENDS:L} == "yes"
clean+=depends
.endif
.if ${clean:L:Mwork}
clean+=fake
.endif
.if ${clean:L:Mforce}
clean+=-f
.endif

NOMANCOMPRESS?=	Yes
DEF_UMASK?=		022

.if exists(${.CURDIR}/Makefile.${ARCH})
.include "${.CURDIR}/Makefile.${ARCH}"
.else
.if exists(${.CURDIR}/Makefile.${MACHINE_ARCH})
.include "${.CURDIR}/Makefile.${MACHINE_ARCH}"
.endif
.endif

NO_DEPENDS?= No
NO_BUILD?= No
NO_REGRESS?= No

# These need to be absolute since we don't know how deep in the ports
# tree we are and thus can't go relative.  They can, of course, be overridden
# by individual Makefiles or local system make configuration.
PORTSDIR?=		/usr/ports
LOCALBASE?=		/usr/local
X11BASE?=		/usr/X11R6
DISTDIR?=		${PORTSDIR}/distfiles
.if defined(DIST_SUBDIR) && !empty(DIST_SUBDIR)
FULLDISTDIR?=	${DISTDIR}/${DIST_SUBDIR}
.else
FULLDISTDIR?=	${DISTDIR}
.endif
PACKAGES?=		${PORTSDIR}/packages/${MACHINE_ARCH}
TEMPLATES?=		${PORTSDIR}/infrastructure/templates

CDROM_PACKAGES?=	${PORTSDIR}/cdrom-packages/${MACHINE_ARCH}
FTP_PACKAGES?=		${PORTSDIR}/ftp-packages/${MACHINE_ARCH}

.if exists(${.CURDIR}/patches.${ARCH})
PATCHDIR?=		${.CURDIR}/patches.${ARCH}
.else
.if exists(${.CURDIR}/patches.${MACHINE_ARCH})
PATCHDIR?=		${.CURDIR}/patches.${MACHINE_ARCH}
.else
PATCHDIR?=		${.CURDIR}/patches
.endif
.endif

PATCH_LIST?=    patch-*

.if exists(${.CURDIR}/scripts.${ARCH})
SCRIPTDIR?=		${.CURDIR}/scripts.${ARCH}
.else
.if exists(${.CURDIR}/scripts.${MACHINE_ARCH})
SCRIPTDIR?=		${.CURDIR}/scripts.${MACHINE_ARCH}
.else
SCRIPTDIR?=		${.CURDIR}/scripts
.endif
.endif

.if exists(${.CURDIR}/files.${ARCH})
FILESDIR?=		${.CURDIR}/files.${ARCH}
.else
.if exists(${.CURDIR}/files.${MACHINE_ARCH})
FILESDIR?=		${.CURDIR}/files.${MACHINE_ARCH}
.else
FILESDIR?=		${.CURDIR}/files
.endif
.endif

.if exists(${.CURDIR}/pkg.${ARCH})
PKGDIR?=		${.CURDIR}/pkg.${ARCH}
.else
.if exists(${.CURDIR}/pkg.${MACHINE_ARCH})
PKGDIR?=		${.CURDIR}/pkg.${MACHINE_ARCH}
.else
PKGDIR?=		${.CURDIR}/pkg
.endif
.endif

PREFIX?=		${LOCALBASE}
TRUEPREFIX?=	${PREFIX}
DESTDIRNAME?=	DESTDIR
DESTDIR?=		${WRKINST}

MAKE_FLAGS?=
LIBTOOL_FLAGS?=
.if !defined(FAKE_FLAGS)
FAKE_FLAGS=${DESTDIRNAME}=${WRKINST}
.endif

CONFIGURE_STYLE?=

# where configuration files should go
SYSCONFDIR?=	/etc
USE_GMAKE?=		No
.if ${USE_GMAKE:L} == "yes"
BUILD_DEPENDS+=		::devel/gmake
MAKE_PROGRAM=		${GMAKE}
.else
MAKE_PROGRAM=		${MAKE}
.endif

.if ${CONFIGURE_STYLE:L:Mautomake} || ${CONFIGURE_STYLE:L:Mautoconf} || ${CONFIGURE_STYLE:L:Mautoupdate}
CONFIGURE_STYLE+=gnu
.endif

USE_LIBTOOL?=No
.if ${USE_LIBTOOL:L} == "yes"
LIBTOOL?=			${LOCALBASE}/bin/libtool
BUILD_DEPENDS+=		::devel/libtool
CONFIGURE_ENV+=		LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
MAKE_ENV+=			LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
MAKE_FLAGS+=		LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
.endif

.if exists(${PORTSDIR}/../Makefile.inc)
.include "${PORTSDIR}/../Makefile.inc"
.endif

SUBPACKAGE?=
FLAVOR?=
FLAVORS?=
PSEUDO_FLAVORS?=
FLAVORS+=${PSEUDO_FLAVORS}

.if !empty(FLAVORS:L:Mregress) && empty(FLAVOR:L:Mregress)
NO_REGRESS= Yes
.endif

USE_MOTIF?=No
HAVE_MOTIF?=No

.if ${USE_MOTIF:L} != "no"
.  if ${USE_MOTIF:L} == "lesstif"
LIB_DEPENDS+=		Xm.1::x11/lesstif
.  elif ${USE_MOTIF:L} == "openmotif"
LIB_DEPENDS+=		Xm.2::x11/openmotif
.  elif ${USE_MOTIF:L} == "any" || ${USE_MOTIF:L} == "yes"
FLAVORS+=lesstif
.    if ${FLAVOR:L:Mlesstif} && ${FLAVOR:L:Mmotif}
ERRORS+="Fatal: choose motif or lesstif, not both."
.    endif
.    if ${FLAVOR:L:Mlesstif}
LIB_DEPENDS+=		Xm.1::x11/lesstif
.    else
LIB_DEPENDS+=		Xm.2::x11/openmotif
.    endif
.  else
ERRORS+= "Fatal: Unknown USE_MOTIF=${USE_MOTIF} settings."
.  endif
MOTIFLIB=-L${LOCALBASE}/lib -lXm
.endif

.if !empty(SUBPACKAGE)
.  for _i in ${SUBPACKAGE}
.    if !defined(MULTI_PACKAGES) || empty(MULTI_PACKAGES:M${_i})
ERRORS+= "Fatal: Subpackage ${SUBPACKAGE} does not exist."
.    endif
.  endfor
.endif

# Support architecture and flavor dependent packing lists
#
SED_PLIST?=

# Build FLAVOR_EXT, checking that no flavors are misspelled
FLAVOR_EXT:=
# _FLAVOR_EXT2 is used internally for working directories.
# It encodes flavors and pseudo-flavors.
_FLAVOR_EXT2:=

# Create the basic sed substitution pipeline for fragments
# (applies only to PLIST for now)
.if !empty(FLAVORS)
.  for _i in ${FLAVORS:L}
.    if empty(FLAVOR:L:M${_i})
SED_PLIST+=|sed -e '/^!%%${_i}%%$$/r${PKGDIR}/PFRAG.no-${_i}' -e '//d' -e '/^%%${_i}%%$$/d'
.    else
_FLAVOR_EXT2:=${_FLAVOR_EXT2}-${_i}
.    if empty(PSEUDO_FLAVORS:L:M${_i})
FLAVOR_EXT:=${FLAVOR_EXT}-${_i}
.    endif
SED_PLIST+=|sed -e '/^!%%${_i}%%$$/d' -e '/^%%${_i}%%$$/r${PKGDIR}/PFRAG.${_i}' -e '//d'
.    endif
.  endfor
.endif

.if !empty(FLAVOR)
.  if !empty(FLAVORS)
.    for _i in ${FLAVOR:L}
.      if empty(FLAVORS:L:M${_i})
ERRORS+=	"Fatal: Unknown flavor: ${_i}"
ERRORS+= "   (Possible flavors are: ${FLAVORS})."
.      endif
.    endfor
.  else
ERRORS+=	"Fatal: no flavors for this port."
.  endif
.endif

PKGREPOSITORYSUBDIR?=	All
PKG_SUFX?=		.tgz
PKGREPOSITORY?=		${PACKAGES}/${PKGREPOSITORYSUBDIR}
PKG_DBDIR?=		/var/db/pkg
BULK_COOKIES_DIR?= ${PORTSDIR}/bulk/${MACHINE_ARCH}

PKGNAME?=${DISTNAME}
FULLPKGNAME?=${PKGNAME}${FLAVOR_EXT}
PKGFILE=${PKGREPOSITORY}/${FULLPKGNAME}${PKG_SUFX}
_MASTER?=

.if defined(MULTI_PACKAGES)
.  for _s in ${MULTI_PACKAGES}
.    if !defined(FULLPKGNAME${_s})
.      if defined(PKGNAME${_s})
FULLPKGNAME${_s} = ${PKGNAME${_s}}${FLAVOR_EXT}
.      else
FULLPKGNAME${_s} = ${PKGNAME}${_s}${FLAVOR_EXT}
.      endif
.    endif
PKGFILE${_s} = ${PKGREPOSITORY}/${FULLPKGNAME${_s}}${PKG_SUFX}
.  endfor
.endif

_WRKDIR_COOKIE=		${WRKDIR}/.extract_started
_EXTRACT_COOKIE=	${WRKDIR}/.extract_done
_PATCH_COOKIE=		${WRKDIR}/.patch_done
_DISTPATCH_COOKIE=	${WRKDIR}/.distpatch_done
_PREPATCH_COOKIE=	${WRKDIR}/.prepatch_done
_INSTALL_COOKIE=	${PKG_DBDIR}/${FULLPKGNAME${SUBPACKAGE}}/+CONTENTS
_BULK_COOKIE=		${BULK_COOKIES_DIR}/${FULLPKGNAME}
.if ${FAKE:L} == "yes"
_FAKE_COOKIE=		${WRKINST}/.fake_done
_INSTALL_PRE_COOKIE=${WRKINST}/.install_started
.elif defined(SEPARATE_BUILD)
_INSTALL_PRE_COOKIE=${WRKBUILD}/.install_started
.else
_INSTALL_PRE_COOKIE=${WRKDIR}/.install_started
_FAKE_COOKIE=		${WRKDIR}/.fake_done
.endif
_PACKAGE_COOKIE=	${PKGFILE}
.if defined(SEPARATE_BUILD)
_CONFIGURE_COOKIE=	${WRKBUILD}/.configure_done
_BUILD_COOKIE=		${WRKBUILD}/.build_done
_REGRESS_COOKIE=	${WRKBUILD}/.regress_done
.else
_CONFIGURE_COOKIE=	${WRKDIR}/.configure_done
_BUILD_COOKIE=		${WRKDIR}/.build_done
_REGRESS_COOKIE=	${WRKDIR}/.regress_done
.endif

_ALL_COOKIES=${_EXTRACT_COOKIE} ${_PATCH_COOKIE} ${_CONFIGURE_COOKIE} \
${_INSTALL_PRE_COOKIE} ${_BUILD_COOKIE} ${_REGRESS_COOKIE} \
${_PACKAGE_COOKIES} \
${_DISTPATCH_COOKIE} ${_PREPATCH_COOKIE} ${_FAKE_COOKIE} \
${_WRKDIR_COOKIE} ${_DEPlib_COOKIES} ${_DEPmisc_COOKIES} \
${_DEPfetch_COOKIES} ${_DEPbuild_COOKIES} ${_DEPrun_COOKIES} \
${_DEPregress_COOKIES}

_MAKE_COOKIE=touch -f

# Miscellaneous overridable commands:
GMAKE?=			gmake

CHECKSUM_FILE?=	${.CURDIR}/distinfo

# Don't touch !!! Used for generating checksums.
_CIPHERS=		sha1 rmd160 md5 

# This is the one you can override
PREFERRED_CIPHERS?= ${_CIPHERS}

PORTPATH?= ${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin:${X11BASE}/bin

# Add any COPTS to CFLAGS.  Note: programs that use imake do not
# use CFLAGS!  Also, many (most?) ports hard code CFLAGS, ignoring
# what we pass in.
.if defined(COPTS)
CFLAGS+=		${COPTS}
.endif
.if defined(CXXOPTS)
CXXFLAGS+=		${CXXOPTS}
.endif
.if defined(WARNINGS) && ${WARNINGS:L} == "yes"
.  if defined(CDIAGFLAGS)
CFLAGS+=		${CDIAGFLAGS}
.  endif
.  if defined(CXXDIAGFLAGS)
CXXFLAGS+=		${CXXDIAGFLAGS}
.  endif
.endif

MAKE_FILE?=		Makefile
PORTHOME?=		/${PKGNAME}_writes_to_HOME

MAKE_ENV+=		PATH='${PORTPATH}' PREFIX='${PREFIX}' \
	LOCALBASE='${LOCALBASE}' X11BASE='${X11BASE}' \
	MOTIFLIB='${MOTIFLIB}' CFLAGS='${CFLAGS}' \
	TRUEPREFIX='${PREFIX}' ${DESTDIRNAME}='' \
	HOME='${PORTHOME}'

FETCH_CMD?=		/usr/bin/ftp -V -m

DISTORIG?=	.bak.orig
PATCH?=			/usr/bin/patch
PATCHORIG?=	.orig
PATCH_STRIP?=	-p0
PATCH_DIST_STRIP?=	-p0

PATCH_DEBUG?=No
.if ${PATCH_DEBUG:L} != "no"
PATCH_ARGS?=	-d ${WRKDIST} -b ${PATCHORIG} -E ${PATCH_STRIP}
PATCH_DIST_ARGS?=	-b ${DISTORIG} -d ${WRKDIST} -E ${PATCH_DIST_STRIP}
.else
PATCH_ARGS?=	-d ${WRKDIST} -b ${PATCHORIG} --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_ARGS?=	-b ${DISTORIG} -d ${WRKDIST} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

PATCH_CHECK_ONLY?=No
.if ${PATCH_CHECK_ONLY:L} == "yes"
PATCH_ARGS+=	-C
PATCH_DIST_ARGS+=	-C
.endif

TAR?=	/bin/tar
UNZIP?=	unzip
BZIP2?=	bzip2


MAKE_ENV+=	EXTRA_SYS_MK_INCLUDES="<bsd.own.mk>"


.if defined(WRKOBJDIR)
.  if defined(SEPARATE_BUILD) && ${SEPARATE_BUILD:L:Mflavored}
WRKDIR?=		${WRKOBJDIR}/${PKGNAME}
.  else
WRKDIR?=		${WRKOBJDIR}/${PKGNAME}${_FLAVOR_EXT2}
.  endif
.else
.  if defined(SEPARATE_BUILD) && ${SEPARATE_BUILD:L:Mflavored}
WRKDIR?=		${.CURDIR}/w-${PKGNAME}
.  else
WRKDIR?=		${.CURDIR}/w-${PKGNAME}${_FLAVOR_EXT2}
.  endif
.endif

WRKDIST?=		${WRKDIR}/${DISTNAME}

WRKSRC?=	   ${WRKDIST}

.if defined(SEPARATE_BUILD)
WRKBUILD?=		${WRKDIR}/build-${MACHINE_ARCH}${_FLAVOR_EXT2}
WRKPKG?=		${WRKBUILD}/pkg
.else
WRKBUILD?=		${WRKSRC}
WRKPKG?=		${WRKDIR}/pkg
.endif

ALL_TARGET?=		all
INSTALL_TARGET?=	install

FAKE_TARGET ?= ${INSTALL_TARGET}

.for _i in perl gnu imake
.  if ${CONFIGURE_STYLE:L:M${_i}}
MODULES+=${_i}
.  endif
.endfor

.if defined(MODULES)
_MODULES_DONE=
.  include "${PORTSDIR}/infrastructure/mk/modules.port.mk"
.endif

REGRESS_TARGET ?= regress
REGRESS_FLAGS ?= ${MAKE_FLAGS}

.if ${FAKE:L} == "yes"
_PACKAGE_COOKIE_DEPS=${_FAKE_COOKIE}
.else
_PACKAGE_COOKIE_DEPS=${_INSTALL_COOKIE}
.endif

_PACKAGE_COOKIES= ${_PACKAGE_COOKIE}
.if ${BIN_PACKAGES:L} == "yes"
${_PACKAGE_COOKIE}:
	@${MAKE} ${_PACKAGE_COOKIE_DEPS}
.else
${_PACKAGE_COOKIE}: ${_PACKAGE_COOKIE_DEPS}
.endif
	@cd ${.CURDIR} && SUBPACKAGE='' FLAVOR='${FLAVOR}' PACKAGING='' exec ${MAKE} _package
.if !defined(PACKAGE_NOINSTALL)
	@${_MAKE_COOKIE} $@
.endif

.for _s in ${MULTI_PACKAGES}
_PACKAGE_COOKIE${_s} = ${PKGFILE${_s}}
_PACKAGE_COOKIES += ${_PACKAGE_COOKIE${_s}}
.  if ${BIN_PACKAGES:L} == "yes"
${_PACKAGE_COOKIE${_s}}:
	@${MAKE} ${_PACKAGE_COOKIE_DEPS}
.  else
${_PACKAGE_COOKIE${_s}}: ${_PACKAGE_COOKIE_DEPS}
.  endif
	@cd ${.CURDIR} && SUBPACKAGE='${_s}' FLAVOR='${FLAVOR}' PACKAGING='${_s}' exec ${MAKE} _package
.endfor

.PRECIOUS: ${_PACKAGE_COOKIES} ${_INSTALL_COOKIE}

.if !defined(PKGPATH)
_PORTSDIR!=	cd ${PORTSDIR} && pwd -P
_CURDIR!=	cd ${.CURDIR} && pwd -P
PKGPATH=${_CURDIR:S,${_PORTSDIR}/,,}
.endif

PKGDEPTH=${PKGPATH:C|[^./][^/]*|..|g}
.if empty(SUBPACKAGE)
FULLPKGPATH=${PKGPATH}${_FLAVOR_EXT2:S/-/,/g}
.else
FULLPKGPATH=${PKGPATH},${SUBPACKAGE}${_FLAVOR_EXT2:S/-/,/g}
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

INSTALL_PROGRAM_DIR= \
	${INSTALL} -d -o ${BINOWN} -g ${BINGRP} -m ${DIRMODE}
INSTALL_SCRIPT_DIR= \
	${INSTALL_PROGRAM_DIR}
INSTALL_DATA_DIR= \
	${INSTALL} -d -o ${SHAREOWN} -g ${SHAREGRP} -m ${DIRMODE}
INSTALL_MAN_DIR= \
	${INSTALL} -d -o ${MANOWN} -g ${MANGRP} -m ${DIRMODE}

_INSTALL_MACROS=	BSD_INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			BSD_INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			BSD_INSTALL_DATA="${INSTALL_DATA}" \
			BSD_INSTALL_MAN="${INSTALL_MAN}" \
			BSD_INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
			BSD_INSTALL_SCRIPT_DIR="${INSTALL_SCRIPT_DIR}" \
			BSD_INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			BSD_INSTALL_MAN_DIR="${INSTALL_MAN_DIR}"
MAKE_ENV+=	${_INSTALL_MACROS}
SCRIPTS_ENV+=	${_INSTALL_MACROS}

# The user can override the NO_PACKAGE by specifying this from
# the make command line
.if defined(FORCE_PACKAGE)
.undef NO_PACKAGE
.endif


# Create the generic variable substitution list, from subst vars
SUBST_VARS+=MACHINE_ARCH ARCH HOMEPAGE PREFIX SYSCONFDIR FLAVOR_EXT
_SED_SUBST=sed
.for _v in ${SUBST_VARS}
_SED_SUBST+=-e 's,$${${_v}},${${_v}},g'
.endfor
_SED_SUBST+=-e 's,$${FLAVORS},${FLAVOR_EXT},g' -e 's,$$\\,$$,g'
# and append it to the PLIST substitution pipeline
SED_PLIST+=|${_SED_SUBST}

# find out the most appropriate PLIST  source
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${ARCH}
.else
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${MACHINE_ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${MACHINE_ARCH}
.endif
.endif
.if !defined(PLIST) && defined(NO_SHARED_LIBS) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.noshared)
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.noshared
.endif
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}
.endif
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.${ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.${ARCH}
.else
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.${MACHINE_ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.${MACHINE_ARCH}
.endif
.endif
.if !defined(PLIST) && defined(NO_SHARED_LIBS) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.noshared)
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.noshared
.endif
PLIST?=		${PKGDIR}/PLIST${SUBPACKAGE}

# Likewise for DESCR/MESSAGE/COMMENT
.if defined(COMMENT${SUBPACKAGE}${FLAVOR_EXT})
_COMMENT=${COMMENT${SUBPACKAGE}${FLAVOR_EXT}}
.elif defined(COMMENT${SUBPACKAGE})
_COMMENT=${COMMENT${SUBPACKAGE}}
.endif

${WRKPKG}/COMMENT${SUBPACKAGE}:
.if defined(_COMMENT)
	@echo ${_COMMENT} >$@
.else
ERRORS+="Fatal: Missing comment."
.endif

.if exists(${PKGDIR}/MESSAGE${SUBPACKAGE})
MESSAGE?= ${PKGDIR}/MESSAGE${SUBPACKAGE}
.endif

DESCR?=		${PKGDIR}/DESCR${SUBPACKAGE}

# And create the actual files from sources
${WRKPKG}/PLIST${SUBPACKAGE}: ${PLIST} ${WRKPKG}/depends${SUBPACKAGE}
	@echo "@comment subdir=${FULLPKGPATH} cdrom=${PERMIT_PACKAGE_CDROM:L} ftp=${PERMIT_PACKAGE_FTP:L}" >$@.tmp
	@sort -u <${WRKPKG}/depends${SUBPACKAGE}>>$@.tmp
.if defined(NO_SHARED_LIBS)
	@sed -e '/^!%%SHARED%%$$/r${PKGDIR}/PFRAG.no-shared${SUBPACKAGE}' \
		-e '/^%%!SHARED%%$$/r${PKGDIR}/PFRAG.no-shared${SUBPACKAGE}' \
		-e '//d' -e '/^%%SHARED%%$$/d' <${PLIST} \
		${SED_PLIST} >>$@.tmp && mv -f $@.tmp $@
.else
	@if [ -x /sbin/ldconfig ]; then \
		sed -e '/^!%%SHARED%%$$/d' \
			-e '/^%%!SHARED%%$$/d' \
			-e '/^%%SHARED%%$$/r${PKGDIR}/PFRAG.shared${SUBPACKAGE}' \
			-e '//d' <${PLIST} ${SED_PLIST} \
			| sed -f ${LDCONFIG_SED_SCRIPT} >>$@.tmp && mv -f $@.tmp $@; \
	else \
		sed -e '/^!%%SHARED%%$$/d' \
			-e '/^%%!SHARED%%$$/d' \
			-e '/^%%SHARED%%$$/r${PKGDIR}/PFRAG.shared${SUBPACKAGE}' \
			-e '//d' <${PLIST} \
			${SED_PLIST} >>$@.tmp && mv -f $@.tmp $@; \
	fi
.endif

${WRKPKG}/depends${SUBPACKAGE}:
	@touch $@
	@self=${FULLPKGNAME${SUBPACKAGE}} _depends_result=$@ exec ${MAKE} _solve-package-depends

MTREE_FILE?=
MTREE_FILE+=${PORTSDIR}/infrastructure/db/fake.mtree

${WRKPKG}/DESCR${SUBPACKAGE}: ${DESCR}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.if defined(HOMEPAGE)
	@fgrep -q '$${HOMEPAGE}' $? || echo "\nWWW: ${HOMEPAGE}" >>$@
.endif

${WRKPKG}/mtree.spec: ${MTREE_FILE}
	@${_SED_SUBST} ${MTREE_FILE}>$@.tmp && mv -f $@.tmp $@

PKG_TMPDIR?=	/var/tmp
PKG_CMD?=		/usr/sbin/pkg_create
PKG_DELETE?=	/usr/sbin/pkg_delete
_SORT_DEPENDS?=tsort|tail -r

# Fill out package command, and package dependencies
_PKG_PREREQ= ${WRKPKG}/PLIST${SUBPACKAGE} ${WRKPKG}/DESCR${SUBPACKAGE} ${WRKPKG}/COMMENT${SUBPACKAGE}
# Note that if you override PKG_ARGS, you will not get correct dependencies
.if !defined(PKG_ARGS)
PKG_ARGS= -v -c '${WRKPKG}/COMMENT${SUBPACKAGE}' -d ${WRKPKG}/DESCR${SUBPACKAGE}
PKG_ARGS+=-f ${WRKPKG}/PLIST${SUBPACKAGE} -p ${PREFIX} 
.  if exists(${PKGDIR}/INSTALL${SUBPACKAGE})
PKG_ARGS+=		-i ${WRKPKG}/INSTALL${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/INSTALL${SUBPACKAGE}
${WRKPKG}/INSTALL${SUBPACKAGE}: ${PKGDIR}/INSTALL${SUBPACKAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.  endif
.  if exists(${PKGDIR}/DEINSTALL${SUBPACKAGE})
PKG_ARGS+=		-k ${WRKPKG}/DEINSTALL${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/DEINSTALL${SUBPACKAGE}
${WRKPKG}/DEINSTALL${SUBPACKAGE}: ${PKGDIR}/DEINSTALL${SUBPACKAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.  endif
.  if exists(${PKGDIR}/REQ${SUBPACKAGE})
PKG_ARGS+=		-r ${WRKPKG}/REQ${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/REQ${SUBPACKAGE}
${WRKPKG}/REQ${SUBPACKAGE}: ${PKGDIR}/REQ${SUBPACKAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.  endif
.  if defined(MESSAGE)
PKG_ARGS+=		-D ${WRKPKG}/MESSAGE${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/MESSAGE${SUBPACKAGE}
${WRKPKG}/MESSAGE${SUBPACKAGE}: ${MESSAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.  endif
.endif
.if ${FAKE:L} == "yes"
PKG_ARGS+=		-s ${WRKINST}${PREFIX}
.endif

CHMOD?=		/bin/chmod
CHOWN?=		/usr/sbin/chown
GUNZIP_CMD?=	/usr/bin/gunzip -f
GZCAT?=		/usr/bin/gzcat
GZIP?=		-9
GZIP_CMD?=	/usr/bin/gzip -nf ${GZIP}
LDCONFIG?=	[ ! -x /sbin/ldconfig ] || /sbin/ldconfig
LDCONFIG_SED_SCRIPT?=${PORTSDIR}/infrastructure/install/ldconfig-new.sed
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

# basic master sites configuration

.if exists(${PORTSDIR}/infrastructure/db/network.conf)
.include "${PORTSDIR}/infrastructure/db/network.conf"
.else
.include "${PORTSDIR}/infrastructure/templates/network.conf.template"
.endif
# Where to put distfiles that don't have any other master site
# ;;; This is referenced in a few Makefiles -- we'd like to get rid of it
#
MASTER_SITE_LOCAL?= \
	ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/LOCAL_PORTS/ \
	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/LOCAL_PORTS/

# Empty declarations to avoid "variable XXX is recursive" errors
MASTER_SITES?=
# I guess we're in the master distribution business! :)  As we gain mirror
# sites for distfiles, add them to this list.
.if !defined(MASTER_SITE_OVERRIDE)
MASTER_SITES:=	${MASTER_SITES} ${MASTER_SITE_BACKUP}
.else
MASTER_SITES:=	${MASTER_SITE_OVERRIDE} ${MASTER_SITES}
.endif

# _SITE_SELECTOR chooses the value of sites based on select.
_SITE_SELECTOR=case $$select in


.for _I in 0 1 2 3 4 5 6 7 8 9
.  if defined(MASTER_SITES${_I})
.    if !defined(MASTER_SITE_OVERRIDE)
MASTER_SITES${_I}:=	${MASTER_SITES${_I}} ${MASTER_SITE_BACKUP}
.    else
MASTER_SITES${_I}:= ${MASTER_SITE_OVERRIDE} ${MASTER_SITES${_I}}
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
CDROM_SITE=	/cdrom/distfiles/${DIST_SUBDIR}
.endif

.if defined(CDROM_SITE)
.  if defined(FETCH_SYMLINK_DISTFILES)
_CDROM_OVERRIDE=if ln -s ${CDROM_SITE}/$$f .; then exit 0; fi
.  else
_CDROM_OVERRIDE=if cp -f ${CDROM_SITE}/$$f .; then exit 0; fi
.  endif
.else
_CDROM_OVERRIDE=:
.endif

EXTRACT_SUFX?=		.tar.gz

DISTFILES?=		${DISTNAME}${EXTRACT_SUFX}

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
.if defined(DIST_SUBDIR) && !empty(DIST_SUBDIR)
_CKSUMFILES=	${CKSUMFILES:S/^/${DIST_SUBDIR}\//}
_IGNOREFILES=	${IGNOREFILES:S/^/${DIST_SUBDIR}\//}
.else
_CKSUMFILES=	${CKSUMFILES}
_IGNOREFILES=	${IGNOREFILES}
.endif

# This is what is actually going to be extracted, and is overridable
#  by user.
EXTRACT_ONLY?=	${_DISTFILES}

# okay, time for some guess work
.if !empty(EXTRACT_ONLY:M*.zip)
_USE_ZIP?=	Yes
.endif
.if !empty(EXTRACT_ONLY:M*.tar.bz2) || (defined(PATCHFILES) && !empty(_PATCHFILES:M*.bz2))
_USE_BZIP2?=	Yes
.endif 
_USE_ZIP?=	No
_USE_BZIP2?=	No

EXTRACT_CASES?= 

_PERL_FIX_SHAR?=perl -ne 'print if $$s || ($$s = m:^\#(\!\s*/bin/sh\s*| This is a shell archive):)'

# XXX note that we DON'T set EXTRACT_SUFX.
.if ${_USE_ZIP:L} != "no"
BUILD_DEPENDS+=		:unzip-*:archivers/unzip
EXTRACT_CASES+= *.zip) ${UNZIP} -q ${FULLDISTDIR}/$$archive -d ${WRKDIR};;
.endif
.if ${_USE_BZIP2:L} != "no"
BUILD_DEPENDS+=		:bzip2-*:archivers/bzip2
EXTRACT_CASES+= *.tar.bz2) ${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;
.endif
EXTRACT_CASES+= *.tar) ${TAR} xf ${FULLDISTDIR}/$$archive;;
EXTRACT_CASES+= *.shar.gz|*.shar.Z|*.sh.gz|*.sh.Z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${_PERL_FIX_SHAR} | /bin/sh;;
EXTRACT_CASES+= *.shar | *.sh) ${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;
EXTRACT_CASES+= *.tar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;
EXTRACT_CASES+= *.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive >`basename $$archive .gz`;;
EXTRACT_CASES+= *) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

PATCH_CASES?=
.if ${_USE_BZIP2:L} != "no"
PATCH_CASES+= *.bz2) ${BZIP2} -dc $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
.endif
PATCH_CASES+= *.Z|*.gz) ${GZCAT} $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
PATCH_CASES+= *) ${PATCH} ${PATCH_DIST_ARGS} < $$patchfile;;

# Documentation
MAINTAINER?=	The OpenBSD ports mailing-list <ports@openbsd.org>

.if !defined(CATEGORIES)
ERRORS+=	"Fatal: CATEGORIES is mandatory."
.endif


CONFIGURE_SCRIPT?=	configure
.if ${CONFIGURE_SCRIPT:M/*}
_CONFIGURE_SCRIPT=${CONFIGURE_SCRIPT}
.else
.  if defined(SEPARATE_BUILD)
_CONFIGURE_SCRIPT=${WRKSRC}/${CONFIGURE_SCRIPT}
.  else
_CONFIGURE_SCRIPT=./${CONFIGURE_SCRIPT}
.  endif
.endif

CONFIGURE_ENV+=		PATH=${PORTPATH}

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

.if ${FAKE:L} == "yes"
MANPREFIX?=  ${WRKINST}${TRUEPREFIX}
CATPREFIX?=  ${WRKINST}${TRUEPREFIX}
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

USE_X11?=No
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
.  if (defined(REGRESS_IS_INTERACTIVE) && defined(BATCH))
_IGNORE_REGRESS=	"has interactive tests"
.  elif (!defined(REGRESS_IS_INTERACTIVE) && defined(INTERACTIVE))
_IGNORE_REGRESS=	"does not have interactive tests"
.  endif
.  if (defined(IS_INTERACTIVE) && defined(BATCH))
IGNORE=	"is an interactive port"
.  elif (!defined(IS_INTERACTIVE) && defined(INTERACTIVE))
IGNORE=	"is not an interactive port"
.  elif (defined(RESTRICTED) && defined(NO_RESTRICTED))
IGNORE=	"is restricted: ${RESTRICTED}"
.  elif ${USE_X11:L} == "yes" && !exists(${X11BASE})
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
.  elif defined(NOT_FOR_ARCHS)
.    for __ARCH in ${MACHINE_ARCH} ${ARCH}
.      if !empty(NOT_FOR_ARCHS:M${__ARCH})
IGNORE= "is not for ${NOT_FOR_ARCHS}"
.      endif
.    endfor
.  endif
.  if !defined(IGNORE) && defined(COMES_WITH)
.    if ( ${OPSYS_VER} >= ${COMES_WITH} )
IGNORE= "-- ${FULLPKGNAME${SUBPACKAGE}:C/-[0-9].*//g} comes with ${OPSYS} as of release ${COMES_WITH}"
.    endif
.  endif

.endif		# NO_IGNORE


.if !defined(DEPENDS_TARGET)
.  if make(reinstall)
DEPENDS_TARGET=	reinstall
.  else
DEPENDS_TARGET=	install
.  endif
.endif

makesum: fetch-all
.if !defined(NO_CHECKSUM) 
	@rm -f ${CHECKSUM_FILE}
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
.if !defined(NO_CHECKSUM)
	@touch ${CHECKSUM_FILE}
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

################################################################
# Dependency checking
################################################################

# Code to invoke to split dir,-multi,flavor

_flavor_fragment= \
		multi=''; flavor=''; sawflavor=false; \
		case "$$dir" in \
		*,*) \
			IFS=,; first=true; for i in $$dir; do \
				if $$first; then \
					dir=$$i; first=false; \
				else \
					case X"$$i" in \
						X-*) \
							multi="$$i";; \
						*) \
							sawflavor=true; \
							flavor="$$flavor $$i";; \
					esac \
				fi; \
			done; unset IFS;; \
		esac; \
		toset="PKGPATH=$$dir"; \
		case X$$multi in "X");; *) \
			toset="$$toset SUBPACKAGE=\"$$multi\"";; \
		esac; \
		if $$sawflavor; then \
			toset="$$toset FLAVOR=\"$$flavor\""; \
		fi; \
		cd ${PORTSDIR}; \
		if [ -L $$dir ]; then \
			echo 1>&2 ">> Broken dependency: $$dir is a symbolic link"; \
			exit 1; \
		fi; \
		if cd $$dir 2>/dev/null || cd mystuff/$$dir 2>/dev/null; then \
			:; \
		else \
			echo 1>&2 ">> Broken dependency: $$dir non existent"; \
			exit 1; \
		fi

# Various dependency styles

_fetch_depends_fragment= \
	if pkg dependencies check $$pkg; then \
		found=true; \
	fi

_build_depends_fragment=${_fetch_depends_fragment}
_run_depends_fragment=${_fetch_depends_fragment}
_regress_depends_fragment=${_fetch_depends_fragment}

.if defined(NO_SHARED_LIBS)
_noshared=-noshared
.else
_noshared=
.endif

_libresolve_fragment = \
		case "$$d" in \
		*/*) shprefix="$${d%/*}/"; shdir="${LOCALBASE}/$${d%/*}"; \
			d=$${d\#\#*/};; \
		*) shprefix="" shdir="${LOCALBASE}/lib";; \
		esac; \
		check=`eval $$listlibs| perl \
			${PORTSDIR}/infrastructure/build/resolve-lib ${_noshared} $$d` \
			|| true


_lib_depends_fragment = \
	what=$$dep; \
	IFS=,; bad=false; for d in $$dep; do \
		listlibs='ls $$shdir 2>/dev/null'; \
		${_libresolve_fragment}; \
		case "$$check" in \
		Missing\ library) bad=true; msg="$$msg $$d missing...";; \
		Error:*) bad=true; msg="$$msg $$d unsolvable...";; \
		esac; \
	done; $$bad || found=true


_misc_depends_fragment = :

depends: lib-depends misc-depends fetch-depends build-depends run-depends\
	regress-depends

# Let DEPENDS behave like the others
.if defined(DEPENDS)
MISC_DEPENDS=${DEPENDS:S/^/nonexistent::/}
.endif

# and the rules for the actual dependencies

_print-packagename:
	@echo ${FULLPKGNAME${SUBPACKAGE}}

.for _DEP in fetch build run lib misc regress
_DEP${_DEP}_COOKIES=
.  if defined(${_DEP:U}_DEPENDS) && ${NO_DEPENDS:L} == "no"
.    for _i in ${${_DEP:U}_DEPENDS}
${WRKDIR}/.${_DEP}${_i:C,[|:./<=>*],-,g}: ${_WRKDIR_COOKIE}
	@unset PACKAGING DEPENDS_TARGET FLAVOR SUBPACKAGE _MASTER WRKDIR|| true; \
	echo '${_i}'|{ \
		IFS=:; read dep pkg dir target; \
		${_flavor_fragment}; defaulted=false; \
		case "X$$target" in X) target=${DEPENDS_TARGET};; esac; \
		case "X$$target" in \
		Xinstall|Xreinstall) early_exit=false;; \
		Xpackage) early_exit=true;; \
		*) \
			early_exit=true; mkdir -p ${WRKDIR}/$$dir; \
			toset="$$toset _MASTER='[${FULLPKGNAME${SUBPACKAGE}}]${_MASTER}' WRKDIR=${WRKDIR}/$$dir"; \
			dep="/nonexistent";; \
		esac; \
		case "X$$pkg" in X) pkg=`eval $$toset ${MAKE} _print-packagename`; \
			defaulted=true;; esac; \
		for abort in false false true; do \
			if $$abort; then \
				${ECHO_MSG} "Dependency check failed"; \
				exit 1; \
			fi; \
			found=false; \
			what=$$pkg; \
			case "$$dep" in \
			"/nonexistent") ;; \
			*)  \
				${_${_DEP}_depends_fragment}; \
				if $$found; then \
					${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} depends on: $$what - found"; \
					break; \
				else \
					: $${msg:= not found}; \
					${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} depends on: $$what -$$msg"; \
				fi;; \
			esac; \
			${ECHO_MSG} "===>  Verifying $$target for $$what in $$dir"; \
			if eval $$toset ${MAKE} ${_DEPEND_THRU} $$target; then \
				${ECHO_MSG} "===> Returning to build of ${FULLPKGNAME${SUBPACKAGE}}${_MASTER}"; \
			else \
				exit 1; \
			fi; \
			if $$early_exit; then \
				break; \
			fi; \
		done; \
	}
	@${_MAKE_COOKIE} $@
_DEP${_DEP}_COOKIES+=${WRKDIR}/.${_DEP}${_i:C,[|:./<=>*],-,g}
.    endfor
.  endif
${_DEP}-depends: ${_DEP${_DEP}_COOKIES}
.endfor

# Do a brute-force ldd/objdump on all files under WRKINST. 
.if ${ELF_TOOLCHAIN:L} == "no"
${_LIBLIST}: ${_FAKE_COOKIE}
	@${SUDO} mkdir -p ${WRKINST}/usr/libexec
	@-${SUDO} cp -f /usr/libexec/ld.so ${WRKINST}/usr/libexec
	@-${SUDO} cp -f /usr/lib/libc.so.* ${WRKINST}
	@-${SUDO} cp -f /usr/bin/ldd ${WRKINST}
	@cd ${WRKINST} && ${SUDO} find . -type f|\
		${SUDO} env LD_LIBRARY_PATH=. xargs chroot ${WRKINST} \
		./ldd -f '\tlibrary: %o %m %n\n' -f '\tlibrary: %o %m %n\n' 2>/dev/null|\
		grep '^	'|\
		sort -u >$@
.else
${_LIBLIST}: ${_FAKE_COOKIE}
	@cd ${WRKINST} && ${SUDO} find . -type f|\
		xargs objdump -p 2>/dev/null |\
		grep NEEDED |\
		sed 's/\ lib//g' |\
		sed 's/  NEEDED     /	library: /g' |\
		sed 's/\.so\./ /g' |\
		sed 's/^\(.*\)\ \([^\.]*\)\.\([^\.]*\)/\1\ \2\ \3/g' |\
		sort -u >$@
.endif

# list of libraries that can be used: libraries just built, and system libs.
${_BUILDLIBLIST}: ${_FAKE_COOKIE}
	@{ \
		${SUDO} find ${WRKINST} -type f -o -type l; \
		find /usr/lib -path /usr/lib -o -type d -prune -o -type f -print; \
		find ${X11BASE}/lib -path ${X11BASE}/lib -o -type d -prune -o -type f -print; \
	}|\
		fgrep .so.|${SUDO} xargs file -L|fgrep 'shared'|cut -d\: -f1|sort -u >$@



.if defined(IGNORE) && !defined(NO_IGNORE)
fetch checksum extract patch configure all build install regress \
uninstall deinstall fake package lib-depends-check manpages-check:
.  if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${IGNORE}."
.  endif

.else 
# For now, just check all libnames are present
# The check is done on the fake area, be wary of multi-packages situation,
# since we don't take it into account yet.
#
# Note that we cache needed library names, and libraries we're allowed to
# depend upon, but not the actual list of lib depends, since this list is
# going to be tweaked as a result of running lib-depends-check.
#
lib-depends-check: ${_LIBLIST} ${_BUILDLIBLIST}
	@LIB_DEPENDS="`${MAKE} _recurse-lib-depends`" PKG_DBDIR='${PKG_DBDIR}' \
		perl ${PORTSDIR}/infrastructure/install/check-libs \
		${_LIBLIST} ${_BUILDLIBLIST}

manpages-check: ${_FAKE_COOKIE}
	@cd ${WRKINST}${TRUEPREFIX}/man && \
		${SUDO} /usr/libexec/makewhatis -p . && \
		cat whatis.db

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
# See ports/infrastructure/templates/Makefile.template
	@${ECHO_MSG} "===>  Checking files for ${FULLPKGNAME}${_MASTER}"
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
.  if ! defined(NO_CHECKSUM)
	@checksum_file=${CHECKSUM_FILE}; \
	if [ ! -f $$checksum_file ]; then \
	  ${ECHO_MSG} ">> No checksum file."; \
	else \
	  cd ${DISTDIR}; OK=true; list=''; \
		for file in ${_CKSUMFILES}; do \
		  for cipher in ${PREFERRED_CIPHERS}; do \
			set -- `grep -i "^$$cipher ($$file)" $$checksum_file` && break || \
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
		  set -- `grep "($$file)" $$checksum_file` || \
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
			echo "Make sure the Makefile and checksum file ($$checksum_file)"; \
			echo "are up to date.  If you want to fetch a good copy of this"; \
			echo "file from the OpenBSD main archive, type"; \
			echo "\"make REFETCH=true [other args]\"."; \
			exit 1; \
		  fi; \
		fi ; \
  fi
.  endif

refetch:
.  for file cipher value in ${PROBLEMS}
		@rm ${DISTDIR}/${file}
		@cd ${.CURDIR} && ${MAKE} ${DISTDIR}/${file} \
			MASTER_SITE_OVERRIDE="ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/${cipher}/${value}/"
.  endfor
	cd ${.CURDIR} && exec ${MAKE} checksum REFETCH=false


# Normal user-mode targets are PHONY targets, e.g., don't create the
# corresponding file. However, there is nothing phony about the cookie.

BULK?=No
_INSTALL_DEPS=${_INSTALL_COOKIE}
_PACKAGE_DEPS=${_PACKAGE_COOKIES}
.  if defined(ALWAYS_PACKAGE)
_INSTALL_DEPS+=${_PACKAGE_COOKIES}
.  endif
.  if ${BULK:L} == "yes"
_INSTALL_DEPS+=${_BULK_COOKIE}
_PACKAGE_DEPS+=${_BULK_COOKIE}
.  endif

# The cookie's recipe hold the real rule for each of those targets.

extract: ${_EXTRACT_COOKIE}
patch: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} ${_DEPmisc_COOKIES} \
	${_PATCH_COOKIE}
distpatch: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} ${_DEPmisc_COOKIES} \
	${_DISTPATCH_COOKIE}
configure: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} ${_DEPmisc_COOKIES} \
	${_CONFIGURE_COOKIE}
all build: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} ${_DEPmisc_COOKIES} \
	${_BUILD_COOKIE}
install: ${_INSTALL_DEPS}
fake: ${_FAKE_COOKIE}
package: ${_PACKAGE_DEPS}


.  if defined(_IGNORE_REGRESS)
regress:
.    if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${_IGNORE_REGRESS}."
.    endif
.  else
regress: ${_DEPregress_COOKIES} ${_REGRESS_COOKIE}
.  endif

.endif # IGNORECMD

BULK_TARGETS?= ftp-packages cdrom-packages

${_BULK_COOKIE}: ${_PACKAGE_COOKIES}
	@mkdir -p ${BULK_COOKIES_DIR}
.for _i in ${BULK_TARGETS}
	@${ECHO_MSG} "===> Running ${_i}"
	@exec ${MAKE} ${_i} ${BULK_FLAGS}
.endfor
	@exec ${SUDO} ${MAKE} clean
	@${_MAKE_COOKIE} $@

# The real targets. Note that some parts always get run, some parts can be
# disabled, and there are hooks to override behavior.

${_WRKDIR_COOKIE}:
	@rm -rf ${WRKDIR}
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin
	@${_MAKE_COOKIE} $@

${_EXTRACT_COOKIE}: ${_WRKDIR_COOKIE} 
	@cd ${.CURDIR} && exec ${MAKE} checksum build-depends lib-depends misc-depends
	@${ECHO_MSG} "===>  Extracting for ${FULLPKGNAME}${_MASTER}"
.if target(pre-extract)
	@cd ${.CURDIR} && exec ${MAKE} pre-extract
.endif
.if target(do-extract)
	@cd ${.CURDIR} && exec ${MAKE} do-extract
.else
# What EXTRACT normally does:
	@PATH=${PORTPATH}; set -e; cd ${WRKDIR}; \
	for archive in ${EXTRACT_ONLY}; do \
		case $$archive in \
		${EXTRACT_CASES} \
		esac; \
	done
# End of EXTRACT
.endif
.if target(post-extract)
	@cd ${.CURDIR} && exec ${MAKE} post-extract
.endif
	@${_MAKE_COOKIE} $@



# Both distpatch and patch invoke pre-patch, if it's defined.
# Hence it needs special treatment (a specific cookie).
.if target(pre-patch)
${_PREPATCH_COOKIE}:
	@cd ${.CURDIR} && exec ${MAKE} pre-patch
.  if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.  endif
.endif



# The real distpatch

${_DISTPATCH_COOKIE}: ${_EXTRACT_COOKIE}
.if target(pre-patch)
	@cd ${.CURDIR} && exec ${MAKE} ${_PREPATCH_COOKIE}
.endif
.if target(do-distpatch)
	@cd ${.CURDIR} && exec ${MAKE} do-distpatch
.else
# What DISTPATCH normally does
.  if defined(_PATCHFILES)
	@${ECHO_MSG} "===>  Applying distribution patches for ${FULLPKGNAME}${_MASTER}"
	@cd ${FULLDISTDIR}; \
	  for patchfile in ${_PATCHFILES}; do \
	  	case "${PATCH_DEBUG:L}" in \
			no) ;; \
			*) ${ECHO_MSG} "===>   Applying distribution patch $$patchfile" ;; \
		esac; \
		case $$patchfile in \
			${PATCH_CASES} \
		esac; \
	  done
.  endif
# End of DISTPATCH.
.endif
.if target(post-distpatch)
	@cd ${.CURDIR} && exec ${MAKE} post-distpatch
.endif
.if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.endif

# The real patch

${_PATCH_COOKIE}: ${_EXTRACT_COOKIE}
	@${ECHO_MSG} "===>  Patching for ${FULLPKGNAME}${_MASTER}"
.if target(pre-patch)
	@cd ${.CURDIR} && exec ${MAKE} ${_PREPATCH_COOKIE}
.endif
.if target(do-patch)
	@cd ${.CURDIR} && exec ${MAKE} do-patch
.else
# What PATCH normally does:
# XXX test for efficiency, don't bother with distpatch if it's not needed
.  if target(do-distpatch) || target(post-distpatch) || defined(PATCHFILES) 
	@cd ${.CURDIR} && exec ${MAKE} distpatch
.  endif 
	@if cd ${PATCHDIR} 2>/dev/null || [ x"${PATCH_LIST:M/*}" != x"" ]; then \
		error=false; \
		for i in ${PATCH_LIST}; do \
			case $$i in \
				*.orig|*.rej|*~) \
					${ECHO_MSG} "===>   Ignoring patchfile $$i" ; \
					;; \
				*) \
				    if [ -e $$i ]; then \
						case "${PATCH_DEBUG:L}" in \
							no) ;; \
							*) ${ECHO_MSG} "===>   Applying ${OPSYS} patch $$i" ;; \
						esac; \
						${PATCH} ${PATCH_ARGS} < $$i || \
							{ echo "***>   $$i did not apply cleanly"; \
							error=true; }\
					else \
						if [ $$i != "patch-*" ]; then \
							echo "===>   Can't find patch matching $$i"; \
							error=true; \
						fi; \
					fi; \
					;; \
			esac; \
		done;\
		if $$error; then exit 1; fi; \
	fi
# End of PATCH.
.endif
.if target(post-patch)
	@cd ${.CURDIR} && exec ${MAKE} post-patch
.endif
.for _m in ${MODULES}
.  if defined(MOD${_m:U}_post-patch)
	@${MOD${_m:U}_post-patch}
.  endif
.endfor
.if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.endif


MODSIMPLE_configure= \
	cd ${WRKBUILD} && CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS}" \
		CXX="${CXX}" ac_cv_path_CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
		INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		ac_given_INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
		YACC="${YACC}" \
		${CONFIGURE_ENV} ${_CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}

# The real configure

${_CONFIGURE_COOKIE}: ${_PATCH_COOKIE}
	@${ECHO_MSG} "===>  Configuring for ${FULLPKGNAME}${_MASTER}"
	@mkdir -p ${WRKBUILD} ${WRKPKG}
.if target(pre-configure)
	@cd ${.CURDIR} && exec ${MAKE} pre-configure
.endif
.if target(do-configure)
	@cd ${.CURDIR} && exec ${MAKE} do-configure
.else
# What CONFIGURE normally does
	@if [ -f ${SCRIPTDIR}/configure ]; then \
		cd ${.CURDIR} && ${SETENV} ${SCRIPTS_ENV} ${SH} \
		  ${SCRIPTDIR}/configure; \
	fi
.  for _c in ${CONFIGURE_STYLE:L}
.    if defined(MOD${_c:U}_configure)
	@${MOD${_c:U}_configure}
.    endif
.  endfor
# End of CONFIGURE.
.endif
.if target(post-configure)
	@cd ${.CURDIR} && exec ${MAKE} post-configure
.endif
	@${_MAKE_COOKIE} $@

VMEM_WARNING?=	No

# The real build

${_BUILD_COOKIE}: ${_CONFIGURE_COOKIE}
.if ${NO_BUILD:L} == "no"
	@${ECHO_MSG} "===>  Building for ${FULLPKGNAME}${_MASTER}"
.if ${VMEM_WARNING:L} == "yes"
	@echo ""; \
	echo "*** WARNING: you may see an error such as"; \
	echo "***       virtual memory exhausted"; \
	echo "*** when building this package.  If you do you must increase"; \
	echo "*** your limits.  See the man page for your shell and look"; \
	echo "*** for the 'limit' or 'ulimit' command. You may also want to"; \
	echo "*** see the login.conf(5) manual page."; \
	echo "*** Some examples are: "; \
	echo "*** 	csh(1) and tcsh(1): limit datasize <kbytes of memory>"; \
	echo "***	ksh(1), zsh(1) and bash(1): ulimit -d <kbytes of memory>"; \
	echo ""; 
.endif
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
	@${_MAKE_COOKIE} $@

${_REGRESS_COOKIE}: ${_BUILD_COOKIE}
.if ${NO_REGRESS:L} == "no"
	@${ECHO_MSG} "===>  Regression check for ${FULLPKGNAME}${_MASTER}"
.  if target(pre-regress)
	@cd ${.CURDIR} && exec ${MAKE} pre-regress
.  endif
.  if target(do-regress)
	@cd ${.CURDIR} && exec ${MAKE} do-regress
.  else
# What REGRESS normally does:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}
# End of REGRESS
.  endif
.  if target(post-regress)
	@cd ${.CURDIR} && exec ${MAKE} post-regress
.  endif
.else
	@echo 1>&2 "No regression check for ${FULLPKGNAME}"
.endif
	@${_MAKE_COOKIE} $@

_FAKE_SETUP=TRUEPREFIX=${PREFIX} PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST}

PROTECT_MOUNT_POINTS?=

.if ${FAKE:L} == "yes"
${_FAKE_COOKIE}: ${_BUILD_COOKIE} ${WRKPKG}/mtree.spec
	@${ECHO_MSG} "===>  Faking installation for ${FULLPKGNAME}${_MASTER}"
	@if [ x`${SUDO} ${SH} -c umask` != x${DEF_UMASK} ]; then \
		echo >&2 "Error: your umask is \"`${SH} -c umask`"\".; \
		exit 1; \
	fi
	@${SUDO} install -d -m 755 -o root -g wheel ${WRKINST}
	@${SUDO} /usr/sbin/mtree -U -e -d -n -p ${WRKINST} \
		-f ${WRKPKG}/mtree.spec  >/dev/null
.  for _p in ${PROTECT_MOUNT_POINTS}
	@${SUDO} mount -u -r ${_p}
.  endfor
.  for _m in ${MODULES}
.    if defined(MOD${_m:U}_pre-fake)
	@${MOD${_m:U}_pre-fake}
.    endif
.  endfor

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
	@${ECHO_MSG} "===>   Uncompressing manual pages for ${FULLPKGNAME}${_MASTER}"
.      for manpage in ${_MANPAGES} ${_CATPAGES}
	@${SUDO} ${GUNZIP_CMD} ${manpage}.gz
.      endfor
.    elif !defined(MANCOMPRESSED) && !defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Compressing manual pages for ${FULLPKGNAME}${_MASTER}"
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
.  for _p in ${PROTECT_MOUNT_POINTS}
	@${SUDO} mount -u -w ${_p}
.  endfor
	@if ${SUDO} find ${WRKINST} -type l -ls|fgrep -- '-> ${WRKINST}'; then \
		echo >&2 "*** bad links in ${WRKINST}"; \
		exit 1; \
	fi
	@${SUDO} ${_MAKE_COOKIE} $@

# The real install

${_INSTALL_COOKIE}:  ${_PACKAGE_COOKIES}
	@cd ${.CURDIR} && DEPENDS_TARGET=package exec ${MAKE} run-depends lib-depends
	@${ECHO_MSG} "===>  Installing ${FULLPKGNAME${SUBPACKAGE}} from ${PKGFILE${SUBPACKAGE}}"
.  for _m in ${MODULES}
.    if defined(MOD${_m:U}_pre_install)
	@${MOD${_m:U}_pre_install}
.    endif
.  endfor
.  if ${TRUST_PACKAGES:L} == "yes"
	@if pkg dependencies check ${FULLPKGNAME${SUBPACKAGE}}; then \
		echo "Package ${FULLPKGNAME${SUBPACKAGE}} is already installed"; \
	else \
		${SUDO} ${SETENV} PKG_PATH=${PKGREPOSITORY}:${PKG_PATH} PKG_TMPDIR=${PKG_TMPDIR} pkg_add ${PKGFILE${SUBPACKAGE}}; \
	fi
.  else
	@${SUDO} ${SETENV} PKG_PATH=${PKGREPOSITORY}:${PKG_PATH} PKG_TMPDIR=${PKG_TMPDIR} pkg_add ${PKGFILE${SUBPACKAGE}}
.  endif
	@-${SUDO} ${_MAKE_COOKIE} $@
.endif 

# The real package

_package: ${_PKG_PREREQ}
.if !defined(NO_PACKAGE)
.  if target(pre-package)
	@cd ${.CURDIR} && exec ${MAKE} pre-package
.  endif
.  if target(do-package)
	@cd ${.CURDIR} && exec ${MAKE} do-package
.  else
# What PACKAGE normally does:
	@${ECHO_MSG} "===>  Building package for ${FULLPKGNAME${SUBPACKAGE}}"
	@if [ ! -d ${PKGREPOSITORY} ]; then \
	   if ! mkdir -p ${PKGREPOSITORY}; then \
	      echo ">> Can't create directory ${PKGREPOSITORY}."; \
		  exit 1; \
	   fi; \
	fi
# PLIST should normally hold no duplicates.
# This is left as a warning, because stuff such as @exec %F/%D
# completion may cause legitimate dups.
	@duplicates=`sort <${WRKPKG}/PLIST${SUBPACKAGE}|egrep -v '@(comment|mode|owner)'|uniq -d`; \
	case "$${duplicates}" in "");; \
		*) echo "\n*** WARNING *** Duplicates in PLIST:\n$$duplicates\n";; \
	esac
	@cd ${.CURDIR} && \
	  if ${SUDO} ${PKG_CMD} ${PKG_ARGS} ${PKGFILE${SUBPACKAGE}}; then \
	    mode=`id -u`:`id -g`; ${SUDO} ${CHOWN} $${mode} ${PKGFILE${SUBPACKAGE}}; \
	    ${MAKE} package-links; \
	  else \
	    ${SUDO} ${MAKE} delete-package; \
	    exit 1; \
	  fi
# End of PACKAGE.
.  endif
.  if target(post-package)
	@cd ${.CURDIR} && exec ${MAKE} post-package
.  endif
.else
.  if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}} may not be packaged: ${NO_PACKAGE}."
.  endif
.endif

.if !target(fetch-all)
fetch-all:
	@cd ${.CURDIR} && exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes NO_WARNINGS=Yes fetch
.endif

# Separate target for each file fetch will retrieve

.for _F in ${ALLFILES:S@^@${FULLDISTDIR}/@}
${_F}:
	@mkdir -p ${_F:H}; \
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

# Invoke "make cdrom-packages CDROM_PACKAGES=/cdrom/snapshots/packages"
# Invoke "make ftp-packages FTP_PACKAGES=/pub/OpenBSD/snapshots/packages"

.for _l in FTP CDROM

.  if ${PERMIT_PACKAGE_${_l}:L} == "yes" && !defined(IGNORE)
${_l:L}-packages: ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}
.  else
${_l:L}-packages:
.  endif
.  if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.    for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}' exec ${MAKE} ${.TARGET}
.    endfor
.  endif

${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}: ${_PACKAGE_COOKIE${SUBPACKAGE}}
.    if ${PERMIT_PACKAGE_${_l}:L} == "yes"
	@mkdir -p ${${_l}_PACKAGES}
	@rm -f ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}
	@ln ${PKGFILE${SUBPACKAGE}} \
	  ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX} 2>/dev/null || \
	  cp -p ${PKGFILE${SUBPACKAGE}} \
	  ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}
.    else
	@echo 1>&2 "Internal error: ${_l:L}-packages for a forbidden file ?"
	@false
.    endif

.endfor


# list the distribution and patch files used by a port.  Typical
# use is		make ECHO_MSG=: list-distfiles | tee some-file
#
list-distfiles:
	@echo "${FULLPKGNAME}"
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
		case $$cat in */*/*) parent=../../..;; */*) parent=../..;; *) parent=..;; esac; \
		ln -s $$parent/${PKGREPOSITORYSUBDIR}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX} ${PACKAGES}/$$cat; \
	done;
.endif

.if !target(delete-package-links)
delete-package-links:
	@cd ${PACKAGES} && find . -type l -name ${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}|xargs rm -f
.endif

.if !target(delete-package)
delete-package:
	@cd ${.CURDIR} && exec ${MAKE} delete-package-links
	@rm -f ${PKGFILE${SUBPACKAGE}}
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

reinstall:
	@${SUDO} ${PKG_DELETE} -f ${FULLPKGNAME${SUBPACKAGE}}
	@cd ${.CURDIR} && DEPENDS_TARGET=${DEPENDS_TARGET} exec ${MAKE} install

# Rebuild
#
# Special target to re-run build
rebuild:
	@rm -f ${_BUILD_COOKIE}
	@cd ${.CURDIR} && exec ${MAKE} build

# Deinstall
#
# Special target to remove installation

uninstall deinstall:
	@${ECHO_MSG} "===> Deinstalling for ${FULLPKGNAME${SUBPACKAGE}}"
	@${SUDO} ${PKG_DELETE} -f ${FULLPKGNAME${SUBPACKAGE}}


################################################################
# Some more targets supplied for users' convenience
################################################################

# Cleaning up

.if !target(pre-clean)
pre-clean:
.endif

.if !target(clean)
clean: pre-clean
.  if ${clean:L:Mdepends}
	@cd ${.CURDIR} && exec ${MAKE} clean-depends
.  endif
	@${ECHO_MSG} "===>  Cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
.  if ${clean:L:Mfake}
	@if cd ${WRKINST} 2>/dev/null; then ${SUDO} rm -rf ${WRKINST}; fi
.  endif
.  if ${clean:L:Mwork}
.    if ${clean:L:Mflavors}
	@for i in ${.CURDIR}/w-*; do \
		if [ -L $$i ]; then ${SUDO} rm -rf `readlink $$i`; fi; \
		${SUDO} rm -rf $$i; \
	done
.    else
	@if [ -L ${WRKDIR} ]; then rm -rf `readlink ${WRKDIR}`; fi
	@rm -rf ${WRKDIR}
.    endif 
.  endif
.  if ${clean:L:Mdist}
	@${ECHO_MSG} "===>  Dist cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
	@if cd ${FULLDISTDIR} 2>/dev/null; then \
		if [ "${_DISTFILES}" -o "${_PATCHFILES}" ]; then \
			rm -f ${_DISTFILES} ${_PATCHFILES}; \
		fi \
	fi
.    if defined(DIST_SUBDIR) && !empty(DIST_SUBDIR)
	-@rmdir ${FULLDISTDIR}  
.    endif
.  endif
.  if ${clean:L:Minstall}
.    if ${clean:L:Msub}
.	   for _s in ${MULTI_PACKAGES}
	-${SUDO} ${PKG_DELETE} ${clean:M-f} ${FULLPKGNAME${_s}}
.      endfor
.    else
	-${SUDO} ${PKG_DELETE} ${clean:M-f} ${FULLPKGNAME${SUBPACKAGE}}
.    endif
.  endif
.  if ${clean:L:Mpackages} || ${clean:L:Mpackage} && ${clean:L:Msub}
	rm -f ${_PACKAGE_COOKIES}
.  elif ${clean:L:Mpackage}
	rm -f ${PKGFILE${SUBPACKAGE}}
.  endif
.  if ${clean:L:Mbulk}
	rm -f ${_BULK_COOKIE}
.  endif
.endif

.if !target(pre-distclean)
pre-distclean:
.endif

.if !target(distclean)
distclean: pre-distclean
	@${MAKE} clean=dist
.endif

RECURSIVE_FETCH_LIST?=	Yes

# packing list utilities.  This generates a packing list from a recently
# installed port.  Not perfect, but pretty close.  The generated file
# will have to have some tweaks done by hand.
# Note: add @comment PACKAGE(arch=${MACHINE_ARCH}, opsys=${OPSYS}, vers=${OPSYS_VER})
# when port is installed or package created.
#
.if ${FAKE:L} == "yes"
_tmp:=
.  for _v in ${SUBST_VARS}
_tmp += ${_v}='${${_v}}'
.  endfor
plist update-plist: fake ${_DEPrun_COOKIES}
	@mkdir -p ${PKGDIR}
	@DESTDIR=${WRKINST} PREFIX=${WRKINST}${PREFIX} LDCONFIG="${LDCONFIG}" \
	MTREE_FILE=${WRKPKG}/mtree.spec \
	INSTALL_PRE_COOKIE=${_INSTALL_PRE_COOKIE} \
	DEPS="`${MAKE} package-depends|tsort`" \
	PKGREPOSITORY=${PKGREPOSITORY} \
	PLIST=${PLIST} \
	PFRAG=${PKGDIR}/PFRAG \
	FLAVORS='${FLAVORS}' MULTI_PACKAGES='${MULTI_PACKAGES}' \
	perl ${PORTSDIR}/infrastructure/install/make-plist ${PKGDIR} ${_tmp}
.endif

update-patches:
	@toedit=`WRKDIST=${WRKDIST} PATCHDIR=${PATCHDIR} \
		PATCH_LIST='${PATCH_LIST}' DIFF_ARGS='${DIFF_ARGS}' \
		DISTORIG=${DISTORIG} PATCHORIG=${PATCHORIG} \
		/bin/sh ${PORTSDIR}/infrastructure/build/update-patches`; \
	case $$toedit in "");; \
	*) read i?'edit patches: '; \
	cd ${PATCHDIR} && $${VISUAL:-$${EDITOR:-/usr/bin/vi}} $$toedit;; esac
	

################################################################
# The special package-building targets
# You probably won't need to touch these
################################################################

# mirroring utilities
.if defined(DIST_SUBDIR) && !empty(DIST_SUBDIR)
_ALLFILES=${ALLFILES:S/^/${DIST_SUBDIR}\//}
.else
_ALLFILES=${ALLFILES}
.endif

fetch-makefile:
.if !defined(COMES_WITH)
	@echo -n "all"
.  if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo -n " ftp"
.  endif
.  if ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n " cdrom"
.  endif
	@echo ":: ${PKGPATH}/${FULLPKGNAME}"
	@cd ${.CURDIR} && exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes NO_WARNINGS=Yes _fetch-makefile-helper
.endif

_fetch-makefile-helper:
# write generic package dependencies
	@name='${PKGPATH}/${FULLPKGNAME}'; \
	echo ".PHONY: $${name}"; \
	case '${RECURSIVE_FETCH_LIST:L}' in yes) \
	  echo "$${name}:: "`${MAKE} depends-list package-depends FULL_PACKAGE_NAME=Yes |${_SORT_DEPENDS}`;; \
	esac; \
	echo "$${name}:: ${_ALLFILES}"
.if !empty(ALLFILES)
.  for _F in ${_ALLFILES}
	@echo '${_F}: $$F'
	@echo -n '\t@MAINTAINER="${MAINTAINER}" '
.    if defined(DIST_SUBDIR) && !empty(DIST_SUBDIR)
	@echo -n 'DIST_SUBDIR="${DIST_SUBDIR}" '
.    endif
	@echo '\\'
	@select='${_EVERYTHING:M*${_F:S@^${DIST_SUBDIR}/@@}\:[0-9]}'; \
	${_SITE_SELECTOR}; \
	echo "\t SITES=\"$$sites\" \\"
.    if !defined(NO_CHECKSUM) && !empty(_CKSUMFILES:M${_F})
	@checksum_file=${CHECKSUM_FILE}; \
	if [ ! -f $$checksum_file ]; then \
	  echo >&2 'Missing checksum file: $$checksum_file'; \
	  echo '\t ERROR="no checksum file" \\'; \
	else \
	  for c in ${PREFERRED_CIPHERS}; do \
		if set -- `grep -i "^$$c (${_F})" $$checksum_file`; then break; fi; \
	  done; \
	  case "$$4" in \
		"") \
		  echo >&2 "No checksum recorded for ${_F}."; \
		  echo '\t ERROR="no checksum" \\';; \
		"IGNORE") \
		  echo >&2 "Checksum for ${_F} is IGNORE in $$checksum_file"; \
		  echo >&2 'but file is not in $${IGNORE_FILES}'; \
		  echo '\t ERROR="IGNORE inconsistent" \\';; \
		*) \
		  echo "\t CIPHER=\"$$c\" CKSUM=\"$$4\" \\";; \
	  esac; \
	fi
.    endif
	@echo '\t $${EXEC} $${FETCH} "$$@"'
.  endfor
.endif
	@echo
	

# The README.html target needs full information (this is passed via 
# depends-list and package-depends)
FULL_PACKAGE_NAME?=No

# Make variables to pass along on recursive builds
_DEPEND_THRU=FULL_PACKAGE_NAME=${FULL_PACKAGE_NAME}

# XXX
package-name:
.  if (${FULL_PACKAGE_NAME:L} == "yes")
	@${_DEPEND_ECHO} '${PKGPATH}/${FULLPKGNAME${SUBPACKAGE}}'
.  else
	@${_DEPEND_ECHO} '${FULLPKGNAME${SUBPACKAGE}}'
.  endif 

# Build a package but don't check the package cookie

.if !target(repackage)
repackage: pre-repackage package

pre-repackage:
	@rm -f ${_PACKAGE_COOKIES}
.endif

# Internal variables, used by dependencies targets 
# Only keep pkg:dir spec
.if defined(LIB_DEPENDS) || defined(MISC_DEPENDS)
_ALWAYS_DEP2 = ${LIB_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/} \
	${MISC_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_ALWAYS_DEP3 = ${MISC_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_ALWAYS_DEP= ${_ALWAYS_DEP2:C/[^:]*://}
.else
_ALWAYS_DEP3=
_ALWAYS_DEP2=
_ALWAYS_DEP=
.endif

.if defined(RUN_DEPENDS)
_RUN_DEP2 = ${RUN_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_RUN_DEP = ${_RUN_DEP2:C/[^:]*://}
.else
_RUN_DEP2=
_RUN_DEP=
.endif


.if defined(FETCH_DEPENDS) || defined(BUILD_DEPENDS)
_BUILD_DEP2 = ${FETCH_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/} \
	${BUILD_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_BUILD_DEP = ${_BUILD_DEP2:C/[^:]*://}
.else
_BUILD_DEP2=
_BUILD_DEP=
.endif

_LIB_DEP2= ${LIB_DEPENDS}
_RUN_DEP2+= ${_ALWAYS_DEP3}
_BUILD_DEP2+=${_ALWAYS_DEP3}

.if !target(clean-depends)
clean-depends:
.  if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP) || !empty(_RUN_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in \
	   `echo ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} CLEANDEPENDS=No ${_DEPEND_THRU} clean clean-depends; \
	done
.  endif
.endif

# This target generates an index entry suitable for aggregation into
# a large index.  Format is:
#
# distribution-name|port-path|installation-prefix|comment| \
#  description-file|maintainer|categories|lib-deps|build-deps|run-deps| \
#  for-arch|package-cdrom|package-ftp|distfiles-cdrom|distfiles-ftp
#
describe:
.if !defined(NO_DESCRIBE) 
.  if !defined(PACKAGING) && defined(MULTI_PACKAGES)
	@cd ${.CURDIR} && SUBPACKAGE='${SUBPACKAGE}' FLAVOR='${FLAVOR}' PACKAGING='${SUBPACKAGE}' exec ${MAKE} describe
.  else
	@echo -n "${FULLPKGNAME${SUBPACKAGE}}|${FULLPKGPATH}|"
.    if ${PREFIX} == ${LOCALBASE}
	@echo -n "|"
.    else
	@echo -n "${PREFIX}|"
.    endif
	@echo -n ${_COMMENT}"|"; \
	if [ -f ${DESCR} ]; then \
		echo -n "${DESCR:S,^${PORTSDIR}/,,}|"; \
	else \
		echo -n "/dev/null|"; \
	fi; \
	echo -n "${MAINTAINER}|${CATEGORIES}|"
.    for _d in LIB BUILD RUN
.      if !empty(_${_d}_DEP2)
	@cd ${.CURDIR} && _FINAL_ECHO=: _INITIAL_ECHO=: exec ${MAKE} ${_d:L}-depends-list
.      endif
	@echo -n "|"
.    endfor
	@case "${ONLY_FOR_ARCHS}" in \
	 "") case "${NOT_FOR_ARCHS}" in \
		 "") echo -n "any|";; \
		 *) echo -n "!${NOT_FOR_ARCHS}|";; \
		 esac;; \
	 *) echo -n "${ONLY_FOR_ARCHS}|";; \
	 esac

.    if defined(_BAD_LICENSING)
	@echo "?|?|?|?"
.    else
.      if ${PERMIT_PACKAGE_CDROM:L} == "yes"
	@echo -n "y|"
.      else
	@echo -n "n|"
.      endif
.      if ${PERMIT_PACKAGE_FTP:L} == "yes"
	@echo -n "y|"
.      else
	@echo -n "n|"
.      endif
.	   if ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n "y|"
.      else
	@echo -n "n|"
.      endif
.	   if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo "y"
.      else
	@echo "n"
.      endif
.    endif
.    if defined(MULTI_PACKAGES) && empty(SUBPACKAGE)
.      for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}' PACKAGING='${_sub}' exec ${MAKE} describe
.      endfor
.    endif
.  endif
.endif


README.html:
	@echo ${FULLPKGNAME${SUBPACKAGE}} | ${HTMLIFY} > $@.tmp3
.if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP) || target(depends-list)
	@cd ${.CURDIR} && ${MAKE} depends-list FULL_PACKAGE_NAME=Yes | ${_SORT_DEPENDS}>$@.tmp1
.endif
.if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP) || target(package-depends)
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
			echo "<li><a href=\"${PKGDEPTH}/$$j/README.html\">$$k</a>"; \
		 done; } >$@.tmp$Ia; \
    else \
    echo "<li>(none)" > $@.tmp$Ia; \
	fi
.endfor
	@cat ${README_NAME} | \
		sed -e 's|%%PORT%%|'"`echo ${PKGPATH}  | ${HTMLIFY}`"'|g' \
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
.  if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP) || target(depends-list)
	@echo -n 'This port requires package(s) "'
	@unset FLAVOR SUBPACKAGE || true; \
	echo -n `cd ${.CURDIR} && ${MAKE} ${_DEPEND_THRU} depends-list | ${_SORT_DEPENDS}`
	@echo '" to build.'
.  endif
.endif

.if !target(print-package-depends)
print-package-depends:
.  if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP) || target(package-depends)
	@echo -n 'This port requires package(s) "'
	@unset FLAVOR SUBPACKAGE || true; \
	echo -n `cd ${.CURDIR} && ${MAKE} ${_DEPEND_THRU} package-depends | ${_SORT_DEPENDS}`
	@echo '" to run.'
.  endif
.endif


.if !target(recurse-build-depends)
recurse-build-depends:
.  if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP) || !empty(_RUN_DEP)
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name ${_DEPEND_THRU}`; \
	unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		${_flavor_fragment}; \
		if ! eval $$toset ${MAKE} _DEPEND_ECHO=\"echo $$pname\" package-name recurse-build-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done 
.  else
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name`; echo $$pname $$pname
.  endif
.endif

.if !target(depends-list)
depends-list:
.  if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		${_flavor_fragment}; \
		if ! eval $$toset ${MAKE} recurse-build-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done 
.  endif
.endif

# Build (recursively) a list of package dependencies suitable for tsort
.if !target(recurse-package-depends)
recurse-package-depends:
.  if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP)
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name ${_DEPEND_THRU}`; \
	unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		${_flavor_fragment}; \
		if ! eval $$toset ${MAKE} _DEPEND_ECHO=\"echo $$pname\" package-name recurse-package-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"." ; \
			exit 1; \
		fi; \
	done
.  else
	@pname=`cd ${.CURDIR} && ${MAKE} _DEPEND_ECHO='echo -n' package-name`; echo $$pname $$pname
.  endif
.endif

# Print list of all libraries we're allowed to depend upon.
_recurse-lib-depends:
.for _i in  ${LIB_DEPENDS}
	@unset FLAVOR SUBPACKAGE  || true; \
	echo '${_i}' | { \
		IFS=:; read dep pkg dir target; \
		${_flavor_fragment}; \
		IFS=,; for j in $$dep; do echo $$j; done; \
		eval $$toset ${MAKE} ${_DEPEND_THRU} _recurse-lib-depends; \
	}
.endfor
.for _i in  ${RUN_DEPENDS}
	@unset FLAVOR SUBPACKAGE  || true; \
	echo '${_i}' | { \
		IFS=:; read dep pkg dir target; \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} ${_DEPEND_THRU} _recurse-lib-depends; \
	}
.endfor

.if !target(package-depends)
package-depends:
.  if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		${_flavor_fragment}; \
		if ! eval $$toset ${MAKE} recurse-package-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"." ; \
			exit 1; \
		fi; \
	done
.  endif
.endif

# recursively build a list of dirs to pass to tsort...
_recurse-dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP) || !empty(_RUN_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		echo "$$self $$dir"; \
		self2="$$dir"; \
		${_flavor_fragment}; \
		toset="$$toset self=\"$$self2\""; \
		if ! eval $$toset ${MAKE} _recurse-dir-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done 
.endif

# recursively build a list of dirs to pass to tsort...
dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_BUILD_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		echo "${FULLPKGPATH} $$dir"; \
		self2="$$dir"; \
		${_flavor_fragment}; \
		toset="$$toset self=\"$$self2\""; \
		if ! eval $$toset ${MAKE} _recurse-dir-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done 
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

.for _i in RUN BUILD LIB
${_i:L}-depends-list:
.  if !empty(_${_i}_DEP2)
	@unset FLAVOR SUBPACKAGE || true; \
	: $${_INITIAL_ECHO:='echo -n "This port requires \""'}; \
	: $${_ECHO='echo -n'}; \
	: $${_FINAL_ECHO:='echo "\" for ${_i:L}."'}; space=''; \
	eval $${_INITIAL_ECHO}; \
	for spec in `echo '${_${_i}_DEP2}' \
		| tr '\040' '\012' | sort -u`; do \
		$${_ECHO} "$$space$${spec}"; \
		space=' '; \
	done; eval $${_FINAL_ECHO}
.  endif
.endfor

# recursively build a list of dirs to pass to tsort...
_package-recurse-dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		echo "$$self $$dir"; \
		self2="$$dir"; \
		${_flavor_fragment}; \
		toset="$$toset self=\"$$self2\""; \
		if ! eval $$toset ${MAKE} _package-recurse-dir-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done 
.endif

# recursively build a list of dirs to pass to tsort...
package-dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP)
	@unset FLAVOR SUBPACKAGE || true; \
	for dir in `echo ${_ALWAYS_DEP} ${_RUN_DEP} \
		| tr '\040' '\012' | sort -u`; do \
		echo "${FULLPKGPATH} $$dir"; \
		self2="$$dir"; \
		${_flavor_fragment}; \
		toset="$$toset self=\"$$self2\""; \
		if ! eval $$toset ${MAKE} _package-recurse-dir-depends ${_DEPEND_THRU}; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done 
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

_solve-package-depends:
.if !empty(_RUN_DEP2)
	@unset FLAVOR SUBPACKAGE || true; \
	: $${self:=self}; \
	for spec in `echo '${_RUN_DEP2}' \
		| tr '\040' '\012' | sort -u`; do \
		dir=$${spec#*:}; pkg=$${spec%:*}; \
		${_flavor_fragment}; \
		default=`eval $$toset ${MAKE} _print-packagename`; \
		: $${pkg:=$$default}; \
		echo "@newdepend $$self:$$pkg:$$default" >>$${_depends_result}; \
		toset="$$toset self=\"$$default\""; \
		if ! eval $$toset ${MAKE} _solve-package-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"." ; \
			exit 1; \
		fi; \
	done
.endif
.if !defined(NO_SHARED_LIBS) && defined(LIB_DEPENDS) && !empty(LIB_DEPENDS)
.  for _i in ${LIB_DEPENDS}
	@unset FLAVOR SUBPACKAGE || true; \
	: $${self:=self}; \
		echo '${_i}'|{ \
			IFS=:; read dep pkg dir target; \
			${_flavor_fragment}; \
			libspecs='';comma=''; \
			default=`eval $$toset ${MAKE} _print-packagename`; \
			case "X$$pkg" in X) pkg=`echo $$default|sed -e 's,-[0-9].*,-*,'`;; esac; \
			if pkg dependencies check $$pkg; then \
				listlibs='ls $$shdir 2>/dev/null'; \
			else \
				eval $$toset ${MAKE} ${PKGREPOSITORY}/$$default.tgz; \
				listlibs='pkg_info -L ${PKGREPOSITORY}/$$default.tgz|grep $$shdir|sed -e "s,^$$shdir/,,"'; \
			fi; \
			IFS=,; for d in $$dep; do \
				${_libresolve_fragment}; \
				case "$$check" in \
				*.a) continue;; \
				Missing\ library|Error:*) \
					echo 1>&2 "Can't resolve libspec $$d"; \
					exit 1;; \
				*) \
					libspecs="$$libspecs$$comma$$shprefix$$check"; \
					comma=',';; \
				esac; \
			done; \
			case "X$$libspecs" in \
			X) ;;\
			*) \
				echo "@libdepend $$self:$$libspecs:$$pkg:$$default" >>$${_depends_result}; \
				toset="$$toset self=\"$$default\""; \
				if ! eval $$toset ${MAKE} _solve-package-depends; then  \
					echo 1>&2 "*** Problem checking deps in \"$$dir\"." ; \
					exit 1; \
				fi;; \
			esac; \
		}
.  endfor
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

.if !target(print-depends)
print-depends: 
	@cd ${.CURDIR} && exec ${MAKE} FULL_PACKAGE_NAME=Yes print-depends-list print-package-depends
.endif

.if defined(VARNAME)
show:
	@echo ${${VARNAME}:Q}
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

link-categories:
.for _CAT in ${CATEGORIES}
	@linkname=${PORTSDIR}/${_CAT}/`basename ${.CURDIR}`; \
	if [ ! -e $$linkname ]; then \
		echo "$$linkname -> ${.CURDIR}"; \
		mkdir -p ${PORTSDIR}/${_CAT}; \
		ln -s ${.CURDIR} $$linkname; \
	fi
.endfor

unlink-categories:
.for _CAT in ${CATEGORIES}
	@linkname=${PORTSDIR}/${_CAT}/`basename ${.CURDIR}`; \
	if [ -L $$linkname ]; then \
		echo "rm $$linkname"; \
		rm $$linkname; \
		if rmdir ${PORTSDIR}/${_CAT} 2>/dev/null; then \
			echo "rmdir ${PORTSDIR}/${_CAT}"; \
	    fi; \
	fi
.endfor
    
homepage-links:
.if defined(HOMEPAGE)
	@echo '<li><A HREF="${HOMEPAGE}">${PKGNAME}</A>'
.else
	@echo '<li>${PKGNAME}'
.endif

.if ${FAKE:L} == "no"
.  include "${PORTSDIR}/infrastructure/mk/old-install.mk"
.endif

.if defined(ERRORS)
.BEGIN:
.  for _m in ${ERRORS}
	@echo 1>&2 ${_m}
.  endfor
.  if !empty(ERRORS:M"Fatal\:*") || !empty(ERRORS:M'Fatal\:*')
	@exit 1
.  endif
.endif

.PHONY: \
   addsum all build build-depends regress regress-depends checkpatch \
   checksum clean clean-depends configure deinstall \
   delete-package delete-package-links depend depends depends-list \
   describe distclean do-build do-configure do-extract \
   do-fetch do-install do-package do-patch extract list-distfiles \
   fetch fetch-depends install lib-depends makesum \
   cdrom-packages ftp-packages \
   misc-depends package package-depends package-links package-name \
   package-noinstall patch plist update-plist update-patches post-build \
   post-configure post-extract post-fetch post-install post-package \
   post-patch pre-build pre-clean pre-configure pre-distclean \
   pre-extract pre-fetch pre-install pre-package pre-patch \
   pre-repackage print-depends-list print-package-depends readme \
   readmes rebuild reinstall \
   repackage run-depends tags uninstall fetch-all print-depends \
   recurse-build-depends recurse-package-depends \
   distpatch real-distpatch do-distpatch post-distpatch show \
   link-categories unlink-categories _package _solve-package-depends \
   dir-depends _recurse-dir-depends package-dir-depends \
   _package-recurse-dir-depends recursebuild-depends-list run-depends-list \
   _recurse-lib-depends lib-depends-check \
   homepage-links manpages-check
