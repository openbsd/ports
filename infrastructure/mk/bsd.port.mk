#-*- mode: Makefile; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	$OpenBSD: bsd.port.mk,v 1.644 2004/09/14 23:07:20 espie Exp $
#	$FreeBSD: bsd.port.mk,v 1.264 1996/12/25 02:27:44 imp Exp $
#	$NetBSD: bsd.port.mk,v 1.62 1998/04/09 12:47:02 hubertf Exp $
#
#	bsd.port.mk - 940820 Jordan K. Hubbard.
#	This file is in the public domain.

# Each port has a MAINTAINER, which is the email address(es) of the person(s)
# to contact if you have questions/suggestions about that specific port.
# To obtain that address, just type
#	make show=MAINTAINER
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

# The definitive source of documentation to this file's user-visible parts
# is bsd.port.mk(5).
#
# Any variable or target starting with an underscore (e.g., _DEPEND_ECHO)
# is internal to bsd.port.mk, not part of the user's API, and liable to
# change without notice.
#
#
# NO_PKG_REGISTER - Don't register a port install as a package.
# SCRIPTS_ENV	- Additional environment vars passed to scripts in
#                 ${SCRIPTDIR} executed by bsd.port.mk.
#
# Variables to change if you want a special behavior:
#
# DEPENDS_TARGET - The target to execute when a port is calling a
#				  dependency (default: "install").
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

# User settings
TRUST_PACKAGES?=No
BIN_PACKAGES?=No
CLEANDEPENDS?=No
USE_SYSTRACE?=	No
BULK?=No
RECURSIVE_FETCH_LIST?=	Yes
WRKOBJDIR?=
FAKEOBJDIR?=
BULK_TARGETS?=

# special purpose user settings
PATCH_CHECK_ONLY?=No
REFETCH?=false

# Constants used by the ports tree
ARCH!=	uname -m
OPSYS=	OpenBSD
OPSYS_VER=	${OSREV}

LP64_ARCHS=alpha amd64 sparc64
NO_SHARED_ARCHS=m88k vax

# Set NO_SHARED_LIBS for those machines that don't support shared libraries.
.for _m in ${MACHINE_ARCH}
.  if !empty(NO_SHARED_ARCHS:M${_m})
NO_SHARED_LIBS?=	Yes
.  endif
.endfor
NO_SHARED_LIBS?=	No

# Global path locations.
PORTSDIR?=		/usr/ports
LOCALBASE?=		/usr/local
X11BASE?=		/usr/X11R6
DISTDIR?=		${PORTSDIR}/distfiles
BULK_COOKIES_DIR?= ${PORTSDIR}/bulk/${MACHINE_ARCH}
TEMPLATES?=		${PORTSDIR}/infrastructure/templates
TMPDIR?=		/tmp

PKGREPOSITORYBASE?=	${PORTSDIR}/packages/${MACHINE_ARCH}
PKGREPOSITORY?=		${PKGREPOSITORYBASE}/all
CDROM_PACKAGES?=	${PKGREPOSITORYBASE}/cdrom
FTP_PACKAGES?=		${PKGREPOSITORYBASE}/ftp

# local path locations
.include "${PORTSDIR}/infrastructure/mk/pkgpath.mk"

WRKOBJDIR_${PKGPATH}?= ${WRKOBJDIR}
FAKEOBJDIR_${PKGPATH}?= ${FAKEOBJDIR}
BULK_${PKGPATH}?= ${BULK}
BULK_TARGETS_${PKGPATH}?= ${BULK_TARGETS}
CLEANDEPENDS_${PKGPATH}?= ${CLEANDEPENDS}

# Commands and command settings.
PKG_DBDIR?=		/var/db/pkg

FETCH_CMD?=		/usr/bin/ftp -V -m

PKG_TMPDIR?=	/var/tmp
PKG_CMD?=		/usr/sbin/pkg_create
PKG_DELETE?=	/usr/sbin/pkg_delete
.if ${MACHINE_ARCH} != ${ARCH}
PKG_ARCH?=${MACHINE_ARCH},${ARCH}
.else
PKG_ARCH?=${MACHINE_ARCH}
.endif

# remount those mount points ro before fake.
# XXX tends to panic the OS
PROTECT_MOUNT_POINTS?=

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
.MAIN: show
show:
.  for _s in ${show}
	@echo ${${_s}:Q}
.  endfor
.elif defined(clean)
.MAIN: clean
.elif defined(_internal-clean)
clean=${_internal-clean}
.MAIN: _internal-clean
.else
.MAIN: all
.endif

FAKE?=Yes
_LIBLIST=${WRKDIR}/.liblist-${ARCH}${_FLAVOR_EXT2}
_BUILDLIBLIST=${WRKDIR}/.buildliblist-${ARCH}${_FLAVOR_EXT2}


# need to go through an extra var because clean is set in stone, 
# on the cmdline.
_clean=${clean}
.if empty(_clean) || ${_clean:L} == "depends"
_clean+=work
.endif
.if ${CLEANDEPENDS_${PKGPATH}:L} == "yes"
_clean+=depends
.endif
.if ${_clean:L:Mwork}
_clean+=fake
.endif
.if ${_clean:L:Mforce}
_clean+=-f
.endif

NOMANCOMPRESS?=	Yes
DEF_UMASK?=		022

.if exists(${.CURDIR}/Makefile.${ARCH})
.include "${.CURDIR}/Makefile.${ARCH}"
.elif exists(${.CURDIR}/Makefile.${MACHINE_ARCH})
.include "${.CURDIR}/Makefile.${MACHINE_ARCH}"
.endif

NO_DEPENDS?= No
NO_BUILD?= No
NO_REGRESS?= No
SHARED_ONLY?=	No

DIST_SUBDIR?=

.if !empty(DIST_SUBDIR)
FULLDISTDIR?=	${DISTDIR}/${DIST_SUBDIR}
.else
FULLDISTDIR?=	${DISTDIR}
.endif

.if exists(${.CURDIR}/patches.${ARCH})
PATCHDIR?=		${.CURDIR}/patches.${ARCH}
.elif exists(${.CURDIR}/patches.${MACHINE_ARCH})
PATCHDIR?=		${.CURDIR}/patches.${MACHINE_ARCH}
.else
PATCHDIR?=		${.CURDIR}/patches
.endif

PATCH_LIST?=    patch-*

.if exists(${.CURDIR}/scripts.${ARCH})
SCRIPTDIR?=		${.CURDIR}/scripts.${ARCH}
.elif exists(${.CURDIR}/scripts.${MACHINE_ARCH})
SCRIPTDIR?=		${.CURDIR}/scripts.${MACHINE_ARCH}
.else
SCRIPTDIR?=		${.CURDIR}/scripts
.endif

.if exists(${.CURDIR}/files.${ARCH})
FILESDIR?=		${.CURDIR}/files.${ARCH}
.elif exists(${.CURDIR}/files.${MACHINE_ARCH})
FILESDIR?=		${.CURDIR}/files.${MACHINE_ARCH}
.else
FILESDIR?=		${.CURDIR}/files
.endif

.if exists(${.CURDIR}/pkg.${ARCH})
PKGDIR?=		${.CURDIR}/pkg.${ARCH}
.elif exists(${.CURDIR}/pkg.${MACHINE_ARCH})
PKGDIR?=		${.CURDIR}/pkg.${MACHINE_ARCH}
.else
PKGDIR?=		${.CURDIR}/pkg
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
.  if !${CONFIGURE_STYLE:L:Mgnu}
CONFIGURE_STYLE+=gnu
.  endif
.endif

USE_LIBTOOL?=No
.if ${USE_LIBTOOL:L} == "yes"
LIBTOOL?=			${LOCALBASE}/bin/libtool
BUILD_DEPENDS+=		::devel/libtool
CONFIGURE_ENV+=		LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
MAKE_ENV+=			LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
MAKE_FLAGS+=		LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
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
SED_PLIST+=|sed -e '/^!%%${_i}%%$$/r${PKGDIR}/PFRAG.no-${_i}${SUBPACKAGE}' -e '//d' -e '/^%%${_i}%%$$/d'
.    else
_FLAVOR_EXT2:=${_FLAVOR_EXT2}-${_i}
.    if empty(PSEUDO_FLAVORS:L:M${_i})
FLAVOR_EXT:=${FLAVOR_EXT}-${_i}
.    endif
SED_PLIST+=|sed -e '/^!%%${_i}%%$$/d' -e '/^%%${_i}%%$$/r${PKGDIR}/PFRAG.${_i}${SUBPACKAGE}' -e '//d'
.    endif
.  endfor
.endif

.if !empty(FLAVORS:M[0-9]*)
ERRORS+="Fatal: flavor should never start with a digit"
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

PKG_SUFX?=		.tgz

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

_SYSTRACE_COOKIE=	${WRKDIR}/systrace.policy
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
${_SYSTRACE_COOKIE} ${_PACKAGE_COOKIES} \
${_DISTPATCH_COOKIE} ${_PREPATCH_COOKIE} ${_FAKE_COOKIE} \
${_WRKDIR_COOKIE} ${_DEPlib_COOKIES} ${_DEPbuild_COOKIES} \
${_DEPrun_COOKIES} ${_DEPregress_COOKIES}

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
	MOTIFLIB='${MOTIFLIB}' CFLAGS='${CFLAGS:C/ *$//}' \
	TRUEPREFIX='${PREFIX}' ${DESTDIRNAME}='' \
	HOME='${PORTHOME}'

DISTORIG?=	.bak.orig
PATCH?=			/usr/bin/patch
PATCHORIG?=	.orig
PATCH_STRIP?=	-p0
PATCH_DIST_STRIP?=	-p0

PATCH_DEBUG?=No
.if ${PATCH_DEBUG:L} != "no"
PATCH_ARGS?=	-d ${WRKDIST} -z ${PATCHORIG} -E ${PATCH_STRIP}
PATCH_DIST_ARGS?=	-z ${DISTORIG} -d ${WRKDIST} -E ${PATCH_DIST_STRIP}
.else
PATCH_ARGS?=	-d ${WRKDIST} -z ${PATCHORIG} --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_ARGS?=	-z ${DISTORIG} -d ${WRKDIST} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

.if ${PATCH_CHECK_ONLY:L} == "yes"
PATCH_ARGS+=	-C
PATCH_DIST_ARGS+=	-C
.endif

TAR?=	/bin/tar
UNZIP?=	unzip
BZIP2?=	bzip2


MAKE_ENV+=	EXTRA_SYS_MK_INCLUDES="<bsd.own.mk>"


.if !empty(FAKEOBJDIR_${PKGPATH})
WRKINST?=	${FAKEOBJDIR_${PKGPATH}}/${PKGNAME}${_FLAVOR_EXT2}
.else
WRKINST?=	${WRKDIR}/fake-${ARCH}${_FLAVOR_EXT2}
.endif

.if !empty(WRKOBJDIR_${PKGPATH})
.  if defined(SEPARATE_BUILD) && ${SEPARATE_BUILD:L:Mflavored}
WRKDIR?=		${WRKOBJDIR_${PKGPATH}}/${PKGNAME}
.  else
WRKDIR?=		${WRKOBJDIR_${PKGPATH}}/${PKGNAME}${_FLAVOR_EXT2}
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

###
### Variable setup that can happen after modules
###

REGRESS_TARGET ?= regress
REGRESS_FLAGS ?= ${MAKE_FLAGS}

.if ${FAKE:L} == "yes"
_PACKAGE_COOKIE_DEPS=${_FAKE_COOKIE}
.else
_PACKAGE_COOKIE_DEPS=${_INSTALL_COOKIE}
.endif

_PACKAGE_COOKIES= ${_PACKAGE_COOKIE}
.for _s in ${MULTI_PACKAGES}
_PACKAGE_COOKIE${_s} = ${PKGFILE${_s}}
_PACKAGE_COOKIES += ${_PACKAGE_COOKIE${_s}}
.endfor

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

# setup systrace variables
NO_SYSTRACE?=	No
.if ${USE_SYSTRACE:L} == "yes" && ${NO_SYSTRACE:L} == "no"
_SYSTRACE_CMD?=	/bin/systrace -e -i -a -f ${_SYSTRACE_COOKIE}
.else
_SYSTRACE_CMD=
.endif
SYSTRACE_FILTER?=		${PORTSDIR}/infrastructure/db/systrace.filter
_SYSTRACE_POLICIES+=	/bin/sh /usr/bin/env /usr/bin/make \
	${LOCALBASE}/bin/gmake
SYSTRACE_SUBST_VARS+=	WRKDIR PORTSDIR DISTDIR TMPDIR PKG_TMPDIR
.for _v in ${SYSTRACE_SUBST_VARS}
_SYSTRACE_SED_SUBST+=-e 's,$${${_v}},${${_v}},g'
.endfor

# Create the generic variable substitution list, from subst vars
SUBST_VARS+=MACHINE_ARCH ARCH HOMEPAGE PREFIX SYSCONFDIR FLAVOR_EXT MAINTAINER
_tmpvars=
_SED_SUBST=sed
.for _v in ${SUBST_VARS}
_SED_SUBST+=-e 's|$${${_v}}|${${_v}}|g'
_tmpvars += ${_v}='${${_v}}'
.endfor
_SED_SUBST+=-e 's,$${FLAVORS},${FLAVOR_EXT},g' -e 's,$$\\,$$,g'
_tmpvars += FLAVORS='${FLAVOR_EXT}'
# and append it to the PLIST substitution pipeline
SED_PLIST+=|${_SED_SUBST}

# find out the most appropriate PLIST  source
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${ARCH}
.else
.  if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${MACHINE_ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.${MACHINE_ARCH}
.  endif
.endif
.if !defined(PLIST) && ${NO_SHARED_LIBS:L} == "yes" && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.noshared)
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}.noshared
.endif
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}${FLAVOR_EXT}
.endif
.if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.${ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.${ARCH}
.else
.  if !defined(PLIST) && exists(${PKGDIR}/PLIST${SUBPACKAGE}.${MACHINE_ARCH})
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.${MACHINE_ARCH}
.  endif
.endif
.if !defined(PLIST) && ${NO_SHARED_LIBS:L} == "yes" && exists(${PKGDIR}/PLIST${SUBPACKAGE}.noshared)
PLIST=		${PKGDIR}/PLIST${SUBPACKAGE}.noshared
.endif
PLIST?=		${PKGDIR}/PLIST${SUBPACKAGE}

# Likewise for DESCR/MESSAGE/COMMENT
.if defined(COMMENT${SUBPACKAGE}${FLAVOR_EXT})
_COMMENT=${COMMENT${SUBPACKAGE}${FLAVOR_EXT}}
.elif defined(COMMENT${SUBPACKAGE})
_COMMENT=${COMMENT${SUBPACKAGE}}
.endif

.if exists(${PKGDIR}/MESSAGE${SUBPACKAGE})
MESSAGE?= ${PKGDIR}/MESSAGE${SUBPACKAGE}
.endif

DESCR?=		${PKGDIR}/DESCR${SUBPACKAGE}

MTREE_FILE?=
MTREE_FILE+=${PORTSDIR}/infrastructure/db/fake.mtree

# Fill out package command, and package dependencies
_PKG_PREREQ= ${WRKPKG}/PLIST${SUBPACKAGE} ${WRKPKG}/DESCR${SUBPACKAGE} ${WRKPKG}/COMMENT${SUBPACKAGE}
# Note that if you override PKG_ARGS, you will not get correct dependencies
.if !defined(PKG_ARGS)
PKG_ARGS= -v -c '${WRKPKG}/COMMENT${SUBPACKAGE}' -d ${WRKPKG}/DESCR${SUBPACKAGE}
PKG_ARGS+=-f ${WRKPKG}/PLIST${SUBPACKAGE} -p ${PREFIX}
.  if exists(${PKGDIR}/INSTALL${SUBPACKAGE})
PKG_ARGS+=		-i ${WRKPKG}/INSTALL${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/INSTALL${SUBPACKAGE}
.  endif
.  if exists(${PKGDIR}/DEINSTALL${SUBPACKAGE})
PKG_ARGS+=		-k ${WRKPKG}/DEINSTALL${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/DEINSTALL${SUBPACKAGE}
.  endif
.  if exists(${PKGDIR}/REQ${SUBPACKAGE})
PKG_ARGS+=		-r ${WRKPKG}/REQ${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/REQ${SUBPACKAGE}
.  endif
.  if defined(MESSAGE)
PKG_ARGS+=		-D ${WRKPKG}/MESSAGE${SUBPACKAGE}
_PKG_PREREQ+=${WRKPKG}/MESSAGE${SUBPACKAGE}
.  endif
.endif
.if ${FAKE:L} == "yes"
PKG_ARGS+=		-B ${WRKINST}
.endif
PKG_ARGS+=-A'${PKG_ARCH}'
.if ${LOCALBASE} != "/usr/local"
PKG_ARGS+=-L${LOCALBASE}
.endif
.if !defined(_COMMENT)
ERRORS+="Fatal: Missing comment."
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
.  else
_SITE_SELECTOR+=*:${_I}) echo >&2 "Error: MASTER_SITES${_I} not defined";;
.  endif
.endfor
_SITE_SELECTOR+=*) sites="${MASTER_SITES}";; esac


# OpenBSD code to handle ports distfiles on a CDROM.  The distfiles
# are located in /cdrom/distfiles/${DIST_SUBDIR}/ (assuming that the
# CDROM is mounted on /cdrom).
#
CDROM_SITE?=	/cdrom/distfiles/${DIST_SUBDIR}

.if !empty(CDROM_SITE)
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

.if make(makesum) || make(addsum) || defined(__FETCH_ALL)
.  if defined(SUPDISTFILES)
_EVERYTHING+= ${SUPDISTFILES}
ALLFILES+= ${SUPDISTFILES:C/:[0-9]$//}
.  endif
.endif

__CKSUMFILES=
# First, remove duplicates
.for _file in ${ALLFILES}
.  if empty(__CKSUMFILES:M${_file})
__CKSUMFILES+=${_file}
.  endif
.endfor
ALLFILES:=${__CKSUMFILES}

.if defined(IGNOREFILES)
ERRORS+= "Fatal: don't use IGNOREFILES"
.endif

# List of all files, with ${DIST_SUBDIR} in front.  Used for checksum.
.if !empty(DIST_SUBDIR)
_CKSUMFILES=	${__CKSUMFILES:S/^/${DIST_SUBDIR}\//}
.else
_CKSUMFILES=	${__CKSUMFILES}
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

.if ${NO_SHARED_LIBS:L} == "yes"
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

USE_X11?=No

FETCH_MANUALLY?=No
.if ${FETCH_MANUALLY:L} != "no"
_ALLFILES_PRESENT=Yes
.  for _F in ${ALLFILES:S@^@${FULLDISTDIR}/@}
.    if !exists(${_F})
_ALLFILES_PRESENT=No
.    endif
.  endfor
.  if ${_ALLFILES_PRESENT:L} == "no"
IS_INTERACTIVE=Yes
.  endif
.endif

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
.  elif ${SHARED_ONLY:L} == "yes" && ${NO_SHARED_LIBS:L} == "yes"
IGNORE="requires shared libraries"
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

################################################################
# Dependency checking
################################################################

# Various dependency styles

_build_depends_fragment= \
	if pkg dependencies check "$$pkg"; then \
		found=true; \
	fi
_run_depends_fragment=${_build_depends_fragment}
_regress_depends_fragment=${_build_depends_fragment}

.if ${NO_SHARED_LIBS:L} == "yes"
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

_FULL_PACKAGE_NAME?=No

.for _DEP in build run lib regress
_DEP${_DEP}_COOKIES=
.  if defined(${_DEP:U}_DEPENDS) && ${NO_DEPENDS:L} == "no"
.    for _i in ${${_DEP:U}_DEPENDS}
_DEP${_DEP}_COOKIES+=${WRKDIR}/.${_DEP}${_i:C,[|:./<=>*],-,g}
.    endfor
.  endif
.endfor

# Normal user-mode targets are PHONY targets, e.g., don't create the
# corresponding file. However, there is nothing phony about the cookie.

_INSTALL_DEPS=${_INSTALL_COOKIE}
_PACKAGE_DEPS=${_PACKAGE_COOKIES}
.if defined(ALWAYS_PACKAGE)
_INSTALL_DEPS+=${_PACKAGE_COOKIES}
.endif
.if ${BULK_${PKGPATH}:L} == "yes"
_INSTALL_DEPS+=${_BULK_COOKIE}
_PACKAGE_DEPS+=${_BULK_COOKIE}
.endif

MODSIMPLE_configure= \
	cd ${WRKBUILD} && ${_SYSTRACE_CMD} ${SETENV} \
		CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS}" \
		CXX="${CXX}" ac_cv_path_CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
		INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		ac_given_INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
		YACC="${YACC}" \
		${CONFIGURE_ENV} ${_CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}

VMEM_WARNING?=	No

_FAKE_SETUP=TRUEPREFIX=${PREFIX} PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST}

_CLEANDEPENDS?=Yes

# mirroring utilities
.if !empty(DIST_SUBDIR)
_ALLFILES=${ALLFILES:S/^/${DIST_SUBDIR}\//}
.else
_ALLFILES=${ALLFILES}
.endif

_FMN=${PKGPATH}/${FULLPKGNAME}
.if defined(MULTI_PACKAGES)
.  for _S in ${MULTI_PACKAGES}
_FMN+= ${PKGPATH}/${FULLPKGNAME${_S}}
.  endfor
.endif

# Internal variables, used by dependencies targets
# Only keep pkg:dir spec
.if defined(LIB_DEPENDS) && ${NO_SHARED_LIBS:L} != "yes"
_ALWAYS_DEP2 = ${LIB_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_ALWAYS_DEP= ${_ALWAYS_DEP2:C/[^:]*://}
.else
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


.if defined(BUILD_DEPENDS)
_BUILD_DEP2 = ${BUILD_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_BUILD_DEP = ${_BUILD_DEP2:C/[^:]*://}
.else
_BUILD_DEP2=
_BUILD_DEP=
.endif

_LIB_DEP2= ${LIB_DEPENDS}

README_NAME?=	${TEMPLATES}/README.port

REORDER_DEPENDENCIES?=

# Lock infrastructure:
# nothing happens unless LOCKDIR, LOCK_CMD and UNLOCK_CMD are defined

LOCK_VERBOSE?=No
.if defined(LOCKDIR) && defined(LOCK_CMD) && defined(UNLOCK_CMD)
.  if ${LOCK_VERBOSE:L} == "yes"
_LOCK=echo "Locking $$lock from $@"; ${LOCK_CMD} ${LOCKDIR}/$$lock.lock
_UNLOCK=echo "Unlocking $$lock from $@"; ${UNLOCK_CMD} ${LOCKDIR}/$$lock.lock
.  else
_LOCK=${LOCK_CMD} ${LOCKDIR}/$$lock.lock
_UNLOCK=${UNLOCK_CMD} ${LOCKDIR}/$$lock.lock
.  endif
.  if defined(SEPARATE_BUILD) && ${SEPARATE_BUILD:L:Mflavored}
_LOCKNAME=${PKGNAME}
.  else
_LOCKNAME=${FULLPKGNAME}
.  endif
_DO_LOCK=\
	: $${lock:=${_LOCKNAME}}; \
	case X$$lock in \
	X${_MASTER_LOCK}) \
		;; \
	*) \
		${_LOCK}; trap '${_UNLOCK}' 0 1 2 3 13 15;; \
	esac
.else
_DO_LOCK=:
.endif
###
### end of variable setup. Only targets now
###

.if ${BIN_PACKAGES:L} == "yes"
${_PACKAGE_COOKIE}:
	@cd ${.CURDIR} && exec ${MAKE} ${_PACKAGE_COOKIE_DEPS}
.else
${_PACKAGE_COOKIE}: ${_PACKAGE_COOKIE_DEPS}
.endif
	@cd ${.CURDIR} && SUBPACKAGE='' FLAVOR='${FLAVOR}' PACKAGING='' exec ${MAKE} _package
.if !defined(PACKAGE_NOINSTALL)
	@${_MAKE_COOKIE} $@
.endif

.for _s in ${MULTI_PACKAGES}
.  if ${BIN_PACKAGES:L} == "yes"
${_PACKAGE_COOKIE${_s}}:
	@cd ${.CURDIR} && exec ${MAKE} ${_PACKAGE_COOKIE_DEPS}
.  else
${_PACKAGE_COOKIE${_s}}: ${_PACKAGE_COOKIE_DEPS}
.  endif
	@cd ${.CURDIR} && SUBPACKAGE='${_s}' FLAVOR='${FLAVOR}' PACKAGING='${_s}' exec ${MAKE} _package
.endfor

.PRECIOUS: ${_PACKAGE_COOKIES} ${_INSTALL_COOKIE}

${_SYSTRACE_COOKIE}: ${_WRKDIR_COOKIE}
	@rm -f $@
.for _i in ${_SYSTRACE_POLICIES}
	@echo "Policy: ${_i}, Emulation: native" >> $@
	@if [ -f ${.CURDIR}/systrace.filter ]; then \
		cat ${.CURDIR}/systrace.filter >> $@; \
	fi
	@sed ${_SYSTRACE_SED_SUBST} ${SYSTRACE_FILTER} >> $@
.endfor
	@if [ -f ${.CURDIR}/systrace.policy ]; then \
		sed ${_SYSTRACE_SED_SUBST} ${.CURDIR}/systrace.policy >> $@; \
	fi

# create the packing stuff from source
${WRKPKG}/COMMENT${SUBPACKAGE}:
	@echo ${_COMMENT} >$@

${WRKPKG}/PLIST${SUBPACKAGE}: ${PLIST} ${WRKPKG}/depends${SUBPACKAGE}
	@echo "@comment subdir=${FULLPKGPATH} cdrom=${PERMIT_PACKAGE_CDROM:L} ftp=${PERMIT_PACKAGE_FTP:L}" >$@.tmp
	@sort -u <${WRKPKG}/depends${SUBPACKAGE}>>$@.tmp
.if ${NO_SHARED_LIBS:L} == "yes"
	@sed -e '/^!%%SHARED%%$$/r${PKGDIR}/PFRAG.no-shared${SUBPACKAGE}' -e '//d' \
		-e '/^%%!SHARED%%$$/r${PKGDIR}/PFRAG.no-shared${SUBPACKAGE}' -e '//d' \
		-e '/^%%SHARED%%$$/d' <${PLIST} \
		${SED_PLIST} >>$@.tmp && mv -f $@.tmp $@
.else
	@if [ -x /sbin/ldconfig ]; then \
		sed -e '/^!%%SHARED%%$$/d' \
			-e '/^%%!SHARED%%$$/d' \
			-e '/^%%SHARED%%$$/r${PKGDIR}/PFRAG.shared${SUBPACKAGE}' -e '//d' \
			<${PLIST} ${SED_PLIST} \
			| sed -f ${LDCONFIG_SED_SCRIPT} >>$@.tmp && mv -f $@.tmp $@; \
	else \
		sed -e '/^!%%SHARED%%$$/d' \
			-e '/^%%!SHARED%%$$/d' \
			-e '/^%%SHARED%%$$/r${PKGDIR}/PFRAG.shared${SUBPACKAGE}' -e '//d' \
			<${PLIST} \
			${SED_PLIST} >>$@.tmp && mv -f $@.tmp $@; \
	fi
.endif

${WRKPKG}/depends${SUBPACKAGE}:
	@mkdir -p ${WRKPKG}
	@>$@
.if (defined(RUN_DEPENDS) && !empty(RUN_DEPENDS)) || (${NO_SHARED_LIBS:L} != "yes" && defined(LIB_DEPENDS) && !empty(LIB_DEPENDS))
	@${_depfile_fragment}; \
	_depends_result=$@ ${MAKE} _solve-package-depends
.endif

${WRKPKG}/DESCR${SUBPACKAGE}: ${DESCR}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
	@echo "\nMaintainer: ${MAINTAINER}" >>$@
.if defined(HOMEPAGE)
	@fgrep -q '$${HOMEPAGE}' $? || echo "\nWWW: ${HOMEPAGE}" >>$@
.endif

${WRKPKG}/mtree.spec: ${MTREE_FILE}
	@${_SED_SUBST} ${MTREE_FILE}>$@.tmp && mv -f $@.tmp $@

# substitute 
.for _subst_file in INSTALL DEINSTALL REQ
.  if exists(${PKGDIR}/${_subst_file}${SUBPACKAGE})
${WRKPKG}/${_subst_file}${SUBPACKAGE}: ${PKGDIR}/${_subst_file}${SUBPACKAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.  endif
.endfor

.if defined(MESSAGE)
${WRKPKG}/MESSAGE${SUBPACKAGE}: ${MESSAGE}
	@${_SED_SUBST} <$? >$@.tmp && mv -f $@.tmp $@
.endif

makesum: fetch-all
.if !defined(NO_CHECKSUM)
	@rm -f ${CHECKSUM_FILE}
	@cd ${DISTDIR} && \
		for cipher in ${_CIPHERS}; do \
			$$cipher ${_CKSUMFILES} >> ${CHECKSUM_FILE}; \
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



_internal-depends: _internal-lib-depends _internal-build-depends \
	_internal-run-depends _internal-regress-depends

# and the rules for the actual dependencies

_print-packagename:
.if ${_FULL_PACKAGE_NAME:L} == "yes"
	@echo '${PKGPATH}/${FULLPKGNAME${SUBPACKAGE}}'
.else
	@echo ${FULLPKGNAME${SUBPACKAGE}}
.endif

.for _DEP in build run lib regress
.  if defined(${_DEP:U}_DEPENDS) && ${NO_DEPENDS:L} == "no"
.    for _i in ${${_DEP:U}_DEPENDS}
${WRKDIR}/.${_DEP}${_i:C,[|:./<=>*],-,g}: ${_WRKDIR_COOKIE}
	@unset PACKAGING DEPENDS_TARGET FLAVOR SUBPACKAGE _MASTER WRKDIR|| true; \
	echo '${_i}'|{ \
		IFS=:; read dep pkg dir target; \
		${_flavor_fragment}; defaulted=false; \
		case "X$$target" in X) target=${DEPENDS_TARGET};; esac; \
		toset="$$toset _MASTER_LOCK=${_LOCKNAME}"; \
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
			if eval $$toset ${MAKE} $$target; then \
				${ECHO_MSG} "===> Returning to build of ${FULLPKGNAME${SUBPACKAGE}}${_MASTER}"; \
			else \
				exit 1; \
			fi; \
			if $$early_exit; then \
				break; \
			fi; \
		done; \
	}
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin
	@${_MAKE_COOKIE} $@
.    endfor
.  endif
_internal-${_DEP}-depends: ${_DEP${_DEP}_COOKIES}
.endfor

# Do a brute-force ldd/objdump on all files under WRKINST.
.if ${ELF_TOOLCHAIN:L} == "no"
_CHECK_LIBS_SCRIPT=${PORTSDIR}/infrastructure/install/check-libs
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
_CHECK_LIBS_SCRIPT=${PORTSDIR}/infrastructure/install/check-libs-elf
${_LIBLIST}: ${_FAKE_COOKIE}
	@cd ${WRKINST} && ${SUDO} find . -type f|\
		xargs objdump -p 2>/dev/null |\
		sed -n \
			-e '/^ *NEEDED *\(.*\)\.so\.\([0-9][0-9]*\)\.\([0-9][0-9]*\)$$/s//\1 \2 \3/p' \
			-e '/^ *NEEDED *\(.*\)\.so$$/s//\1/p'| \
		sort -u >$@
.endif

# list of libraries that can be used: libraries just built, and system libs.
${_BUILDLIBLIST}: ${_FAKE_COOKIE}
	@{ \
		${SUDO} find ${WRKINST} -type f -o -type l; \
		find /usr/lib -path /usr/lib -o -type d -prune -o -type f -print; \
		find ${X11BASE}/lib -path ${X11BASE}/lib -o -type d -prune -o -type f -print; \
	}|\
		egrep '(\.so\.|\.so$$)'|${SUDO} xargs file -L|fgrep 'shared'|cut -d\: -f1|sort -u >$@



.if defined(IGNORE) && !defined(NO_IGNORE)
_internal-fetch _internal-checksum _internal-extract _internal-patch \
_internal-configure _internal-all _internal-build _internal-install \
_internal-regress _internal-uninstall _internal-deinstall _internal-fake \
_internal-package _internal-lib-depends-check _internal-manpages-check:
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
_internal-lib-depends-check: ${_LIBLIST} ${_BUILDLIBLIST}
	@${_depfile_fragment}; \
	LIB_DEPENDS="`${MAKE} _recurse-lib-depends-check`" \
	PKG_DBDIR='${PKG_DBDIR}' \
		perl ${_CHECK_LIBS_SCRIPT} \
		${_LIBLIST} ${_BUILDLIBLIST}

_internal-manpages-check: ${_FAKE_COOKIE}
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

_internal-fetch:
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


_internal-checksum: _internal-fetch
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
			  echo ">> Error: checksum for $$file is set to IGNORE in distinfo"; \
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
		if ! $$OK; then \
		  if ${REFETCH}; then \
		  	cd ${.CURDIR} && ${MAKE} _refetch _PROBLEMS="$$list"; \
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

_refetch:
.  for file cipher value in ${_PROBLEMS}
	@rm ${DISTDIR}/${file}
	@cd ${.CURDIR} && exec ${MAKE} ${DISTDIR}/${file} \
		MASTER_SITE_OVERRIDE="ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/${cipher}/${value}/"
.  endfor
	cd ${.CURDIR} && exec ${MAKE} _internal-checksum REFETCH=false


# The cookie's recipe hold the real rule for each of those targets.

_internal-extract: ${_EXTRACT_COOKIE}
_internal-patch: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} \
	${_PATCH_COOKIE}
_internal-distpatch: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} \
	${_DISTPATCH_COOKIE}
_internal-configure: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} \
	${_CONFIGURE_COOKIE}
_internal-build _internal-all: ${_DEPbuild_COOKIES} ${_DEPlib_COOKIES} \
	${_BUILD_COOKIE}
_internal-install: ${_INSTALL_DEPS}
_internal-fake: ${_FAKE_COOKIE}
_internal-package: ${_PACKAGE_DEPS}


.  if defined(_IGNORE_REGRESS)
_internal-regress:
.    if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${_IGNORE_REGRESS}."
.    endif
.  else
_internal-regress: ${_DEPregress_COOKIES} ${_REGRESS_COOKIE}
.  endif

.endif # IGNORECMD


# Top-level targets redirect to the real _internal-target, along with locking
# if locking exists.

_TOP_TARGETS=extract patch distpatch configure build all install fake package \
fetch checksum regress depends lib-depends build-depends run-depends \
regress-depends clean lib-depends-check manpages-check plist update-plist
.if defined(_LOCK)
.  for _t in ${_TOP_TARGETS}
${_t}:
	@${_DO_LOCK}; cd ${.CURDIR} && ${MAKE} _internal-${_t}
.  endfor
.else
.    for _t in ${_TOP_TARGETS}
${_t}: _internal-${_t}
.  endfor
.endif

${_BULK_COOKIE}: ${_PACKAGE_COOKIES}
	@mkdir -p ${BULK_COOKIES_DIR}
.for _i in ${BULK_TARGETS_${PKGPATH}}
	@${ECHO_MSG} "===> Running ${_i}"
	@cd ${.CURDIR} && exec ${MAKE} ${_i} ${BULK_FLAGS}
.endfor
	@cd ${.CURDIR} && exec ${SUDO} ${MAKE} _internal-clean
	@${_MAKE_COOKIE} $@

# The real targets. Note that some parts always get run, some parts can be
# disabled, and there are hooks to override behavior.

${_WRKDIR_COOKIE}:
	@rm -rf ${WRKDIR}
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin
	@${_MAKE_COOKIE} $@

${_EXTRACT_COOKIE}: ${_WRKDIR_COOKIE} ${_SYSTRACE_COOKIE}
	@cd ${.CURDIR} && exec ${MAKE} _internal-checksum _internal-build-depends _internal-lib-depends
	@${ECHO_MSG} "===>  Extracting for ${FULLPKGNAME}${_MASTER}"
.if target(pre-extract)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} pre-extract
.endif
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-extract
.if target(post-extract)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} post-extract
.endif
	@${_MAKE_COOKIE} $@

.if !target(do-extract)
do-extract:
# What EXTRACT normally does:
	@PATH=${PORTPATH}; set -e; cd ${WRKDIR}; \
	for archive in ${EXTRACT_ONLY}; do \
		case $$archive in \
		${EXTRACT_CASES} \
		esac; \
	done
# End of EXTRACT
.endif


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
	@cd ${.CURDIR} && exec ${MAKE} _internal-distpatch
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
.if !empty(REORDER_DEPENDENCIES)
	@sed -e '/^#/d' ${REORDER_DEPENDENCIES} | \
	  tsort -r|while read f; do \
	    cd ${WRKSRC}; \
		case $$f in \
		/*) \
			find . -name $${f#/} -print| while read i; \
				do echo "Touching $$i"; touch $$i; done \
			;; \
		*) \
			if test -e $$f ; then \
				echo "Touching $$f"; touch $$f; \
			fi \
			;; \
		esac; done
.endif
.if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.endif


# The real configure

${_CONFIGURE_COOKIE}: ${_PATCH_COOKIE}
	@${ECHO_MSG} "===>  Configuring for ${FULLPKGNAME}${_MASTER}"
	@mkdir -p ${WRKBUILD} ${WRKPKG}
.if target(pre-configure)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} pre-configure
.endif
.if target(do-configure)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-configure
.else
# What CONFIGURE normally does
	@if [ -f ${SCRIPTDIR}/configure ]; then \
		cd ${.CURDIR} &&  ${_SYSTRACE_CMD} ${SETENV} \
			${SCRIPTS_ENV} ${SH} ${SCRIPTDIR}/configure; \
	fi
.  for _c in ${CONFIGURE_STYLE:L}
.    if defined(MOD${_c:U}_configure)
	@${MOD${_c:U}_configure}
.    endif
.  endfor
# End of CONFIGURE.
.endif
.if target(post-configure)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} post-configure
.endif
	@${_MAKE_COOKIE} $@

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
	echo ""
.endif
.  if target(pre-build)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} pre-build
.  endif
.  if target(do-build)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-build
.  else
# What BUILD normally does:
	@cd ${WRKBUILD} && exec ${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
# End of BUILD
.  endif
.  if target(post-build)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} post-build
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
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} ${MAKE} pre-fake ${_FAKE_SETUP}
.  endif
	@${SUDO} ${_MAKE_COOKIE} ${_INSTALL_PRE_COOKIE}
.  if target(pre-install)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} ${MAKE} pre-install ${_FAKE_SETUP}
.  endif
.  if target(do-install)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} ${MAKE} do-install ${_FAKE_SETUP}
.  else
# What FAKE normally does:
	@cd ${WRKBUILD} && exec ${SUDO} ${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} ${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
# End of FAKE.
.  endif
.  if target(post-install)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} ${MAKE} post-install ${_FAKE_SETUP}
.  endif
.  for _p in ${PROTECT_MOUNT_POINTS}
	@${SUDO} mount -u -w ${_p}
.  endfor
	@${SUDO} ${_MAKE_COOKIE} $@

# The real install

${_INSTALL_COOKIE}:  ${_PACKAGE_COOKIES}
	@cd ${.CURDIR} && DEPENDS_TARGET=install exec ${MAKE} _internal-run-depends _internal-lib-depends
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
.if target(pre-package)
	@cd ${.CURDIR} && exec ${MAKE} pre-package
.endif
.if target(do-package)
	@cd ${.CURDIR} && exec ${MAKE} do-package
.else
# What PACKAGE normally does:
	@${ECHO_MSG} "===>  Building package for ${FULLPKGNAME${SUBPACKAGE}}"
	@if [ ! -d ${PKGREPOSITORY} ]; then \
	   if ! mkdir -p ${PKGREPOSITORY}; then \
	      echo ">> Can't create directory ${PKGREPOSITORY}."; \
		  exit 1; \
	   fi; \
	fi
	@cd ${.CURDIR} && \
	  if ${SUDO} ${PKG_CMD} ${PKG_ARGS} ${PKGFILE${SUBPACKAGE}}; then \
	    mode=`id -u`:`id -g`; ${SUDO} ${CHOWN} $${mode} ${PKGFILE${SUBPACKAGE}}; \
	    ${MAKE} _package-links; \
	  else \
	    ${SUDO} ${MAKE} _internal-clean=package; \
	    exit 1; \
	  fi
# End of PACKAGE.
.endif
.if target(post-package)
	@cd ${.CURDIR} && exec ${MAKE} post-package
.endif

fetch-all:
	@cd ${.CURDIR} && exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes fetch

# Separate target for each file fetch will retrieve

.for _F in ${ALLFILES:S@^@${FULLDISTDIR}/@}
${_F}:
.  if ${FETCH_MANUALLY:L} != "no"
.    for _M in ${FETCH_MANUALLY}
	@echo "*** ${_M}"
.    endfor
	@exit 1
.  else
	@lock=${_F:T}.dist; ${_DO_LOCK}; mkdir -p ${_F:H}; \
	cd ${_F:H}; \
	select=${_EVERYTHING:M*${_F:S@^${FULLDISTDIR}/@@}\:[0-9]}; \
	f=${_F:S@^${FULLDISTDIR}/@@}; \
	${ECHO_MSG} ">> $$f doesn't seem to exist on this system."; \
	${_CDROM_OVERRIDE}; \
	${_SITE_SELECTOR}; \
	for site in $$sites; do \
		${ECHO_MSG} ">> Attempting to fetch ${_F} from $${site}."; \
		if ${FETCH_CMD} $${site}$$f; then \
				exit 0; \
		fi; \
	done; exit 1
.  endif
.endfor

# Some support rules for do-package

_package-links:
	@cd ${.CURDIR} && exec ${MAKE} _delete-package-links
.for _l in FTP CDROM
.  if ${PERMIT_PACKAGE_${_l}:L} == "yes"
	@echo "Link to ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}"
	@mkdir -p ${${_l}_PACKAGES}
	@rm -f ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}
	@ln ${PKGFILE${SUBPACKAGE}} \
	  ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX} 2>/dev/null || \
	  cp -p ${PKGFILE${SUBPACKAGE}} \
	  ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}
.  endif
.endfor

_delete-package-links:
.for _l in FTP CDROM
	@rm -f ${${_l}_PACKAGES}/${FULLPKGNAME${SUBPACKAGE}}${PKG_SUFX}
.endfor

# Cleaning up

_internal-clean:
.if ${_clean:L:Mdepends} && ${_CLEANDEPENDS:L} == "yes"
	@${MAKE} all-dir-depends|tsort -r|while read dir; do \
		case "$$dir" in ${FULLPKGPATH}) t=_internal-clean;; *) t=clean;; esac; \
		unset FLAVOR SUBPACKAGE || true; \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _CLEANDEPENDS=No $$t; \
	done
.else
	@${ECHO_MSG} "===>  Cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
.  if ${_clean:L:Mfake}
	@if cd ${WRKINST} 2>/dev/null; then ${SUDO} rm -rf ${WRKINST}; fi
.  endif
.  if ${_clean:L:Mwork}
.    if ${_clean:L:Mflavors}
	@for i in ${.CURDIR}/w-*; do \
		if [ -L $$i ]; then ${SUDO} rm -rf `readlink $$i`; fi; \
		${SUDO} rm -rf $$i; \
	done
.    else
	@if [ -L ${WRKDIR} ]; then rm -rf `readlink ${WRKDIR}`; fi
	@rm -rf ${WRKDIR}
.    endif
.  endif
.  if ${_clean:L:Mdist}
	@${ECHO_MSG} "===>  Dist cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
	@if cd ${FULLDISTDIR} 2>/dev/null; then \
		if [ "${_DISTFILES}" -o "${_PATCHFILES}" ]; then \
			rm -f ${_DISTFILES} ${_PATCHFILES}; \
		fi \
	fi
.    if !empty(DIST_SUBDIR)
	-@rmdir ${FULLDISTDIR}
.    endif
.  endif
.  if ${_clean:L:Minstall}
.    if ${_clean:L:Msub}
.      for _s in ${MULTI_PACKAGES}
	-${SUDO} ${PKG_DELETE} ${FULLPKGNAME${_s}}
.      endfor
.    else
	-${SUDO} ${PKG_DELETE} ${FULLPKGNAME${SUBPACKAGE}}
.    endif
.  endif
.  if ${_clean:L:Mpackages} || ${_clean:L:Mpackage} && ${_clean:L:Msub}
	rm -f ${_PACKAGE_COOKIES}
.    if defined(MULTI_PACKAGES)
.      for _s in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && SUBPACKAGE='${_s}' exec ${MAKE} _delete-package-links
.      endfor
.    endif
.  elif ${_clean:L:Mpackage}
	@cd ${.CURDIR} && exec ${MAKE} _delete-package-links
	rm -f ${PKGFILE${SUBPACKAGE}}
.  endif
.  if ${_clean:L:Mreadmes}
	rm -f ${.CURDIR}/${FULLPKGNAME}.html
.      for _s in ${MULTI_PACKAGES}
	rm -f ${.CURDIR}/${FULLPKGNAME${_s}}.html
.      endfor
.  endif
.  if ${_clean:L:Mbulk}
	rm -f ${_BULK_COOKIE}
.  endif
.endif

# packing list utilities.  This generates a packing list from a recently
# installed port.  Not perfect, but pretty close.  The generated file
# will have to have some tweaks done by hand.
# Note: add @comment PACKAGE(arch=${MACHINE_ARCH}, opsys=${OPSYS}, vers=${OPSYS_VER})
# when port is installed or package created.
#
.if ${FAKE:L} == "yes"
.  if ${SHARED_ONLY:L} == "yes"
_do_libs_too=
.  else
_do_libs_too=NO_SHARED_LIBS=Yes
.  endif

_extra_prefixes=
.if defined(MULTI_PACKAGES)
.  for _s in ${MULTI_PACKAGES}
_extra_prefixes+=PREFIX${_s}=`cd ${.CURDIR} && SUBPACKAGE=${_s} PACKAGING=${_s} ${MAKE} show=PREFIX`
.  endfor
.endif

_internal-plist _internal-update-plist: _internal-fake ${_DEPrun_COOKIES}
	@${ECHO_MSG} "===>  Updating plist for ${FULLPKGNAME}${_MASTER}"
	@mkdir -p ${PKGDIR}
	@DESTDIR=${WRKINST} PREFIX=${WRKINST}${PREFIX} \
	TRUEPREFIX=${TRUEPREFIX} \
	MTREE_FILE=${WRKPKG}/mtree.spec \
	INSTALL_PRE_COOKIE=${_INSTALL_PRE_COOKIE} \
	DEPS="`${MAKE} full-run-depends ${_do_libs_too}`" \
	PKGREPOSITORY=${PKGREPOSITORY} \
	PLIST=${PLIST} \
	PFRAG=${PKGDIR}/PFRAG \
	FLAVORS='${FLAVORS}' MULTI_PACKAGES='${MULTI_PACKAGES}' \
	OKAY_FILES='${_FAKE_COOKIE} ${_INSTALL_PRE_COOKIE}' \
	SHARED_ONLY="${SHARED_ONLY}" \
	OWNER=`id -u` \
	GROUP=`id -g` \
	${SUDO} perl ${PORTSDIR}/infrastructure/install/make-plist \
	${_extra_prefixes} ${_tmpvars}
.endif

update-patches:
	@toedit=`WRKDIST=${WRKDIST} PATCHDIR=${PATCHDIR} \
		PATCH_LIST='${PATCH_LIST}' DIFF_ARGS='${DIFF_ARGS}' \
		DISTORIG=${DISTORIG} PATCHORIG=${PATCHORIG} \
		/bin/sh ${PORTSDIR}/infrastructure/build/update-patches`; \
	case $$toedit in "");; \
	*) read i?'edit patches: '; \
	cd ${PATCHDIR} && $${VISUAL:-$${EDITOR:-/usr/bin/vi}} $$toedit;; esac



# mirroring utilities
fetch-makefile:
	@exec ${MAKE} __FETCH_ALL=Yes __ARCH_OK=Yes NO_IGNORE=Yes _fetch-makefile

_fetch-makefile:
.if !defined(COMES_WITH)
	@echo -n "all"
.  if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo -n " ftp"
.  endif
.  if ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n " cdrom"
.  endif
	@echo ":: ${_FMN}"
# write generic package dependencies
	@echo ".PHONY: ${_FMN}"
.  if ${RECURSIVE_FETCH_LIST:L} == "yes"
	@echo "${_FMN}: ${_ALLFILES} "`_FULL_PACKAGE_NAME=Yes ${MAKE} full-all-depends`
.  else
	@echo "${_FMN}: ${_ALLFILES}"
.  endif
.endif
.if !empty(ALLFILES)
.  for _F in ${_ALLFILES}
	@if ! fgrep -q "|${_F}|" $${_DONE_FILES}; then \
		echo "|${_F}|" >>$${_DONE_FILES}; \
		${MAKE} _fetch-onefile _file=${_F}; \
	fi
.  endfor
.endif
	@echo


_fetch-onefile:
# XXX loop so that M${_F} will work
.for _F in ${_file}
	@echo '${_F}: $$F'
	@echo -n '\t@MAINTAINER="${MAINTAINER}" '
.  if !empty(DIST_SUBDIR)
	@echo -n 'DIST_SUBDIR="${DIST_SUBDIR}" '
.  endif
	@echo '\\'
	@select='${_EVERYTHING:M*${_F:S@^${DIST_SUBDIR}/@@}\:[0-9]}'; \
	${_SITE_SELECTOR}; \
	echo "\t SITES=\"$$sites\" \\"
.  if ${FETCH_MANUALLY:L} != "no"
	@echo '\t FETCH_MANUALLY="Yes" \\'
.  endif
.  if !defined(NO_CHECKSUM) && !empty(_CKSUMFILES:M${_F})
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
.  endif
	@echo '\t $${EXEC} $${FETCH} "$$@"'
.endfor


# This target generates an index entry suitable for aggregation into
# a large index.  Format is:
#
# distribution-name|port-path|installation-prefix|comment| \
#  description-file|maintainer|categories|lib-deps|build-deps|run-deps| \
#  for-arch|package-cdrom|package-ftp|distfiles-cdrom|distfiles-ftp
#
describe:
.if defined(MULTI_PACKAGES) && !defined(PACKAGING)
	@cd ${.CURDIR} && SUBPACKAGE='${SUBPACKAGE}' FLAVOR='${FLAVOR}' PACKAGING='${SUBPACKAGE}' exec ${MAKE} describe
.  if empty(SUBPACKAGE)
.    for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}' PACKAGING='${_sub}' exec ${MAKE} describe
.    endfor
.  endif
.else
	@echo -n "${FULLPKGNAME${SUBPACKAGE}}|${FULLPKGPATH}|"
.  if ${PREFIX} == ${LOCALBASE}
	@echo -n "|"
.  else
	@echo -n "${PREFIX}|"
.  endif
	@echo -n ${_COMMENT}"|"; \
	if [ -f ${DESCR} ]; then \
		echo -n "${DESCR:S,^${PORTSDIR}/,,}|"; \
	else \
		echo -n "/dev/null|"; \
	fi; \
	echo -n "${MAINTAINER}|${CATEGORIES}|"
.  for _d in LIB BUILD RUN
.    if !empty(_${_d}_DEP2)
	@cd ${.CURDIR} && _FINAL_ECHO=: _INITIAL_ECHO=: exec ${MAKE} ${_d:L}-depends-list
.    endif
	@echo -n "|"
.  endfor
	@case "${ONLY_FOR_ARCHS}" in \
	 "") case "${NOT_FOR_ARCHS}" in \
		 "") echo -n "any|";; \
		 *) echo -n "!${NOT_FOR_ARCHS}|";; \
		 esac;; \
	 *) echo -n "${ONLY_FOR_ARCHS}|";; \
	 esac

.  if defined(_BAD_LICENSING)
	@echo "?|?|?|?"
.  else
.    if ${PERMIT_PACKAGE_CDROM:L} == "yes"
	@echo -n "y|"
.    else
	@echo -n "n|"
.    endif
.    if ${PERMIT_PACKAGE_FTP:L} == "yes"
	@echo -n "y|"
.    else
	@echo -n "n|"
.    endif
.    if ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n "y|"
.    else
	@echo -n "n|"
.    endif
.    if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo "y"
.    else
	@echo "n"
.    endif
.  endif
.endif

readmes:
.if defined(MULTI_PACKAGES) && !defined(PACKAGING)
	@cd ${.CURDIR} && SUBPACKAGE='${SUBPACKAGE}' FLAVOR='${FLAVOR}' PACKAGING='${SUBPACKAGE}' exec ${MAKE} readmes
.  if empty(SUBPACKAGE)
.    for _sub in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && SUBPACKAGE='${_sub}' FLAVOR='${FLAVOR}' PACKAGING='${_sub}' exec ${MAKE} readmes
.    endfor
.  endif
.else
	@rm -f ${FULLPKGNAME${SUBPACKAGE}}.html
	@cd ${.CURDIR} && exec ${MAKE} README_NAME=${README_NAME} ${FULLPKGNAME${SUBPACKAGE}}.html
.endif


${FULLPKGNAME${SUBPACKAGE}}.html:
	@echo ${_COMMENT} | ${HTMLIFY} >$@.tmp-comment
	@echo ${FULLPKGNAME${SUBPACKAGE}} | ${HTMLIFY} > $@.tmp3
.if defined(HOMEPAGE)
	@echo 'See <a href="${HOMEPAGE}">${HOMEPAGE}</a> for details.' >$@.tmp4
.else
	@echo "" >$@.tmp4
.endif
.if defined(MULTI_PACKAGES) 
.  if empty(SUBPACKAGE)
	@echo "<h2>Subpackages</h2>" >$@.tmp-subpackages
	@echo "<ul>" >>$@.tmp-subpackages

.    for _S in ${MULTI_PACKAGES}
	@name=`SUBPACKAGE=${_S} ${MAKE} _print-packagename _FULL_PACKAGE_NAME=No`; \
	echo "<li><a href=\"$$name.html\">$$name</a>" >>$@.tmp-subpackages
.    endfor
	@echo "</ul>" >>$@.tmp-subpackages
.  else
	@name=`unset SUBPACKAGE; ${MAKE} _print-packagename _FULL_PACKAGE_NAME=No`; \
	echo "<h2>Subpackage of <a href=\"$$name.html\">$$name</a></h2>" >$@.tmp-subpackages
.  endif
.else
	@>$@.tmp-subpackages
.endif
.for _I in build run
.  if !empty(_ALWAYS_DEP) || !empty(_${_I:U}_DEP)
	@cd ${.CURDIR} && ${MAKE} full-${_I}-depends _FULL_PACKAGE_NAME=Yes| \
		while read n; do \
			j=`dirname $$n|${HTMLIFY}`; k=`basename $$n|${HTMLIFY}`; \
			echo "<li><a href=\"${PKGDEPTH}$$j/$$k.html\">$$k</a>"; \
		 done  >$@.tmp-${_I}
.  else
	@echo "<li>none" >$@.tmp-${_I}
.  endif
.endfor
	@cat ${README_NAME} | \
		sed -e 's|%%PORT%%|'"`echo ${FULLPKGPATH}  | ${HTMLIFY}`"'|g' \
			-e '/%%PKG%%/r$@.tmp3' -e '//d' \
			-e '/%%COMMENT%%/r$@.tmp-comment' -e '//d' \
			-e '/%%DESCR%%/r${PKGDIR}/DESCR${SUBPACKAGE}' -e '//d' \
			-e '/%%HOMEPAGE%%/r$@.tmp4' -e '//d' \
			-e '/%%BUILD_DEPENDS%%/r$@.tmp-build' -e '//d' \
			-e '/%%RUN_DEPENDS%%/r$@.tmp-run' -e '//d' \
 			-e '/%%SUBPACKAGES%%/r$@.tmp-subpackages' -e '//d' \
		>> $@
	@rm -f $@.tmp*


print-build-depends:
.if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP)
	@echo -n 'This port requires package(s) "'
	@${MAKE} full-build-depends|tr '\012' '\040'|sed -e 's, $$,,'
	@echo '" to build.'
.endif

print-run-depends:
.if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP)
	@echo -n 'This port requires package(s) "'
	@${MAKE} full-run-depends|tr '\012' '\040'|sed -e 's, $$,,'
	@echo '" to run.'
.endif

.for _i in build all run
full-${_i}-depends:
	@${MAKE} ${_i}-dir-depends|tsort -r|sed -e '$$d'|while read dir; do \
		unset FLAVOR SUBPACKAGE || true; \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _print-packagename ; \
	done
.endfor

license-check:
.if ${PERMIT_PACKAGE_CDROM:L} == "yes" || ${PERMIT_PACKAGE_FTP:L} == "yes"
	@${MAKE} all-dir-depends|tsort -r|sed -e '$$d'|while read dir; do \
		unset FLAVOR SUBPACKAGE || true; \
		${_flavor_fragment}; \
		_MASTER_PERMIT_CDROM=${PERMIT_PACKAGE_CDROM:Q}; \
		_MASTER_PERMIT_FTP=${PERMIT_PACKAGE_FTP:Q}; \
		export _MASTER_PERMIT_CDROM _MASTER_PERMIT_FTP; \
		eval $$toset ${MAKE} _license-check; \
	done
.endif

_license-check:
.for _i in FTP CDROM
.  if defined(_MASTER_PERMIT_${_i}) && ${_MASTER_PERMIT_${_i}:L} == "yes" && ${PERMIT_PACKAGE_${_i}:L} != "yes"
	@echo >&2 "Warning: dependency ${PKGPATH} is not allowed for ${_i}"
.  endif
.endfor

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

# recursive depend targets

# Print list of all libraries that we may depend upon.
_recurse-lib-depends-check:
.for _i in  ${LIB_DEPENDS}
	@unset FLAVOR SUBPACKAGE  || true; \
	echo '${_i}' | { \
		IFS=:; read dep pkg dir target; \
		IFS=,; for j in $$dep; do echo $$j; done; \
		if ! fgrep -q "|$$dir|" $${_DEPENDS_FILE}; then \
			echo "|$$dir|" >>$${_DEPENDS_FILE}; \
			${_flavor_fragment}; \
			eval $$toset ${MAKE} _recurse-lib-depends-check; \
		fi; \
	}
.endfor
.for _i in  ${RUN_DEPENDS}
	@unset FLAVOR SUBPACKAGE  || true; \
	echo '${_i}' | { \
		IFS=:; read dep pkg dir target; \
		if ! fgrep -q "|$$dir|" $${_DEPENDS_FILE}; then \
			echo "|$$dir|" >>$${_DEPENDS_FILE}; \
			${_flavor_fragment}; \
			eval $$toset ${MAKE} _recurse-lib-depends-check; \
		fi; \
	}
.endfor


# Write a correct list of dependencies for packages.
_solve-package-depends:
.for _i in ${RUN_DEPENDS}
	@unset FLAVOR SUBPACKAGE || true; \
	echo '${_i}' |{ \
		IFS=:; read dep pkg pkgpath target; \
		dir=$$pkgpath; ${_flavor_fragment}; \
		default=`eval $$toset ${MAKE} _print-packagename`; \
		: $${pkg:=$$default}; \
		echo "@newdepend $$pkgpath:$$pkg:$$default" >>$${_depends_result}; }
.endfor
.if ${NO_SHARED_LIBS:L} != "yes"
.  for _i in ${LIB_DEPENDS}
	@unset FLAVOR SUBPACKAGE || true; \
	echo '${_i}'|{ \
		IFS=:; read dep pkg pkgpath target; \
		dir=$$pkgpath; ${_flavor_fragment}; \
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
			echo "@libdepend $$pkgpath:$$libspecs:$$pkg:$$default" >>$${_depends_result}; \
		esac; \
	}
.  endfor
.endif

# recursively build a list of dirs for package running, ready for tsort
_recurse-run-dir-depends:
.for _dir in ${_ALWAYS_DEP} ${_RUN_DEP}
	@unset FLAVOR SUBPACKAGE || true; \
	echo "$$self ${_dir}"; \
	if ! fgrep -q -e "r|${_dir}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "r|${_dir}|" >> $${_DEPENDS_FILE}; \
		dir=${_dir}; \
		${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-run-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

run-dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_RUN_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q -e "r|${FULLPKGPATH}|" -e "a|${FULLPKGPATH}" $${_DEPENDS_FILE}; then \
		echo "r|${FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${FULLPKGPATH} PACKAGING='${SUBPACKAGE}' ${MAKE} _recurse-run-dir-depends; \
	fi
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

# recursively build a list of dirs for package building, ready for tsort
# second and further stages need _RUN_DEP.
_recurse-all-dir-depends:
.for _dir in ${_ALWAYS_DEP} ${_BUILD_DEP} ${_RUN_DEP}
	@unset FLAVOR SUBPACKAGE || true; \
	echo "$$self ${_dir}"; \
	if ! fgrep -q "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "a|${_dir}|" >> $${_DEPENDS_FILE}; \
		dir=${_dir}; \
		${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-all-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

# first stage does not need _RUN_DEP
_build-dir-depends:
.for _dir in ${_ALWAYS_DEP} ${_BUILD_DEP}
	@unset FLAVOR SUBPACKAGE || true; \
	echo "$$self ${_dir}"; \
	if ! fgrep -q -e "b|${_dir}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "b|${_dir}|" >> $${_DEPENDS_FILE}; \
		dir=${_dir}; \
		${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-all-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

build-dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q -e "b|${FULLPKGPATH}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "b|${FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${FULLPKGPATH} ${MAKE} _build-dir-depends; \
	fi
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

all-dir-depends:
.if !empty(_ALWAYS_DEP) || !empty(_BUILD_DEP) || !empty(_RUN_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q "|${FULLPKGPATH}|" $${_DEPENDS_FILE}; then \
		echo "|${FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${FULLPKGPATH} ${MAKE} _recurse-all-dir-depends; \
	fi
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
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

#####################################################
# convenience targets, not really needed
#####################################################

checkpatch:
	@cd ${.CURDIR} && exec ${MAKE} PATCH_CHECK_ONLY=Yes patch

clean-depends:
	@cd ${.CURDIR} && exec ${MAKE} clean=depends

distclean:
	@cd ${.CURDIR} && exec ${MAKE} clean=dist

delete-package:
	@cd ${.CURDIR} && exec ${MAKE} clean=package

reinstall:
	@cd ${.CURDIR} && exec ${MAKE} clean='install force'
	@cd ${.CURDIR} && DEPENDS_TARGET=${DEPENDS_TARGET} exec ${MAKE} install

repackage:
	@cd ${.CURDIR} && exec ${MAKE} clean=packages
	@cd ${.CURDIR} && exec ${MAKE} package

rebuild:
	@rm -f ${_BUILD_COOKIE}
	@cd ${.CURDIR} && exec ${MAKE} build

uninstall deinstall:
	@${ECHO_MSG} "===> Deinstalling for ${FULLPKGNAME${SUBPACKAGE}}"
	@${SUDO} ${PKG_DELETE} ${FULLPKGNAME${SUBPACKAGE}}

.if defined(ERRORS)
.BEGIN:
.  for _m in ${ERRORS}
	@echo 1>&2 ${_m} "(in ${PKGPATH})"
.  endfor
.  if !empty(ERRORS:M"Fatal\:*") || !empty(ERRORS:M'Fatal\:*')
	@exit 1
.  endif
.endif

.PHONY: \
	_build-dir-depends _delete-package-links _fetch-makefile _fetch-onefile \
	_package _package-links _print-packagename \
	_recurse-all-dir-depends _recurse-lib-depends-check \ 
	_recurse-run-dir-depends _solve-package-depends _refetch \
	addsum \
	all all-dir-depends build \
	build-depends build-depends-list build-dir-depends \
	checkpatch checksum clean \
	clean-depends configure deinstall \
	delete-package \
	depends \
	describe distclean distpatch \
	do-build do-configure do-distpatch \
	do-extract do-fetch do-install \
	do-package do-regress extract \
	fake fetch fetch-all \
	fetch-makefile full-all-depends full-build-depends \
	full-run-depends homepage-links install \
	lib-depends lib-depends-check lib-depends-list \
	link-categories makesum manpages-check \
	package patch \
	plist post-build post-configure \
	post-distpatch post-extract post-fetch \
	post-install post-package post-patch \
	post-regress pre-build pre-configure \
	pre-extract pre-fake pre-fetch \
	pre-install pre-package pre-patch \
	pre-regress print-build-depends print-run-depends \
	readmes rebuild \
	regress regress-depends \
	reinstall repackage run-depends \
	run-depends-list run-dir-depends show \
	uninstall unlink-categories update-patches \
	update-plist \
	license-check _license-check \
	_internal-extract _internal-distpatch _internal-configure \
	_internal-build _internal-all _internal_install _internal-fake \
	_internal-package _internal_fetch _internal-checksum \
	_internal-depends _internal-lib-depends _internal-build-depends \
	_internal-run-depends _internal-regress-depends \
	_internal-regress _internal-clean _internal-lib-depends-check \
	_internal-manpages-check _internal-plist _internal-update-plist
