#-*- mode: Makefile; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	$OpenBSD: bsd.port.mk,v 1.969 2009/07/15 23:44:36 espie Exp $
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
ERRORS += "Fatal: Use 'env FLAVOR=${FLAVOR} ${MAKE}' instead."
.endif
.if ${.MAKEFLAGS:MSUBPACKAGE=*}
ERRORS += "Fatal: Use 'env SUBPACKAGE=${SUBPACKAGE} ${MAKE}' instead."
.endif

.for v in PKGREPOSITORY PKGREPOSITORYBASE CDROM_PACKAGES FTP_PACKAGES SED_PLIST
.  if defined($v)
ERRORS += "Fatal: Variable $v is obsolete, use PACKAGE_REPOSITORY instead."
.  endif
.endfor

# The definitive source of documentation to this file's user-visible parts
# is bsd.port.mk(5).
#
# Any variable or target starting with an underscore (e.g., _DEPEND_ECHO)
# is internal to bsd.port.mk, not part of the user's API, and liable to
# change without notice.
#
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
TRUST_PACKAGES ?= No
FETCH_PACKAGES ?= No
CLEANDEPENDS ?= No
USE_SYSTRACE ?= No
BULK ?= No
RECURSIVE_FETCH_LIST ?= No
WRKDIR_LINKNAME ?= 
_FETCH_MAKEFILE ?= /dev/stdout
.if ${USE_SYSTRACE:L} == "yes"
WRKOBJDIR ?!= readlink -fn ${PORTSDIR}/obj
.else
WRKOBJDIR ?= ${PORTSDIR}/obj
.endif
FAKEOBJDIR ?=
BULK_TARGETS ?=
BULK_DO ?=
CHECK_LIB_DEPENDS ?= No
FORCE_UPDATE ?= No
# All variables relevant to the port's description
_ALL_VARIABLES ?= HOMEPAGE DISTNAME BUILD_DEPENDS RUN_DEPENDS \
	REGRESS_DEPENDS USE_GMAKE MODULES FLAVORS \
	NO_BUILD NO_REGRESS SHARED_ONLY ONLY_FOR_ARCHS NOT_FOR_ARCHS IS_INTERACTIVE \
	BROKEN MULTI_PACKAGES PSEUDO_FLAVORS \
	REGRESS_IS_INTERACTIVE DISTFILES DIST_SUBDIR \
	PERMIT_DISTFILES_CDROM PERMIT_DISTFILES_FTP \
	CONFIGURE_STYLE USE_LIBTOOL SEPARATE_BUILD \
	SHARED_LIBS USE_MOTIF MASTER_SITES \
	MASTER_SITES0 MASTER_SITES1 MASTER_SITES2 MASTER_SITES3 MASTER_SITES4 \
	MASTER_SITES5 MASTER_SITES6 MASTER_SITES7 MASTER_SITES8 MASTER_SITES9 \
	MAINTAINER SUPDISTFILES SUBPACKAGE \
	AUTOCONF_VERSION AUTOMAKE_VERSION CONFIGURE_ARGS
# and stuff needing to be MULTI_PACKAGE'd
_ALL_VARIABLES_INDEXED ?= COMMENT FULLPKGNAME PKGNAME PKG_ARCH \
	PERMIT_PACKAGE_FTP PERMIT_PACKAGE_CDROM RUN_DEPENDS LIB_DEPENDS \
	WANTLIB CATEGORIES DESCR

# special purpose user settings
PATCH_CHECK_ONLY ?= No
REFETCH ?= false

# Constants used by the ports tree
ARCH ?!= uname -m
OPSYS = OpenBSD
OPSYS_VER = ${OSREV}

LP64_ARCHS = alpha amd64 hppa64 sparc64 mips64
NO_SHARED_ARCHS = m88k vax

# Set NO_SHARED_LIBS for those machines that don't support shared libraries.
.for _m in ${MACHINE_ARCH}
.  if !empty(NO_SHARED_ARCHS:M${_m})
NO_SHARED_LIBS ?= Yes
.  endif
.endfor
NO_SHARED_LIBS ?= No

# Global path locations.
PORTSDIR ?= /usr/ports
LOCALBASE ?= /usr/local
X11BASE ?= /usr/X11R6
DISTDIR ?= ${PORTSDIR}/distfiles
BULK_COOKIES_DIR ?= ${PORTSDIR}/bulk/${MACHINE_ARCH}
UPDATE_COOKIES_DIR ?= ${PORTSDIR}/update/${MACHINE_ARCH}
TEMPLATES ?= ${PORTSDIR}/infrastructure/templates
PLIST_DB ?=

PACKAGE_REPOSITORY ?= ${PORTSDIR}/packages

# local path locations
.include "${PORTSDIR}/infrastructure/mk/pkgpath.mk"

WRKOBJDIR_${PKGPATH} ?= ${WRKOBJDIR}
FAKEOBJDIR_${PKGPATH} ?= ${FAKEOBJDIR}
BULK_${PKGPATH} ?= ${BULK}
BULK_TARGETS_${PKGPATH} ?= ${BULK_TARGETS}
BULK_DO_${PKGPATH} ?= ${BULK_DO}
CLEANDEPENDS_${PKGPATH} ?= ${CLEANDEPENDS}

# Commands and command settings.
PKG_DBDIR ?= /var/db/pkg

FTP_KEEPALIVE ?= 0
FETCH_CMD ?= /usr/bin/ftp -V -m -k ${FTP_KEEPALIVE}

PKG_TMPDIR ?= /var/tmp

PKGDB_LOCK ?=
_PKG_QUERY = pkg_info ${PKGDB_LOCK} -e
PKG_CMD ?= /usr/sbin/pkg_create
PKG_DELETE ?= /usr/sbin/pkg_delete
PKG_CMD += ${PKGDB_LOCK}
PKG_DELETE += ${PKGDB_LOCK}

# remount those mount points ro before fake.
# XXX tends to panic the OS
PROTECT_MOUNT_POINTS ?=

.if exists(${.CURDIR}/../Makefile.inc)
.include "${.CURDIR}/../Makefile.inc"
.endif

.if !defined(PERMIT_PACKAGE_CDROM) || !defined(PERMIT_PACKAGE_FTP) || \
	!defined(PERMIT_DISTFILES_CDROM) || !defined(PERMIT_DISTFILES_FTP)
ERRORS += "The licensing info for ${FULLPKGNAME} is incomplete."
ERRORS += "Please notify the OpenBSD port maintainer:"
ERRORS += "    ${MAINTAINER}"
_BAD_LICENSING = Yes
PERMIT_PACKAGE_CDROM = No
PERMIT_DISTFILES_CDROM = No
PERMIT_PACKAGE_FTP = No
PERMIT_DISTFILES_FTP = No
.endif

.if defined(verbose-show)
.MAIN: verbose-show
.elif defined(show)
.MAIN: show
.elif defined(clean)
.MAIN: clean
.elif defined(_internal-clean)
clean = ${_internal-clean}
.MAIN: _internal-clean
.else
.MAIN: all
.endif

# need to go through an extra var because clean is set in stone,
# on the cmdline.
_clean = ${clean}
.if empty(_clean) || ${_clean:L} == "depends"
_clean += work
.endif
.if ${CLEANDEPENDS_${PKGPATH}:L} == "yes"
_clean += depends
.endif
.if ${_clean:L:Mwork} || ${_clean:L:Mbuild}
_clean += fake
.endif
.if ${_clean:L:Mforce}
_clean += -f
.endif
# check that clean is clean
_okay_words = depends work fake -f flavors dist install sub packages package \
	readmes bulk force plist build
.for _w in ${_clean:L}
.  if !${_okay_words:M${_w}}
ERRORS += "Fatal: unknown clean command: ${_w}\n(not in ${_okay_words})"
.  endif
.endfor

NOMANCOMPRESS ?= Yes
DEF_UMASK ?= 022

.if exists(${.CURDIR}/Makefile.${ARCH})
.include "${.CURDIR}/Makefile.${ARCH}"
.elif exists(${.CURDIR}/Makefile.${MACHINE_ARCH})
.include "${.CURDIR}/Makefile.${MACHINE_ARCH}"
.endif

# MODULES support
# reserved name spaces: for module=NAME, modname*, _modname* variables and
# targets.

# These variables must be defined before modules
CONFIGURE_STYLE ?=
USE_X11 ?= No
NO_DEPENDS ?= No
NO_BUILD ?= No
NO_REGRESS ?= No
INSTALL_TARGET ?= install

.if ${CONFIGURE_STYLE:L:Mautomake} || ${CONFIGURE_STYLE:L:Mautoconf} || \
	${CONFIGURE_STYLE:L:Mautoupdate}
.  if !${CONFIGURE_STYLE:L:Mgnu}
CONFIGURE_STYLE += gnu
.  endif
.endif

.for _i in perl gnu imake
.  if ${CONFIGURE_STYLE:L:M${_i}}
MODULES += ${_i}
.  endif
.endfor

.if defined(MODULES)
_MODULES_DONE =
.  include "${PORTSDIR}/infrastructure/mk/modules.port.mk"
.endif

###
### Variable setup that can happen after modules
###

.if ${MACHINE_ARCH} != ${ARCH}
PKG_ARCH ?= ${MACHINE_ARCH},${ARCH}
.else
PKG_ARCH ?= ${MACHINE_ARCH}
.endif

SHARED_ONLY ?= No
SEPARATE_BUILD ?= No

DIST_SUBDIR ?=

.if !empty(DIST_SUBDIR)
FULLDISTDIR ?= ${DISTDIR}/${DIST_SUBDIR}
.else
FULLDISTDIR ?= ${DISTDIR}
.endif

.if exists(${.CURDIR}/patches.${ARCH})
PATCHDIR ?= ${.CURDIR}/patches.${ARCH}
.elif exists(${.CURDIR}/patches.${MACHINE_ARCH})
PATCHDIR ?= ${.CURDIR}/patches.${MACHINE_ARCH}
.else
PATCHDIR ?= ${.CURDIR}/patches
.endif

PATCH_LIST ?= patch-*

.if exists(${.CURDIR}/files.${ARCH})
FILESDIR ?= ${.CURDIR}/files.${ARCH}
.elif exists(${.CURDIR}/files.${MACHINE_ARCH})
FILESDIR ?= ${.CURDIR}/files.${MACHINE_ARCH}
.else
FILESDIR ?= ${.CURDIR}/files
.endif

.if exists(${.CURDIR}/pkg.${ARCH})
PKGDIR ?= ${.CURDIR}/pkg.${ARCH}
.elif exists(${.CURDIR}/pkg.${MACHINE_ARCH})
PKGDIR ?= ${.CURDIR}/pkg.${MACHINE_ARCH}
.else
PKGDIR ?= ${.CURDIR}/pkg
.endif

PREFIX ?= ${LOCALBASE}
TRUEPREFIX ?= ${PREFIX}
DESTDIRNAME ?= DESTDIR
DESTDIR ?= ${WRKINST}

MAKE_FLAGS ?=
FAKE_FLAGS ?=
LIBTOOL_FLAGS ?=

# where configuration files should go
SYSCONFDIR ?= /etc
USE_GMAKE ?= No
.if ${USE_GMAKE:L} == "yes"
BUILD_DEPENDS += ::devel/gmake
MAKE_PROGRAM = ${GMAKE}
.else
MAKE_PROGRAM = ${MAKE}
.endif

USE_LIBTOOL ?= No
_lt_libs =
.if ${USE_LIBTOOL:L} == "yes"
LIBTOOL ?= ${DEPBASE}/bin/libtool
BUILD_DEPENDS += ::devel/libtool
CONFIGURE_ENV += LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}" ${_lt_libs}
MAKE_ENV += LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}" ${_lt_libs}
MAKE_FLAGS += LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}" ${_lt_libs}
.endif
MAKE_FLAGS += SHARED_LIBS_LOG=${WRKBUILD}/shared_libs.log

ALL_FAKE_FLAGS=	${MAKE_FLAGS} ${DESTDIRNAME}=${WRKINST} ${FAKE_FLAGS}


PARALLEL_BUILD ?= Yes
PARALLEL_INSTALL ?= ${PARALLEL_BUILD}
MAKE_JOBS ?= 1

.if ${MAKE_JOBS} != 1
.  if ${PARALLEL_BUILD:L} == "yes"
MAKE_FLAGS += -j${MAKE_JOBS}
.  endif
.  if ${PARALLEL_INSTALL:L} == "yes"
ALL_FAKE_FLAGS += -j${MAKE_JOBS}
.  endif
.endif

.if !defined(MULTI_PACKAGES) || empty(MULTI_PACKAGES)
# XXX let's cheat so we always have MULTI_PACKAGES
MULTI_PACKAGES = -
SUBPACKAGE ?= -
.else
SUBPACKAGE ?= -main
.endif

FLAVOR ?=
FLAVORS ?=
PSEUDO_FLAVORS ?=
FLAVORS += ${PSEUDO_FLAVORS}

.if !empty(FLAVORS:L:Mregress) && empty(FLAVOR:L:Mregress)
NO_REGRESS = Yes
.endif

USE_MOTIF ?= No

.if ${USE_MOTIF:L} != "no"
.  if ${USE_MOTIF:L} == "lesstif"
LIB_DEPENDS += Xm.>=1::x11/lesstif
.  elif ${USE_MOTIF:L} == "openmotif"
LIB_DEPENDS += Xm.>=2::x11/openmotif
.  elif ${USE_MOTIF:L} == "any" || ${USE_MOTIF:L} == "yes"
FLAVORS += lesstif
.    if ${FLAVOR:L:Mlesstif} && ${FLAVOR:L:Mmotif}
ERRORS += "Fatal: choose motif or lesstif, not both."
.    endif
.    if ${FLAVOR:L:Mlesstif}
LIB_DEPENDS += Xm.>=1::x11/lesstif
.    else
LIB_DEPENDS += Xm.>=2::x11/openmotif
.    endif
.  else
ERRORS += "Fatal: Unknown USE_MOTIF=${USE_MOTIF} settings."
.  endif
MOTIFLIB = -L${DEPBASE}/lib -lXm
.endif

.if empty(SUBPACKAGE)
ERRORS += "Fatal: empty SUBPACKAGE is invalid."
.else
.  for _i in ${SUBPACKAGE}
.    if empty(MULTI_PACKAGES:M${_i})
ERRORS += "Fatal: Subpackage ${SUBPACKAGE} does not exist."
.    endif
.  endfor
.endif
.if !empty(MULTI_PACKAGES:N-*)
ERRORS += "Fatal: SUBPACKAGES should always begin with -: ${MULTI_PACKAGES:N-*}."
.endif

# Build FLAVOR_EXT, checking that no flavors are misspelled
FLAVOR_EXT :=
BASE_PKGPATH := ${PKGPATH}
# _FLAVOR_EXT2 is used internally for working directories.
# It encodes flavors and pseudo-flavors.
_FLAVOR_EXT2 :=
BUILD_PKGPATH := ${PKGPATH}
_PKG_ARGS =

# (applies only to PLIST for now)
.if !empty(FLAVORS)
.  for _i in ${FLAVORS:L}
.    if empty(FLAVOR:L:M${_i})
_PKG_ARGS += -D${_i}=0
.    else
_FLAVOR_EXT2 := ${_FLAVOR_EXT2}-${_i}
BUILD_PKGPATH := ${BUILD_PKGPATH},${_i}
.    if empty(PSEUDO_FLAVORS:L:M${_i})
FLAVOR_EXT := ${FLAVOR_EXT}-${_i}
BASE_PKGPATH := ${BASE_PKGPATH},${_i}
.    endif
_PKG_ARGS += -D${_i}=1
.    endif
.  endfor
.endif
.if ${NO_SHARED_LIBS:L} == "yes"
_PKG_ARGS += -DSHARED_LIBS=0
.else
_PKG_ARGS += -DSHARED_LIBS=1
.endif
.if !empty(FLAVORS:M[0-9]*)
ERRORS += "Fatal: flavor should never start with a digit"
.endif

.if !empty(FLAVOR)
.  if !empty(FLAVORS)
.    for _i in ${FLAVOR:L}
.      if empty(FLAVORS:L:M${_i})
ERRORS += "Fatal: Unknown flavor: ${_i}"
ERRORS += "   (Possible flavors are: ${FLAVORS})."
.      endif
.    endfor
.  else
ERRORS += "Fatal: no flavors for this port."
.  endif
.endif

PKG_SUFX ?= .tgz

PKGNAME ?= ${DISTNAME}
FULLPKGNAME ?= ${PKGNAME}${FLAVOR_EXT}
_MASTER ?=
_SOLVING_DEP ?= No

_READMES =
.if ${MULTI_PACKAGES} == "-"
FULLPKGNAME- = ${FULLPKGNAME}
_READMES += ${READMES_TOP}/${PKGPATH}/${FULLPKGNAME}.html
.else
.  for _s in ${MULTI_PACKAGES}
.    if !defined(FULLPKGNAME${_s})
.      if defined(PKGNAME${_s})
FULLPKGNAME${_s} = ${PKGNAME${_s}}${FLAVOR_EXT}
.      else
FULLPKGNAME${_s} = ${PKGNAME}${_s}${FLAVOR_EXT}
.      endif
.    endif
_READMES += ${READMES_TOP}/${PKGPATH}/${FULLPKGNAME${_s}}.html
.  endfor
.endif

_SYSTRACE_COOKIE =		${WRKDIR}/systrace.policy
_WRKDIR_COOKIE =		${WRKDIR}/.extract_started
_EXTRACT_COOKIE =		${WRKDIR}/.extract_done
_PATCH_COOKIE =			${WRKDIR}/.patch_done
_DISTPATCH_COOKIE =		${WRKDIR}/.distpatch_done
_PREPATCH_COOKIE =		${WRKDIR}/.prepatch_done
_BULK_COOKIE =			${BULK_COOKIES_DIR}/${FULLPKGNAME}
_FAKE_COOKIE =			${WRKINST}/.fake_done
_INSTALL_PRE_COOKIE =	${WRKINST}/.install_started
_UPDATE_COOKIES =
_FUPDATE_COOKIES =
_INSTALL_COOKIES =
.for _S in ${MULTI_PACKAGES}
.  if !empty(UPDATE_COOKIES_DIR)
_UPDATE_COOKIE${_S} =	${UPDATE_COOKIES_DIR}/${FULLPKGNAME${_S}}
_FUPDATE_COOKIE${_S} =	${UPDATE_COOKIES_DIR}/F${FULLPKGNAME${_S}}
.  else
_UPDATE_COOKIE${_S} =	${WRKDIR}/.update_${FULLPKGNAME${_S}}
_FUPDATE_COOKIE${_S} =	${WRKDIR}/.fupdate_${FULLPKGNAME${_S}}
.  endif
_INSTALL_COOKIE${_S} =	${PKG_DBDIR}/${FULLPKGNAME${_S}}/+CONTENTS
_UPDATE_COOKIES += 		${_UPDATE_COOKIE${_S}}
_FUPDATE_COOKIES += 	${_FUPDATE_COOKIE${_S}}
_INSTALL_COOKIES +=		${_INSTALL_COOKIE${_S}}
.endfor
.if ${SEPARATE_BUILD:L} != "no"
_CONFIGURE_COOKIE =		${WRKBUILD}/.configure_done
_BUILD_COOKIE =			${WRKBUILD}/.build_done
_REGRESS_COOKIE =		${WRKBUILD}/.regress_done
.else
_CONFIGURE_COOKIE =		${WRKDIR}/.configure_done
_BUILD_COOKIE =			${WRKDIR}/.build_done
_REGRESS_COOKIE =		${WRKDIR}/.regress_done
.endif

_ALL_COOKIES = ${_EXTRACT_COOKIE} ${_PATCH_COOKIE} ${_CONFIGURE_COOKIE} \
	${_INSTALL_PRE_COOKIE} ${_BUILD_COOKIE} ${_REGRESS_COOKIE} \
	${_SYSTRACE_COOKIE} ${_PACKAGE_COOKIES} \
	${_DISTPATCH_COOKIE} ${_PREPATCH_COOKIE} ${_FAKE_COOKIE} \
	${_WRKDIR_COOKIE} ${_DEPBUILD_COOKIES} \
	${_DEPRUN_COOKIES} ${_DEPREGRESS_COOKIES} ${_UPDATE_COOKIES} \
	${_DEPBUILDLIB_COOKIES} ${_DEPRUNLIB_COOKIES} \
	${_DEPBUILDWANTLIB_COOKIE} ${_DEPRUNWANTLIB_COOKIE} ${_DEPLIBSPECS_COOKIES}

_MAKE_COOKIE = touch

# Miscellaneous overridable commands:
GMAKE ?= gmake

CHECKSUM_FILE ?= ${.CURDIR}/distinfo

# Don't touch !!! Used for generating checksums.
_CIPHERS = sha256 sha1 rmd160 md5

# This is the one you can override
PREFERRED_CIPHERS ?= ${_CIPHERS}

PORTPATH ?= ${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin

# Add any COPTS to CFLAGS.  Note: programs that use imake do not
# use CFLAGS!  Also, many (most?) ports hard code CFLAGS, ignoring
# what we pass in.
.if defined(COPTS)
CFLAGS += ${COPTS}
.endif
.if defined(CXXOPTS)
CXXFLAGS += ${CXXOPTS}
.endif
.if defined(WARNINGS) && ${WARNINGS:L} == "yes"
.  if defined(CDIAGFLAGS)
CFLAGS += ${CDIAGFLAGS}
.  endif
.  if defined(CXXDIAGFLAGS)
CXXFLAGS += ${CXXDIAGFLAGS}
.  endif
.endif

MAKE_FILE ?= Makefile
PORTHOME ?= /${PKGNAME}_writes_to_HOME

MAKE_ENV += PATH='${PORTPATH}' PREFIX='${PREFIX}' \
	LOCALBASE='${LOCALBASE}' DEPBASE='${DEPBASE}' X11BASE='${X11BASE}' \
	MOTIFLIB='${MOTIFLIB}' CFLAGS='${CFLAGS:C/ *$//}' \
	TRUEPREFIX='${PREFIX}' ${DESTDIRNAME}='' \
	HOME='${PORTHOME}'

DISTORIG ?= .bak.orig
PATCH ?= /usr/bin/patch
PATCHORIG ?= .orig
PATCH_STRIP ?= -p0
PATCH_DIST_STRIP ?= -p0

PATCH_DEBUG ?= No
.if ${PATCH_DEBUG:L} != "no"
PATCH_ARGS ?= -d ${WRKDIST} -z ${PATCHORIG} -E ${PATCH_STRIP}
PATCH_DIST_ARGS ?= -z ${DISTORIG} -d ${WRKDIST} -E ${PATCH_DIST_STRIP}
.else
PATCH_ARGS ?= -d ${WRKDIST} -z ${PATCHORIG} --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_ARGS ?= -z ${DISTORIG} -d ${WRKDIST} --forward --quiet -E \
	${PATCH_DIST_STRIP}
.endif

.if ${PATCH_CHECK_ONLY:L} == "yes"
PATCH_ARGS += -C
PATCH_DIST_ARGS += -C
.endif

TAR ?= /bin/tar
UNZIP ?= unzip
BZIP2 ?= bzip2


# copy selected info from bsd.own.mk
MAKE_ENV += ELF_TOOLCHAIN=${ELF_TOOLCHAIN} USE_GCC3=${USE_GCC3} \
	PICFLAG=${PICFLAG} ASPICFLAG=${ASPICFLAG} \
	BINGRP=bin BINOWN=root BINMODE=555 NONBINMODE=444 DIRMODE=755 \
	INSTALL_COPY=-c INSTALL_STRIP=${INSTALL_STRIP} \
	MANGRP=bin MANOWN=root MANMODE=444
.if defined(NOPIC)
MAKE_ENV += NOPIC=${NOPIC}
.endif


.if !empty(FAKEOBJDIR_${PKGPATH})
WRKINST ?= ${FAKEOBJDIR_${PKGPATH}}/${PKGNAME}${_FLAVOR_EXT2}
.else
WRKINST ?= ${WRKDIR}/fake-${ARCH}${_FLAVOR_EXT2}
.endif

.if !empty(WRKOBJDIR_${PKGPATH})
.  if ${SEPARATE_BUILD:L:Mflavored}
WRKDIR ?= ${WRKOBJDIR_${PKGPATH}}/${PKGNAME}
.  else
WRKDIR ?= ${WRKOBJDIR_${PKGPATH}}/${PKGNAME}${_FLAVOR_EXT2}
.  endif
.else
.  if ${SEPARATE_BUILD:L:Mflavored}
WRKDIR ?= ${.CURDIR}/w-${PKGNAME}
.  else
WRKDIR ?= ${.CURDIR}/w-${PKGNAME}${_FLAVOR_EXT2}
.  endif
.endif

WRKDIST ?= ${WRKDIR}/${DISTNAME}

WRKSRC ?= ${WRKDIST}

.if ${SEPARATE_BUILD:L} != "no"
WRKBUILD ?= ${WRKDIR}/build-${MACHINE_ARCH}${_FLAVOR_EXT2}
.else
WRKBUILD ?= ${WRKSRC}
.endif
WRKCONF ?= ${WRKBUILD}

ALL_TARGET ?= all

FAKE_TARGET ?= ${INSTALL_TARGET}

REGRESS_TARGET ?= regress
REGRESS_FLAGS ?= 
ALL_REGRESS_FLAGS = ${MAKE_FLAGS} ${REGRESS_FLAGS}
REGRESS_LOGFILE ?= ${WRKDIR}/regress.log
REGRESS_LOG ?= | tee ${REGRESS_LOGFILE}
REGRESS_STATUS_IGNORE ?=

.if defined(REGRESS_IS_INTERACTIVE) && ${REGRESS_IS_INTERACTIVE:L} == "x11"
REGRESS_FLAGS += DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
XAUTHORITY ?= ${HOME}/.Xauthority
.endif

_PACKAGE_COOKIE_DEPS=${_FAKE_COOKIE}

.for _s in ${MULTI_PACKAGES}
PKGNAMES += ${FULLPKGNAME${_s}}
.endfor

.for _s in ${MULTI_PACKAGES}
.  for _v in PKG_ARCH PERMIT_PACKAGE_FTP PERMIT_PACKAGE_CDROM \
	RUN_DEPENDS WANTLIB LIB_DEPENDS PREFIX CATEGORIES
${_v}${_s} ?= ${${_v}}
.  endfor
.endfor

.for _s in ${MULTI_PACKAGES}
.  for _v in MESSAGE UNMESSAGE DESCR PLIST
.    if defined(${_v})
${_v}${_s} ?= ${${_v}}
.    endif
.  endfor
.endfor

_PACKAGE_LINKS =
NO_ARCH ?= no-arch
_PKG_REPO = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/
_CACHE_REPO = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/cache/
PKGFILE = ${_PKG_REPO}${_PKGFILE${SUBPACKAGE}}

.for _S in ${MULTI_PACKAGES}
_PKGFILE${_S} = ${FULLPKGNAME${_S}}${PKG_SUFX}
.  if ${PKG_ARCH${_S}} == "*" && ${NO_ARCH} != ${MACHINE_ARCH}/all
_PACKAGE_COOKIE${_S} = ${PACKAGE_REPOSITORY}/${NO_ARCH}/${_PKGFILE${_S}}
_PACKAGE_LINKS += ${MACHINE_ARCH}/all/${_PKGFILE${_S}} ${NO_ARCH}/${_PKGFILE${_S}}
_PACKAGE_COOKIES${_S} += ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${_PKGFILE${_S}}
.  else
_PACKAGE_COOKIE${_S} = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${_PKGFILE${_S}}
.  endif
_PACKAGE_COOKIES${_S} += ${_PACKAGE_COOKIE${_S}}
.  if ${PERMIT_PACKAGE_FTP${_S}:L} == "yes"
_PACKAGE_COOKIES${_S} += ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/ftp/${_PKGFILE${_S}}
_PACKAGE_LINKS += ${MACHINE_ARCH}/ftp/${_PKGFILE${_S}} ${MACHINE_ARCH}/all/${_PKGFILE${_S}}
.  endif
.  if ${PERMIT_PACKAGE_CDROM${_S}:L} == "yes"
_PACKAGE_COOKIES${_S} += ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/cdrom/${_PKGFILE${_S}}
_PACKAGE_LINKS += ${MACHINE_ARCH}/cdrom/${_PKGFILE${_S}} ${MACHINE_ARCH}/all/${_PKGFILE${_S}}
.  endif
_PACKAGE_COOKIES += ${_PACKAGE_COOKIES${_S}}
_PACKAGE_COOKIE += ${_PACKAGE_COOKIE${_S}}
PKGFILE${_S} = ${_PKG_REPO}${_PKGFILE${_S}}
.endfor

.if empty(SUBPACKAGE) || ${SUBPACKAGE} == "-"
FULLPKGPATH ?= ${PKGPATH}${FLAVOR_EXT:S/-/,/g}
FULLPKGPATH- = ${FULLPKGPATH}
_ALLPKGPATHS = ${FULLPKGPATH}
.else
_ALLPKGPATHS = ${PKGPATH}${FLAVOR_EXT:S/-/,/g}
.  for _S in ${MULTI_PACKAGES}
FULLPKGPATH${_S} ?= ${PKGPATH},${_S}${FLAVOR_EXT:S/-/,/g}
_ALLPKGPATHS += ${FULLPKGPATH${_S}}
.  endfor
FULLPKGPATH = ${FULLPKGPATH${SUBPACKAGE}}
.endif

# A few aliases for *-install targets
INSTALL_PROGRAM = \
	${INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}
INSTALL_SCRIPT = \
	${INSTALL} ${INSTALL_COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}
INSTALL_DATA = \
	${INSTALL} ${INSTALL_COPY} -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE}
INSTALL_MAN = \
	${INSTALL} ${INSTALL_COPY} -o ${MANOWN} -g ${MANGRP} -m ${MANMODE}

INSTALL_PROGRAM_DIR = \
	${INSTALL} -d -o ${BINOWN} -g ${BINGRP} -m ${DIRMODE}
INSTALL_SCRIPT_DIR = \
	${INSTALL_PROGRAM_DIR}
INSTALL_DATA_DIR = \
	${INSTALL} -d -o ${SHAREOWN} -g ${SHAREGRP} -m ${DIRMODE}
INSTALL_MAN_DIR = \
	${INSTALL} -d -o ${MANOWN} -g ${MANGRP} -m ${DIRMODE}

_INSTALL_MACROS = BSD_INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
	BSD_INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
	BSD_INSTALL_DATA="${INSTALL_DATA}" \
	BSD_INSTALL_MAN="${INSTALL_MAN}" \
	BSD_INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
	BSD_INSTALL_SCRIPT_DIR="${INSTALL_SCRIPT_DIR}" \
	BSD_INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
	BSD_INSTALL_MAN_DIR="${INSTALL_MAN_DIR}"
MAKE_ENV += ${_INSTALL_MACROS}

# setup systrace variables
NO_SYSTRACE ?= No
.if ${USE_SYSTRACE:L} == "yes" && ${NO_SYSTRACE:L} == "no"
_SYSTRACE_CMD ?= /bin/systrace -e -i -a -f ${_SYSTRACE_COOKIE}
.else
_SYSTRACE_CMD =
.endif
SYSTRACE_FILTER ?= ${PORTSDIR}/infrastructure/db/systrace.filter
_SYSTRACE_POLICIES += /bin/sh /usr/bin/env /usr/bin/make \
	/usr/bin/patch ${DEPBASE}/bin/gmake
SYSTRACE_SUBST_VARS += DISTDIR PKG_TMPDIR PORTSDIR TMPDIR WRKDIR
.for _v in ${SYSTRACE_SUBST_VARS}
_SYSTRACE_SED_SUBST += -e 's,$${${_v}},${${_v}},g'
.endfor

SHARED_LIBS ?=

.for _n _v in ${SHARED_LIBS}
LIB${_n}_VERSION = ${_v}
SUBST_VARS += LIB${_n}_VERSION
_lt_libs += LIB${_n}_LTVERSION='-version-info ${_v:S/./:/}:0'
_lt_libs += lib${_n:S/+/_/g:S/-/_/g:S/./_/g}_ltversion=${_v}
.endfor

# Create the generic variable substitution list, from subst vars
SUBST_VARS += MACHINE_ARCH ARCH HOMEPAGE ^PREFIX ^SYSCONFDIR FLAVOR_EXT \
	MAINTAINER ^BASE_PKGPATH ^LOCALBASE ^X11BASE ^TRUEPREFIX
_tmpvars =

_PKG_ADD_AUTO ?=
.if ${_SOLVING_DEP:L} == "yes"
_PKG_ADD_AUTO += -a
.endif

_PKG_ARGS += -DFLAVORS=${FLAVOR_EXT:Q}
_tmpvars += FLAVORS=${FLAVOR_EXT:Q}
_PKG_ARGS += -B ${WRKINST}
.if ${LOCALBASE} != "/usr/local"
_PKG_ARGS += -L${LOCALBASE}
.endif

.for _S in ${MULTI_PACKAGES}
PKG_ARGS${_S} ?= ${PKG_ARGS}
PKG_ARGS${_S} += ${_PKG_ARGS}
.  for _v in ${SUBST_VARS}
.    if defined(${_v:S/^^//}${_S})
PKG_ARGS${_S} += -D${_v}=${${_v:S/^^//}${_S}:Q}
_tmpvars += ${_v}${_S}=${${_v:S/^^//}${_S}:Q}
.    else
PKG_ARGS${_S} += -D${_v}=${${_v:S/^^//}:Q}
_tmpvars += ${_v}=${${_v:S/^^//}:Q}
.    endif
.  endfor

SUBST_CMD = perl ${PORTSDIR}/infrastructure/build/pkg_subst
.for _v in ${SUBST_VARS}
SUBST_CMD += -D${_v}=${${_v:S/^^//}:Q}
.endfor

PKG_ARGS${_S} += -DFULLPKGPATH=${FULLPKGPATH${_S}}
PKG_ARGS${_S} += -DPERMIT_PACKAGE_CDROM=${PERMIT_PACKAGE_CDROM${_S}:Q}
PKG_ARGS${_S} += -DPERMIT_PACKAGE_FTP=${PERMIT_PACKAGE_FTP${_S}:Q}
.endfor

# XXX
.if ${MULTI_PACKAGES} == "-"
PLIST ?= ${PKGDIR}/PLIST

.  if defined(COMMENT${FLAVOR_EXT})
_COMMENT = ${COMMENT${FLAVOR_EXT}}
.  elif defined(COMMENT)
_COMMENT = ${COMMENT}
.  endif

.  if exists(${PKGDIR}/MESSAGE)
MESSAGE ?= ${PKGDIR}/MESSAGE
.  endif

.  if exists(${PKGDIR}/UNMESSAGE)
UNMESSAGE ?= ${PKGDIR}/UNMESSAGE
.  endif

.  if exists(${PKGDIR}/INSTALL)
ERRORS += "Fatal: INSTALL script support is obsolete"
.  endif
.  if exists(${PKGDIR}/DEINSTALL)
ERRORS += "Fatal: DEINSTALL script support is obsolete"
.  endif
.  if exists(${PKGDIR}/REQ)
ERRORS += "Fatal: REQ script support is obsolete"
.  endif
.  if exists(${PKGDIR}/MODULE.pm)
PKG_ARGS- += -m ${PKGDIR}/MODULE.pm
.  endif
DESCR ?= ${PKGDIR}/DESCR

.  for _v in PLIST _COMMENT MESSAGE UNMESSAGE DESCR
.    if defined(${_v})
${_v}- = ${${_v}}
.    endif
.  endfor
.else 
.  for _S in ${MULTI_PACKAGES}
PLIST${_S} ?= ${PKGDIR}/PLIST${_S}

.    if defined(COMMENT${_S}${FLAVOR_EXT})
_COMMENT${_S} = ${COMMENT${_S}${FLAVOR_EXT}}
.    elif defined(COMMENT${_S})
_COMMENT${_S} = ${COMMENT${_S}}
.    endif

.    if exists(${PKGDIR}/MESSAGE${_S})
MESSAGE${_S} ?= ${PKGDIR}/MESSAGE${_S}
.    endif

.    if exists(${PKGDIR}/UNMESSAGE${_S})
UNMESSAGE${_S} ?= ${PKGDIR}/UNMESSAGE${_S}
.    endif

DESCR${_S} ?= ${PKGDIR}/DESCR${_S}

.    if exists(${PKGDIR}/INSTALL${_S})
ERRORS += "Fatal: INSTALL script support is obsolete"
.    endif
.    if exists(${PKGDIR}/DEINSTALL${_S})
ERRORS += "Fatal: DEINSTALL script support is obsolete"
.    endif
.    if exists(${PKGDIR}/REQ${_S})
ERRORS += "Fatal: REQ script support is obsolete"
.    endif
.    if exists(${PKGDIR}/MODULE${_S}.pm)
PKG_ARGS${_S} += -m ${PKGDIR}/MODULE${_S}.pm
.    endif
.  endfor
.endif

MTREE_FILE ?=
MTREE_FILE += ${PORTSDIR}/infrastructure/db/fake.mtree

.for _S in ${MULTI_PACKAGES}
# Fill out package command, and package dependencies
PKG_ARGS${_S} += -DCOMMENT=${_COMMENT${_S}:Q} -d ${DESCR${_S}}
PKG_ARGS${_S} += -f ${PLIST${_S}} -p ${PREFIX${_S}}
.  if defined(MESSAGE${_S})
PKG_ARGS${_S} += -M ${MESSAGE${_S}}
.  endif
.  if defined(UNMESSAGE${_S})
PKG_ARGS${_S} += -U ${UNMESSAGE${_S}}
.  endif
PKG_ARGS${_S} += -A'${PKG_ARCH${_S}}'
.  if !defined(_COMMENT${_S})
ERRORS += "Fatal: Missing comment for ${_S:S/^-$/main package/}."
.  endif
.endfor

CHMOD ?= /bin/chmod
CHOWN ?= /usr/sbin/chown
GUNZIP_CMD ?= /usr/bin/gunzip -f
GZCAT ?= /usr/bin/gzcat
GZIP ?= -9
GZIP_CMD ?= /usr/bin/gzip -nf ${GZIP}
M4 ?= /usr/bin/m4
STRIP ?= /usr/bin/strip

# Autoconf scripts MAY tend to use bison by default otherwise
YACC ?= yacc
# XXX ${SETENV} is needed in front of var=value lists whenever the next
# command is expanded from a variable, as this could be a shell construct
SETENV ?= /usr/bin/env -i
SH ?= /bin/sh

# Used to print all the '===>' style prompts - override this to turn them off.
ECHO_MSG ?= echo

# basic master sites configuration

.if exists(${PORTSDIR}/infrastructure/db/network.conf)
.include "${PORTSDIR}/infrastructure/db/network.conf"
.else
.include "${PORTSDIR}/infrastructure/templates/network.conf.template"
.endif

# XXX temporary, until people have correct network.conf
MASTER_SITE_OPENBSD ?= \
	ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/ \
	ftp://ftp.usa.openbsd.org/pub/OpenBSD/distfiles/

# Empty declarations to avoid "variable XXX is recursive" errors
MASTER_SITES ?=
# I guess we're in the master distribution business! :)  As we gain mirror
# sites for distfiles, add them to this list.
.if !defined(MASTER_SITE_OVERRIDE)
MASTER_SITES := ${MASTER_SITES} ${MASTER_SITE_BACKUP}
.else
MASTER_SITES := ${MASTER_SITE_OVERRIDE} ${MASTER_SITES}
.endif

# _SITE_SELECTOR chooses the value of sites based on select.
_SITE_SELECTOR = case $$select in


.for _I in 0 1 2 3 4 5 6 7 8 9
.  if defined(MASTER_SITES${_I})
.    if !defined(MASTER_SITE_OVERRIDE)
MASTER_SITES${_I} := ${MASTER_SITES${_I}} ${MASTER_SITE_BACKUP}
.    else
MASTER_SITES${_I} := ${MASTER_SITE_OVERRIDE} ${MASTER_SITES${_I}}
.    endif
_SITE_SELECTOR += *:${_I}) sites="${MASTER_SITES${_I}}";;
.  else
_SITE_SELECTOR += *:${_I}) echo >&2 "Error: MASTER_SITES${_I} not defined";;
.  endif
.endfor
_SITE_SELECTOR += *) sites="${MASTER_SITES}";; esac


# OpenBSD code to handle ports distfiles on a CDROM.
#
#CDROM_SITE ?= /cdrom/distfiles/${DIST_SUBDIR}
CDROM_SITE ?=

.if !empty(CDROM_SITE)
.  if defined(FETCH_SYMLINK_DISTFILES)
_CDROM_OVERRIDE = if ln -s ${CDROM_SITE}/$$f .; then exit 0; fi
.  else
_CDROM_OVERRIDE = if cp -f ${CDROM_SITE}/$$f .; then exit 0; fi
.  endif
.else
_CDROM_OVERRIDE =:
.endif

EXTRACT_SUFX ?= .tar.gz

DISTFILES ?= ${DISTNAME}${EXTRACT_SUFX}

_EVERYTHING = ${DISTFILES}
_DISTFILES = ${DISTFILES:C/:[0-9]$//}

.if defined(PATCHFILES)
_PATCHFILES = ${PATCHFILES:C/:[0-9]$//}
_EVERYTHING += ${PATCHFILES}
.endif

.if defined(SUPDISTFILES)
_EVERYTHING += ${SUPDISTFILES}
.endif

__CKSUMFILES =
# First, remove duplicates
.for _file in ${_DISTFILES} ${_PATCHFILES}
.  if empty(__CKSUMFILES:M${_file})
__CKSUMFILES += ${_file}
.  endif
.endfor

# List of all files, with ${DIST_SUBDIR} in front.  Used for checksum.
.if !empty(DIST_SUBDIR)
CHECKSUMFILES = ${__CKSUMFILES:S/^/${DIST_SUBDIR}\//}
.else
CHECKSUMFILES = ${__CKSUMFILES}
.endif

__MKSUMFILES = ${__CKSUMFILES}
.if defined(SUPDISTFILES)
# First, remove duplicates
.  for _file in ${SUPDISTFILES:C/:[0-9]$//}
.    if empty(__MKSUMFILES:M${_file})
__MKSUMFILES += ${_file}
.    endif
.  endfor
.endif

# List of all files, with ${DIST_SUBDIR} in front.  Used for makesum.
.if !empty(DIST_SUBDIR)
MAKESUMFILES = ${__MKSUMFILES:S/^/${DIST_SUBDIR}\//}
.else
MAKESUMFILES = ${__MKSUMFILES}
.endif

.if defined(IGNOREFILES)
ERRORS += "Fatal: don't use IGNOREFILES"
.endif

# This is what is actually going to be extracted, and is overridable
#  by user.
EXTRACT_ONLY ?= ${_DISTFILES}

# okay, time for some guess work
.if !empty(EXTRACT_ONLY:M*.zip)
_USE_ZIP ?= Yes
.endif
.if !empty(EXTRACT_ONLY:M*.tar.bz2) || !empty(EXTRACT_ONLY:M*.tbz2) || \
	(defined(PATCHFILES) && !empty(_PATCHFILES:M*.bz2))
_USE_BZIP2 ?= Yes
.endif
_USE_ZIP ?= No
_USE_BZIP2 ?= No

EXTRACT_CASES ?=

_PERL_FIX_SHAR ?= perl -ne 'print if $$s || ($$s = m:^\#(\!\s*/bin/sh\s*| This is a shell archive):)'

# XXX note that we DON'T set EXTRACT_SUFX.
.if ${_USE_ZIP:L} != "no"
BUILD_DEPENDS += :unzip-*:archivers/unzip
EXTRACT_CASES += *.zip) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;
.endif
.if ${_USE_BZIP2:L} != "no"
BUILD_DEPENDS += :bzip2-*:archivers/bzip2
EXTRACT_CASES += *.tar.bz2|*.tbz2) \
	${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;
.endif
EXTRACT_CASES += *.tar) \
	${TAR} xf ${FULLDISTDIR}/$$archive;;
EXTRACT_CASES += *.shar.gz|*.shar.Z|*.sh.gz|*.sh.Z) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${_PERL_FIX_SHAR} | /bin/sh;;
EXTRACT_CASES += *.shar | *.sh) \
	${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;
EXTRACT_CASES += *.tar.gz) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;
EXTRACT_CASES += *.gz) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive >`basename $$archive .gz`;;
EXTRACT_CASES += *) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

PATCH_CASES ?=
.if ${_USE_BZIP2:L} != "no"
PATCH_CASES += *.bz2) \
	${BZIP2} -dc $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
.endif
PATCH_CASES += *.Z|*.gz) \
	${GZCAT} $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
PATCH_CASES += *) \
	${PATCH} ${PATCH_DIST_ARGS} < $$patchfile;;

# Documentation
MAINTAINER ?= The OpenBSD ports mailing-list <ports@openbsd.org>

.if !defined(CATEGORIES)
ERRORS += "Fatal: CATEGORIES is mandatory."
.else
_badcat = Yes
.  for _i in ${CATEGORIES}
.    if ${_badcat} == "Yes"
.      if ${PKGPATH:M${_i}/*}
_badcat = No
.      endif
.    endif
.  endfor

.  if ${_badcat} == "Yes"
ERRORS += "Fatal: one category in ${CATEGORIES} should match PKGPATH=${PKGPATH}"
.    if ${PKGPATH:N*/*}
ERRORS += "Fatal: bogus PKGPATH=${PKGPATH} (no subdirectory)"
.    endif
.  endif
.endif



CONFIGURE_SCRIPT ?= configure
.if ${CONFIGURE_SCRIPT:M/*}
_CONFIGURE_SCRIPT = ${CONFIGURE_SCRIPT}
.else
.  if ${SEPARATE_BUILD:L} != "no"
_CONFIGURE_SCRIPT = ${WRKSRC}/${CONFIGURE_SCRIPT}
.  else
_CONFIGURE_SCRIPT = ./${CONFIGURE_SCRIPT}
.  endif
.endif

CONFIGURE_ENV += PATH=${PORTPATH}

.if ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_SHARED ?= --disable-shared
.else
CONFIGURE_SHARED ?= --enable-shared
.endif

FETCH_MANUALLY ?= No
.if ${FETCH_MANUALLY:L} != "no"
_MISSING_FILES = 
.  for _F in ${CHECKSUMFILES}
.    if !exists(${DISTDIR}/${_F})
_MISSING_FILES += ${_F}
.    endif
.  endfor
.  if !empty(_MISSING_FILES)
IS_INTERACTIVE = Yes
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

.if !defined(NO_IGNORE) && !defined(DESCRIBE_TARGET)
.  if defined(REGRESS_IS_INTERACTIVE) && defined(BATCH)
_IGNORE_REGRESS = "has interactive tests"
.  elif !defined(REGRESS_IS_INTERACTIVE) && defined(INTERACTIVE)
_IGNORE_REGRESS = "does not have interactive tests"
.  endif
.  if defined(IS_INTERACTIVE) && defined(BATCH)
IGNORE = "is an interactive port"
.  elif !defined(IS_INTERACTIVE) && defined(INTERACTIVE)
IGNORE = "is not an interactive port"
.  elif ${USE_X11:L} == "yes" && !exists(${X11BASE})
IGNORE = "uses X11, but ${X11BASE} not found"
.  elif defined(ONLY_FOR_ARCHS)
.    for __ARCH in ${MACHINE_ARCH} ${ARCH}
.      if !empty(ONLY_FOR_ARCHS:M${__ARCH})
_ARCH_OK = 1
.      endif
.    endfor
.    if !defined(_ARCH_OK)
.      if ${MACHINE_ARCH} == "${ARCH}"
IGNORE = "is only for ${ONLY_FOR_ARCHS}, not ${MACHINE_ARCH}"
.      else
IGNORE = "is only for ${ONLY_FOR_ARCHS}, not ${MACHINE_ARCH} \(${ARCH}\)"
.      endif
.    endif
.  elif defined(NOT_FOR_ARCHS)
.    for __ARCH in ${MACHINE_ARCH} ${ARCH}
.      if !empty(NOT_FOR_ARCHS:M${__ARCH})
IGNORE = "is not for ${NOT_FOR_ARCHS}"
.      endif
.    endfor
.  elif ${SHARED_ONLY:L} == "yes" && ${NO_SHARED_LIBS:L} == "yes"
IGNORE = "requires shared libraries"
.  endif
.endif		# NO_IGNORE

.if !defined(NO_IGNORE)
.  if defined(BROKEN)
IGNORE = "is marked as broken: ${BROKEN:Q}"
.  elif defined(COMES_WITH)
IGNORE = "-- ${FULLPKGNAME${SUBPACKAGE}:C/-[0-9].*//g} comes with ${OPSYS} as of release ${COMES_WITH}"
.  endif
.endif

.if !defined(DEPENDS_TARGET)
.  if make(reinstall)
DEPENDS_TARGET = reinstall
.  else
DEPENDS_TARGET = install
.  endif
.endif

################################################################
# Dependency checking
################################################################

# Various dependency styles

.if ${NO_SHARED_LIBS:L} == "yes"
_noshared = -noshared
.else
_noshared =
.endif

_libresolve_fragment = \
	case "$$d" in \
	*/*) shdir="${LOCALBASE}/$${d%/*}";; \
	*) shdir="${LOCALBASE}/lib";; \
	esac; \
	check=`eval $$listlibs 2>/dev/null| \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} \
			perl ${PORTSDIR}/infrastructure/build/resolve-lib \
				${_noshared} $$d` \
			|| check=Failed

_syslibresolve_fragment = \
	case "$$d" in \
	/*) \
		shdir="$${d%/*}/";; \
	*/*) \
		shdir="${DEPBASE}/$${d%/*}";; \
	*) \
		shdir="${DEPBASE}/lib"; \
		listlibs="$$listlibs /usr/lib/lib* ${X11BASE}/lib/lib*";; \
	esac; \
	check=`eval $$listlibs 2>/dev/null| \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} \
		perl ${PORTSDIR}/infrastructure/build/resolve-lib ${_noshared} $$d` \
		|| check=Failed


PORT_LD_LIBRARY_PATH = ${LOCALBASE}/lib:${X11BASE}/lib:/usr
_set_ld_library_path = :
DEPBASE = ${LOCALBASE}
DEPDIR =

.if ${FORCE_UPDATE:L} == "yes" || ${FORCE_UPDATE:L} == "hard"
_force_update_fragment = { \
		${ECHO_MSG} "===>  Verifying update for $$what in $$dir"; \
		if ( eval $$toset exec ${MAKE} subupdate ); then \
			${ECHO_MSG} "===> Returning to build of ${FULLPKGNAME${SUBPACKAGE}}${_MASTER}"; \
		else \
			${REPORT_PROBLEM}; \
			exit 1; \
		fi; \
	}
_PKG_ADD_FORCE = -F update -F updatedepends -r
.  if ${FORCE_UPDATE:L} == "hard"
_PKG_ADD_FORCE += -F installed
.  endif
.else
_force_update_fragment = :
_PKG_ADD_FORCE =
.endif

_FULL_PACKAGE_NAME ?= No

_BUILDLIB_DEPENDS = ${LIB_DEPENDS}
_BUILDWANTLIB = ${WANTLIB}
# strip inter-multi-packages dependencies during building
.for _path in ${PKGPATH:S,^mystuff/,,}
.  for _s in ${MULTI_PACKAGES}
_BUILDLIB_DEPENDS += ${LIB_DEPENDS${_s}:N*\:${_path}:N*\:${_path},*}
_BUILDWANTLIB += ${WANTLIB${_s}}
.  endfor
.endfor

.if ${NO_DEPENDS:L} == "no"
_BUILD_DEPLIST = ${BUILD_DEPENDS:S/^://}
_RUN_DEPLIST = ${RUN_DEPENDS${SUBPACKAGE}:S/^://}
_REGRESS_DEPLIST = ${REGRESS_DEPENDS:S/^://}
_BUILDLIB_DEPLIST = ${_BUILDLIB_DEPENDS:C/^[^:]*://}
_RUNLIB_DEPLIST = ${LIB_DEPENDS${SUBPACKAGE}:C/^[^:]*://}
.endif
_DEPLIST = ${_BUILD_DEPLIST} ${_RUN_DEPLIST} ${_REGRESS_DEPLIST} \
	${_BUILDLIB_DEPLIST} ${_RUNLIB_DEPLIST}

.for _DEP in BUILD RUN BUILDLIB RUNLIB REGRESS
_DEP${_DEP}_COOKIES =
.  for _i in ${_${_DEP}_DEPLIST}
_DEP${_DEP}_COOKIES += ${WRKDIR}/.dep${_i:C,[|:/<=>*],-,g}
.  endfor
.endfor

# Normal user-mode targets are PHONY targets, e.g., don't create the
# corresponding file. However, there is nothing phony about the cookie.

MODSIMPLE_configure = \
	cd ${WRKCONF} && ${_SYSTRACE_CMD} ${SETENV} \
		CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS:C/ *$//}" \
		CXX="${CXX}" ac_cv_path_CXX="${CXX}" CXXFLAGS="${CXXFLAGS:C/ *$//}" \
		INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		ac_given_INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
		YACC="${YACC}" \
		${CONFIGURE_ENV} ${_CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}

VMEM_WARNING ?= No

_FAKE_SETUP = TRUEPREFIX=${PREFIX} PREFIX=${WRKINST}${PREFIX} \
	${DESTDIRNAME}=${WRKINST}

_CLEANDEPENDS ?= Yes

.for _S in ${MULTI_PACKAGES}
_FETCH_MAKEFILE_NAMES += ${PKGPATH}/${FULLPKGNAME${_S}}
.endfor

# Internal variables, used by dependencies targets
# Only keep pkg:dir spec

_BUILD_DEP2 = ${BUILD_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_BUILD_DEP3 = ${BUILD_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}

_RUN_DEP2 = ${RUN_DEPENDS${SUBPACKAGE}:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_RUN_DEP3 = ${RUN_DEPENDS${SUBPACKAGE}:C/^[^:]*:([^:]*:[^:]*).*$/\1/}

_REGRESS_DEP2 = ${REGRESS_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}

.if ${NO_SHARED_LIBS:L} != "yes"
_RUN_DEP2 += ${LIB_DEPENDS${SUBPACKAGE}:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_LIB_DEP3 = ${LIB_DEPENDS${SUBPACKAGE}}
_DEPRUNLIBS = ${LIB_DEPENDS${SUBPACKAGE}:C/:.*//:S/,/ /g}
.else
_LIB_DEP3 =
_DEPRUNLIBS =
.endif

_BUILD_DEP2 += ${_BUILDLIB_DEPENDS:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
_DEPBUILDLIBS = ${_BUILDLIB_DEPENDS:C/:.*//:S/,/ /g}

_DEPBUILDLIBS += ${_BUILDWANTLIB}
_DEPRUNLIBS += ${WANTLIB${SUBPACKAGE}}

.if ${NO_DEPENDS:L} == "no"
.  for i in ${_DEPBUILDLIBS:C,[|:/<=>*],-,g}
_DEPBUILDLIBSPECS_COOKIES += ${WRKDIR}/.spec-$i
.  endfor
_DEPBUILDWANTLIB_COOKIE = ${WRKDIR}/.buildwantlibs
.  for i in ${_DEPRUNLIBS:C,[|:/<=>*],-,g}
_DEPRUNLIBSPECS_COOKIES += ${WRKDIR}/.spec-$i
.  endfor
_DEPRUNWANTLIB_COOKIE = ${WRKDIR}/.runwantlibs${SUBPACKAGE}
.else
_DEPBUILDWANTLIB_COOKIE =
_DEPRUNWANTLIB_COOKIE =
.endif

_DEPLIBSPECS_COOKIES = ${_DEPBUILDLIBSPECS_COOKIES} ${_DEPRUNLIBSPECS_COOKIES}

_BUILD_DEP = ${_BUILD_DEP2:C/[^:]*://}
_RUN_DEP = ${_RUN_DEP2:C/[^:]*://}
_REGRESS_DEP = ${_REGRESS_DEP2:C/[^:]*://}

.for _S in ${MULTI_PACKAGES}
_BUILD_DEP3${_S} = ${_BUILD_DEP3}
_RUN_DEP3${_S} = ${RUN_DEPENDS${_S}:C/^[^:]*:([^:]*:[^:]*).*$/\1/}
.  if ${NO_SHARED_LIBS:L} != "yes"
_LIB_DEP3${_S} = ${LIB_DEPENDS${_S}}
.  else
_LIB_DEP3${_S} =
.  endif
.endfor

README_NAME ?= ${TEMPLATES}/README.port

REORDER_DEPENDENCIES ?=
ECHO_REORDER ?= :

# Lock infrastructure:
# nothing happens unless LOCKDIR is defined to a non-empty value

LOCKDIR ?=
LOCK_CMD ?= perl ${PORTSDIR}/infrastructure/build/dolock
UNLOCK_CMD ?= rm -f
_LOCKS_HELD ?=
LOCK_VERBOSE ?= No
.if !empty(LOCKDIR)
.  if ${LOCK_VERBOSE:L} == "yes"
_LOCK = echo "Locking $$lock (${BUILD_PKGPATH}) from $@"; ${LOCK_CMD} ${LOCKDIR}/$$lock.lock ${BUILD_PKGPATH}
_UNLOCK = echo "Unlocking $$lock from $@"; ${UNLOCK_CMD} ${LOCKDIR}/$$lock.lock
.  else
_LOCK = ${LOCK_CMD} ${LOCKDIR}/$$lock.lock ${BUILD_PKGPATH}
_UNLOCK = ${UNLOCK_CMD} ${LOCKDIR}/$$lock.lock
.  endif
.  if ${SEPARATE_BUILD:L:Mflavored}
_LOCKNAME = ${PKGNAME}
.  else
_LOCKNAME = ${FULLPKGNAME}
.  endif

.  for _i in ${_LOCKNAME}
.    if empty(_LOCKS_HELD:M${_i})
_DO_LOCK = \
	lock=${_LOCKNAME}; \
	_LOCKS_HELD="${_LOCKS_HELD} ${_LOCKNAME}"; export _LOCKS_HELD; \
	${_SIMPLE_LOCK}
.    endif
.  endfor

_SIMPLE_LOCK = \
	${_LOCK}; trap '${_UNLOCK}' 0 1 2 3 13 15

.endif
_SIMPLE_LOCK ?= :
_DO_LOCK ?= :

_size_fragment = wc -c $$file 2>/dev/null| \
	awk '{print "SIZE (" $$2 ") = " $$1}'

# commands used all the time
_lines2list = tr '\012' '\040' | sed -e 's, $$,,'

_zap_last_line = sed -e '$$d'

_sort_dependencies = tsort -r|${_zap_last_line}

_version2default = sed -e 's,-[0-9].*,-*,'

_grab_libs_from_plist = sed -n -e '/^@lib /{ s///; p; }' \
	-e '/^@file .*\/lib\/lib.*\.a$$/{ s/^@file //; p; }'


###
### end of variable setup. Only targets now
###

.for _S in ${MULTI_PACKAGES}

${_CACHE_REPO}/${_PKGFILE${_S}}:
	@mkdir -p ${@D}
	@${ECHO_MSG} -n "===>  Looking for ${_PKGFILE${_S}} in \$$PKG_PATH - "
	@if ${SETENV} ftp_proxy=${ftp_proxy} http_proxy=${http_proxy} PKG_CACHE=${_CACHE_REPO} PKG_PATH=${_CACHE_REPO}:${_PKG_REPO}:${PACKAGE_REPOSITORY}/${NO_ARCH}/:${PKG_PATH} PKG_TMPDIR=${PKG_TMPDIR} pkg_add -n -q ${_PKG_ADD_FORCE} ${_PKGFILE${_S}} >/dev/null 2>&1; then \
		${ECHO_MSG} "found"; \
		exit 0; \
	else \
		${ECHO_MSG} "not found"; \
		exit 1; \
	fi


# The real package

${_PACKAGE_COOKIE${_S}}:
	@mkdir -p ${@D}
.  if ${FETCH_PACKAGES:L} == "yes" && !defined(_TRIED_FETCHING_${_PACKAGE_COOKIE${_S}})
	@f=${_CACHE_REPO}/${_PKGFILE${_S}}; \
	cd ${.CURDIR} && ${MAKE} $$f && \
		{ ln $$f $@ 2>/dev/null || cp -p $$f $@ ; } || \
		cd ${.CURDIR} && ${MAKE} _TRIED_FETCHING_${_PACKAGE_COOKIE${_S}}=Yes _internal-package-only
.  else
	@cd ${.CURDIR} && exec ${MAKE} ${_PACKAGE_COOKIE_DEPS}
.    if target(pre-package)
	@cd ${.CURDIR} && exec ${MAKE} pre-package
.    endif
.  if target(do-package)
	@cd ${.CURDIR} && exec ${MAKE} do-package
.    else
# What PACKAGE normally does:
	@${ECHO_MSG} "===>  Building package for ${FULLPKGNAME${_S}}"
	@${ECHO_MSG} "Create ${_PACKAGE_COOKIE${_S}}"
	@cd ${.CURDIR} && \
      deps=`SUBPACKAGE=${_S} ${MAKE} _print-package-args` && \
	  if ${SUDO} ${PKG_CMD} $$deps ${PKG_ARGS${_S}} ${_PACKAGE_COOKIE${_S}}; then \
	    mode=`id -u`:`id -g`; ${SUDO} ${CHOWN} $${mode} ${_PACKAGE_COOKIE${_S}}; \
		if ${_check_lib_depends} ${_PACKAGE_COOKIE${_S}} && \
			${_register_plist} ${_PACKAGE_COOKIE${_S}}; then \
				exit 0; \
		fi; \
	  fi && \
	  ${SUDO} ${MAKE} _internal-clean=package && \
	  exit 1
# End of PACKAGE.
.    endif
.    if target(post-package)
	@cd ${.CURDIR} && exec ${MAKE} post-package
.    endif
	@rm -f ${_BULK_COOKIE} ${_UPDATE_COOKIE${_S}} ${_FUPDATE_COOKIE${_S}}
.  endif


# The real install

${_INSTALL_COOKIE${_S}}:
.  if ${FETCH_PACKAGES:L} == "yes"
	@cd ${.CURDIR} && exec ${MAKE} subpackage
.  else
	@cd ${.CURDIR} && exec ${MAKE} package
.  endif
	@cd ${.CURDIR} && SUBPACKAGE=${_S} DEPENDS_TARGET=install \
		exec ${MAKE} _internal-run-depends _internal-runlib-depends \
		_internal-runwantlib-depends
	@${ECHO_MSG} "===>  Installing ${FULLPKGNAME${_S}} from ${_PKG_REPO}"
.  for _m in ${MODULES:T:U}
.    if defined(MOD${_m}_pre-install)
	@${MOD${_m}_pre-install}
.    elif defined(MOD${_m}_pre_install)
	@${MOD${_m}_pre_install}
.    endif
.  endfor
.  if ${TRUST_PACKAGES:L} == "yes"
	@if ${_PKG_QUERY} ${FULLPKGNAME${_S}}; then \
		echo "Package ${FULLPKGNAME${_S}} is already installed"; \
	else \
		${SUDO} ${SETENV} PKG_PATH=${_PKG_REPO} PKG_TMPDIR=${PKG_TMPDIR} pkg_add ${_PKG_ADD_AUTO} ${PKGFILE${_S}}; \
	fi
.  else
	@${SUDO} ${SETENV} PKG_PATH=${_PKG_REPO} PKG_TMPDIR=${PKG_TMPDIR} pkg_add ${_PKG_ADD_AUTO} ${PKGFILE${_S}}
.  endif
	@-${SUDO} ${_MAKE_COOKIE} $@


${_UPDATE_COOKIE${_S}}:
	@cd ${.CURDIR} && exec ${MAKE} _internal-package
.  if empty(UPDATE_COOKIES_DIR)
	@exec ${MAKE} ${WRKDIR}
.  else
	@mkdir -p ${UPDATE_COOKIES_DIR}
.  endif
	@${ECHO_MSG} "===> Updating for ${FULLPKGNAME${_S}}"
	@a=`${_PKG_QUERY} ${FULLPKGPATH${_S}} 2>/dev/null || true`; \
	case $$a in \
		'') ${ECHO_MSG} "Not installed, no update";; \
		*) cd ${.CURDIR} && SUBPACKAGE=${_S} DEPENDS_TARGET=package \
		     ${MAKE} _internal-run-depends _internal-runlib-depends \
			   _internal-runwantlib-depends; \
		   ${ECHO_MSG} "Upgrading from $$a"; \
		   ${SUDO} ${SETENV} PKG_PATH=${_PKG_REPO} PKG_TMPDIR=${PKG_TMPDIR} pkg_add ${_PKG_ADD_AUTO} -r ${_PKG_ADD_FORCE} ${PKGFILE${_S}};; \
	esac
	@${_MAKE_COOKIE} $@

${_FUPDATE_COOKIE${_S}}:
	@cd ${.CURDIR} && exec ${MAKE} _internal-package
	@cd ${.CURDIR} && SUBPACKAGE=${_S} DEPENDS_TARGET=package \
		exec ${MAKE} _internal-run-depends _internal-runlib-depends \
		_internal-runwantlib-depends
.  if empty(UPDATE_COOKIES_DIR)
	@exec ${MAKE} ${WRKDIR}
.  else
	@mkdir -p ${UPDATE_COOKIES_DIR}
.  endif
	@${ECHO_MSG} "===> Updating/installing for ${FULLPKGNAME${_S}}"
	@${SUDO} ${SETENV} PKG_PATH=${_PKG_REPO} PKG_TMPDIR=${PKG_TMPDIR} pkg_add ${_PKG_ADD_AUTO} -r ${_PKG_ADD_FORCE} ${PKGFILE${_S}}
	@${_MAKE_COOKIE} $@
.endfor

.PRECIOUS: ${_PACKAGE_COOKIES} ${_INSTALL_COOKIES}

${_SYSTRACE_COOKIE}: ${_WRKDIR_COOKIE}
	@rm -f $@
.for _i in ${_SYSTRACE_POLICIES}
	@echo "Policy: ${_i}, Emulation: native" >> $@
	@if [ -f ${.CURDIR}/systrace.filter ]; then \
		sed ${_SYSTRACE_SED_SUBST} ${.CURDIR}/systrace.filter >> $@; \
	fi
	@sed ${_SYSTRACE_SED_SUBST} ${SYSTRACE_FILTER} >> $@
.endfor
	@if [ -f ${.CURDIR}/systrace.policy ]; then \
		sed ${_SYSTRACE_SED_SUBST} ${.CURDIR}/systrace.policy >> $@; \
	fi

makesum: fetch-all
.if !defined(NO_CHECKSUM) && !empty(MAKESUMFILES)
	@rm -f ${CHECKSUM_FILE}
	@cd ${DISTDIR} && cksum -b -a "${_CIPHERS}" ${MAKESUMFILES} >> ${CHECKSUM_FILE}
	@cd ${DISTDIR} && \
		for file in ${MAKESUMFILES}; do \
			${_size_fragment} >> ${CHECKSUM_FILE}; \
		done
	@sort -u -o ${CHECKSUM_FILE} ${CHECKSUM_FILE}
.endif


addsum: fetch-all
.if !defined(NO_CHECKSUM)
	@touch ${CHECKSUM_FILE}
	@cd ${DISTDIR} && \
	 	for cipher in ${_CIPHERS}; do \
			cksum -b -a $$cipher ${MAKESUMFILES} >> ${CHECKSUM_FILE}; \
	    done
	@cd ${DISTDIR} && \
		for file in ${MAKESUMFILES}; do \
			${_size_fragment} >> ${CHECKSUM_FILE}; \
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
	_internal-run-depends _internal-buildwantlib-depends \
	_internal-runwantlib-depends _internal-regress-depends

# and the rules for the actual dependencies

_print-packagename:
.if ${_FULL_PACKAGE_NAME:L} == "yes"
	@echo '${PKGPATH}/${FULLPKGNAME${SUBPACKAGE}}'
.else
	@echo ${FULLPKGNAME${SUBPACKAGE}}
.endif

.for _i in ${_DEPLIST}
.  if !target(${WRKDIR}/.dep${_i:C,[|:/<=>*],-,g})
${WRKDIR}/.dep${_i:C,[|:/<=>*],-,g}: ${_WRKDIR_COOKIE}
	@unset DEPENDS_TARGET _MASTER WRKDIR|| true; \
	echo '${_i}'|{ \
		IFS=:; read pkg subdir target; \
		extra_msg="(DEPENDS ${_i})"; \
		${_flavor_fragment}; defaulted=false; checkinstall=true; \
		case "X$$target" in X) target=${DEPENDS_TARGET};; esac; \
		case "X$$target" in \
		Xinstall|Xreinstall) early_exit=false;; \
		Xpackage|Xfake) early_exit=true;; \
		Xpatch|Xconfigure|Xlicense-check|Xbuild) \
			early_exit=true; mkdir -p ${WRKDIR}/$$dir; \
			toset="$$toset _MASTER='[${FULLPKGNAME${SUBPACKAGE}}]${_MASTER}' WRKDIR=${WRKDIR}/$$dir"; \
			checkinstall=false;; \
		Xextract) \
			${ECHO_MSG} "===> Error: bad dependency ${_i}"; \
			${REPORT_PROBLEM}; \
			exit 1;; \
		*) \
			${ECHO_MSG} "===> Error: don't know how to depend on $$target"; \
			${REPORT_PROBLEM}; \
			exit 1;; \
		esac; \
		toset="$$toset _SOLVING_DEP=Yes"; \
		case "X$$pkg" in X) \
			if pkg=`eval $$toset ${MAKE} _print-packagename`; \
			then \
				defaulted=true; \
				pkg=`echo $$pkg|${_version2default}`; \
			else \
				${ECHO_MSG} "===> Error in evaluating dependency ${_i}"; \
				${REPORT_PROBLEM}; \
				exit 1; \
			fi;; esac; \
		for abort in false false true; do \
			if $$abort; then \
				${ECHO_MSG} "Dependency check failed"; \
				${REPORT_PROBLEM}; \
				exit 1; \
			fi; \
			found=false; \
			what=$$pkg; \
			if $$checkinstall; then \
				$$early_exit || ${_force_update_fragment}; \
				if ${_PKG_QUERY} "$$pkg" -q; then \
					${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} depends on: $$what - found"; \
					break; \
				else \
					: $${msg:= not found}; \
					${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} depends on: $$what -$$msg"; \
				fi; \
			fi; \
			${ECHO_MSG} "===>  Verifying $$target for $$what in $$dir"; \
			if (eval $$toset exec ${MAKE} $$target); then \
				${ECHO_MSG} "===> Returning to build of ${FULLPKGNAME${SUBPACKAGE}}${_MASTER}"; \
			else \
				${REPORT_PROBLEM}; \
				exit 1; \
			fi; \
			if $$early_exit; then \
				break; \
			fi; \
		done; \
	}
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin
	@${_MAKE_COOKIE} $@
.  endif
.endfor

_internal-build-depends: ${_DEPBUILD_COOKIES}
_internal-run-depends: ${_DEPRUN_COOKIES}
_internal-lib-depends: ${_DEPBUILDLIB_COOKIES}
_internal-regress-depends: ${_DEPREGRESS_COOKIES}
_internal-buildlib-depends: ${_DEPBUILDLIB_COOKIES}
_internal-runlib-depends: ${_DEPRUNLIB_COOKIES}

.  if !empty(_DEPLIBSPECS_COOKIES)
${_DEPLIBSPECS_COOKIES}: ${_WRKDIR_COOKIE}
	@${_MAKE_COOKIE} $@
.endif

.for _m in BUILD RUN
.  if !empty(_DEP${_m}WANTLIB_COOKIE)
${_DEP${_m}WANTLIB_COOKIE}: ${_DEP${_m}LIBSPECS_COOKIES} \
	${_DEP${_m}LIB_COOKIES} ${_DEPBUILD_COOKIES} ${_WRKDIR_COOKIE}
.    if !empty(_DEP${_m}LIBS)
	@${ECHO_MSG} "===>  Verifying specs: ${_DEP${_m}LIBS}"
	@listlibs="echo ${LOCALBASE}/lib/lib* /usr/lib/lib* ${X11BASE}/lib/lib*"; \
	for d in ${_DEP${_m}LIBS:S/>/\>/g}; do \
		case "$$d" in \
		/*) listlibs="$$listlibs $${d%/*}/lib*";; \
		*/*) listlibs="$$listlibs ${DEPBASE}/$${d%/*}/lib*";; \
		esac; \
	done; \
	if found=`eval $$listlibs 2>/dev/null| \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} perl \
		${PORTSDIR}/infrastructure/build/resolve-lib ${_noshared} ${_DEP${_m}LIBS:S/>/\>/g}`; then \
		line="===>  found"; \
		for k in $$found; do line="$$line $$k"; done; \
		${ECHO_MSG} "$$line"; \
	else \
		echo 1>&2 "Fatal error"; \
		exit 1; \
	fi
.    endif
	@${_MAKE_COOKIE} $@
.  endif

_internal-${_m:L}wantlib-depends: ${_DEP${_m}WANTLIB_COOKIE}
.endfor

_internal-fetch-all:
# See ports/infrastructure/templates/Makefile.template
	@${ECHO_MSG} "===>  Checking files for ${FULLPKGNAME}${_MASTER}"
.if target(pre-fetch)
	@cd ${.CURDIR} && exec ${MAKE} pre-fetch __FETCH_ALL=Yes
.endif
.if target(do-fetch)
ERRORS += "Fatal: you're not allowed to override do-fetch"
.else
# What FETCH-ALL normally does:
.  if !empty(MAKESUMFILES)
	@cd ${.CURDIR} && exec ${MAKE} ${MAKESUMFILES:S@^@${DISTDIR}/@}
.    endif
# End of FETCH
.endif
.if target(post-fetch)
	@cd ${.CURDIR} && exec ${MAKE} post-fetch __FETCH_ALL=Yes
.endif

.if defined(IGNORE) && !defined(NO_IGNORE)
_internal-all _internal-build _internal-checksum _internal-configure \
	_internal-deinstall _internal-extract _internal-fake _internal-fetch \
	_internal-install _internal-install-all _internal-manpages-check \
	_internal-package _internal-patch _internal-plist _internal-regress \
	_internal-subpackage _internal-subupdate _internal-uninstall \
	_internal-update _internal-update-or-install \
	_internal-update-or-install-all _internal-update-plist describe dump-vars \
	port-lib-depends-check update-patches:
.  if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${IGNORE}."
.  endif

.else

.  if ${ELF_TOOLCHAIN:L} == "no"
_LIB_DEPENDS_FLAGS=-o
.  else
_LIB_DEPENDS_FLAGS=
.  endif

lib-depends-check:
	@cd ${.CURDIR} && exec ${MAKE} package
	@PORTSDIR=${PORTSDIR} perl ${PORTSDIR}/infrastructure/package/check-lib-depends \
		${_LIB_DEPENDS_FLAGS} -d ${_PKG_REPO} ${_PACKAGE_COOKIE}

${WRKINST}/.saved_libs: ${_FAKE_COOKIE}
	@${SUDO} perl ${PORTSDIR}/infrastructure/package/check-lib-depends -F ${WRKINST} -O $@

port-lib-depends-check: ${WRKINST}/.saved_libs
.  for _S in ${MULTI_PACKAGES}
	@-SUBPACKAGE=${_S} ${MAKE} print-plist-with-depends | \
	 PORTSDIR=${PORTSDIR} perl ${PORTSDIR}/infrastructure/package/check-lib-depends \
		${_LIB_DEPENDS_FLAGS} -d ${_PKG_REPO} -B ${WRKINST} -s ${WRKINST}/.saved_libs
.  endfor

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
.    if !empty(CHECKSUMFILES)
	@cd ${.CURDIR} && exec ${MAKE} ${CHECKSUMFILES:S@^@${DISTDIR}/@}
.    endif
# End of FETCH
.  endif
.  if target(post-fetch)
	@cd ${.CURDIR} && exec ${MAKE} post-fetch
.  endif


_internal-checksum: _internal-fetch
.  if ! defined(NO_CHECKSUM)
	@if [ -z "${DISTFILES}" ]; then \
	  ${ECHO_MSG} ">> No distfiles."; \
	elif [ ! -f ${CHECKSUM_FILE} ]; then \
	  ${ECHO_MSG} ">> No checksum file."; \
	  exit 1; \
	else \
	  cd ${DISTDIR}; OK=true; list=''; \
		for file in ${CHECKSUMFILES}; do \
		  for cipher in ${PREFERRED_CIPHERS}; do \
			set -- `grep -i "^$$cipher ($$file)" ${CHECKSUM_FILE}` && break || \
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
			  echo -n '>> '; \
			  if ! echo "$$@" | cksum -c; then \
				  echo ">> Checksum mismatch for $$file. ($$cipher)"; \
				  list="$$list $$file $$cipher $$4"; \
				  OK=false; \
			  fi;; \
		  esac; \
		done; \
		set --; \
		if ! $$OK; then \
		  if ${REFETCH}; then \
		  	cd ${.CURDIR} && ${MAKE} _refetch _PROBLEMS="$$list"; \
		  else \
			echo "Make sure the Makefile and checksum file (${CHECKSUM_FILE})"; \
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
		MASTER_SITE_OVERRIDE="${MASTER_SITE_OPENBSD:=by_cipher/${cipher}/${value:C/(..).*/\1/}/${value}/} ${MASTER_SITE_OPENBSD:=${cipher}/${value}/}"
.  endfor
	cd ${.CURDIR} && exec ${MAKE} _internal-checksum REFETCH=false


# The cookie's recipe hold the real rule for each of those targets.

_internal-extract: ${_EXTRACT_COOKIE}
_internal-patch: ${_DEPBUILD_COOKIES} ${_DEPBUILDLIB_COOKIES} \
	${_DEPBUILDWANTLIB_COOKIE} ${_PATCH_COOKIE}
_internal-distpatch: ${_DEPBUILD_COOKIES} ${_DEPBUILDLIB_COOKIES} \
	${_DEPBUILDWANTLIB_COOKIE} ${_DISTPATCH_COOKIE}
_internal-configure: ${_DEPBUILD_COOKIES} ${_DEPBUILDLIB_COOKIES} \
	${_DEPBUILDWANTLIB_COOKIE} ${_CONFIGURE_COOKIE}
_internal-build _internal-all: ${_DEPBUILD_COOKIES} ${_DEPBUILDLIB_COOKIES} \
	${_DEPBUILDWANTLIB_COOKIE} ${_BUILD_COOKIE}
_internal-install: ${_INSTALL_COOKIE${SUBPACKAGE}}
_internal-install-all: ${_INSTALL_COOKIES}
_internal-fake: ${_FAKE_COOKIE}
_internal-subupdate: ${_UPDATE_COOKIE${SUBPACKAGE}}
_internal-update: ${_UPDATE_COOKIES}
_internal-update-or-install: ${_FUPDATE_COOKIE${SUBPACKAGE}
_internal-update-or-install-all: ${_FUPDATE_COOKIES}


.  if defined(_IGNORE_REGRESS)
_internal-regress:
.    if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${_IGNORE_REGRESS}."
.    endif
.  else
_internal-regress: ${_BUILD_COOKIE} ${_DEPREGRESS_COOKIES} ${_REGRESS_COOKIE}
.  endif

# packing list utilities.  This generates a packing list from a recently
# installed port.  Not perfect, but pretty close.  The generated file
# will have to have some tweaks done by hand.
# Note: add @comment PACKAGE(arch=${MACHINE_ARCH}, opsys=${OPSYS}, vers=${OPSYS_VER})
# when port is installed or package created.
#
.if ${SHARED_ONLY:L} == "yes"
_do_libs_too =
.else
_do_libs_too = NO_SHARED_LIBS=Yes
.endif

_extra_info =
.for _s in ${MULTI_PACKAGES}
_extra_info += PLIST${_s}='${PLIST${_s}}'
_extra_info += DEPPATHS${_s}="`${SETENV} FLAVOR=${FLAVOR:Q} SUBPACKAGE=${_s} ${MAKE} run-dir-depends ${_do_libs_too}|${_sort_dependencies}`"
.endfor

_internal-plist _internal-update-plist: _internal-fake
	@${ECHO_MSG} "===>  Updating plist for ${FULLPKGNAME}${_MASTER}"
	@mkdir -p ${PKGDIR}
	@DESTDIR=${WRKINST} \
	PREFIX=${TRUEPREFIX} \
	INSTALL_PRE_COOKIE=${_INSTALL_PRE_COOKIE} \
	MAKE="${MAKE}" \
	PORTSDIR=${PORTSDIR} \
	FLAVORS='${FLAVORS}' MULTI_PACKAGES='${MULTI_PACKAGES}' \
	OKAY_FILES='${_FAKE_COOKIE} ${_INSTALL_PRE_COOKIE} ${WRKINST}/.saved_libs' \
	SHARED_ONLY="${SHARED_ONLY}" \
	OWNER=`id -u` \
	GROUP=`id -g` \
	${SUDO} perl ${PORTSDIR}/infrastructure/install/make-plist \
	${_extra_info} ${_tmpvars}

update-patches:
	@toedit=`WRKDIST=${WRKDIST} PATCHDIR=${PATCHDIR} \
		PATCH_LIST='${PATCH_LIST}' DIFF_ARGS='${DIFF_ARGS}' \
		DISTORIG=${DISTORIG} PATCHORIG=${PATCHORIG} \
		/bin/sh ${PORTSDIR}/infrastructure/build/update-patches`; \
	case $$toedit in "");; \
	*) read i?'edit patches: '; \
	cd ${PATCHDIR} && $${VISUAL:-$${EDITOR:-/usr/bin/vi}} $$toedit;; esac



.endif # IGNORECMD


# Top-level targets redirect to the real _internal-target, along with locking
# if locking exists.

.for _t in extract patch distpatch configure build all install fake \
	subupdate fetch fetch-all checksum regress \
	depends lib-depends build-depends run-depends regress-depends \
	clean manpages-check plist update-plist \
	update update-or-install update-or-install-all package install-all
.  if defined(_LOCK)
${_t}:
	@${_DO_LOCK}; cd ${.CURDIR} && ${MAKE} _internal-${_t}
.  else
${_t}: _internal-${_t}
.  endif
.endfor

lock:
	@lock=${_LOCKNAME}; ${_LOCK}
	export _LOCKS_HELD="${_LOCKS_HELD} ${_LOCKNAME}"

unlock:
	@lock=${_LOCKNAME}; ${_UNLOCK}
.for _i in ${_LOCKNAME}
	export _LOCKS_HELD="${_LOCKS_HELD:N${_i}}"
.endfor

subpackage:
	@${_DO_LOCK}; cd ${.CURDIR} && ${MAKE} _internal-subpackage

_internal-package: 
	@cd ${.CURDIR} && exec ${MAKE} _internal-package-only
.if ${BULK_${PKGPATH}:L} == "yes"
	@cd ${.CURDIR} && exec ${MAKE} ${_BULK_COOKIE}
.endif


${_BULK_COOKIE}:
	@cd ${.CURDIR} && exec ${MAKE} _internal-package-only
	@mkdir -p ${BULK_COOKIES_DIR}
.for _i in ${BULK_TARGETS_${PKGPATH}}
	@${ECHO_MSG} "===> Running ${_i}"
	@cd ${.CURDIR} && exec ${MAKE} ${_i} ${BULK_FLAGS}
.endfor
.if !empty(BULK_DO_${PKGPATH})
	@${BULK_DO_${PKGPATH}}
.endif
	@cd ${.CURDIR} && exec ${SUDO} ${MAKE} _internal-clean
	@${_MAKE_COOKIE} $@

# The real targets. Note that some parts always get run, some parts can be
# disabled, and there are hooks to override behavior.

${_WRKDIR_COOKIE}:
	@rm -rf ${WRKDIR}
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin ${DEPDIR}
#	@ln -s ${LOCALBASE}/bin/pkg-config ${WRKDIR}/bin
.if !empty(WRKDIR_LINKNAME)
	@ln -sf ${WRKDIR} ${.CURDIR}/${WRKDIR_LINKNAME}
.endif
	@${_MAKE_COOKIE} $@

${_EXTRACT_COOKIE}: ${_WRKDIR_COOKIE} ${_SYSTRACE_COOKIE}
	@cd ${.CURDIR} && exec ${MAKE} \
		_internal-checksum _internal-build-depends \
		_internal-buildlib-depends _internal-buildwantlib-depends
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
	${_set_ld_library_path}; \
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
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} pre-patch
.  if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.  endif
.endif



# The real distpatch

${_DISTPATCH_COOKIE}: ${_EXTRACT_COOKIE}
.if target(pre-patch)
	@cd ${.CURDIR} && exec ${MAKE} ${_PREPATCH_COOKIE}
.endif
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-distpatch
.if target(post-distpatch)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} post-distpatch
.endif
.if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.endif

.if !target(do-distpatch)
do-distpatch:
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

# The real patch

${_PATCH_COOKIE}: ${_EXTRACT_COOKIE}
	@${ECHO_MSG} "===>  Patching for ${FULLPKGNAME}${_MASTER}"
.if target(pre-patch)
	@cd ${.CURDIR} && exec ${MAKE} ${_PREPATCH_COOKIE}
.endif
.if target(do-patch)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-patch
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
						${_SYSTRACE_CMD} ${PATCH} ${PATCH_ARGS} < $$i || \
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
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} post-patch
.endif
.for _m in ${MODULES:T:U}
.  if defined(MOD${_m}_post-patch)
	@${MOD${_m}_post-patch}
.  endif
.endfor
.if !empty(REORDER_DEPENDENCIES)
	@sed -e '/^#/d' ${REORDER_DEPENDENCIES} | \
	  tsort -r|while read f; do \
	    cd ${WRKSRC}; \
		case $$f in \
		/*) \
			find . -name $${f#/} -print| while read i; \
				do ${ECHO_REORDER} "Touching $$i"; touch $$i; done \
			;; \
		*) \
			if test -e $$f ; then \
				${ECHO_REORDER} "Touching $$f"; touch $$f; \
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
	@mkdir -p ${WRKBUILD}
.if target(pre-configure)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} pre-configure
.endif
.if target(do-configure)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-configure
.else
# What CONFIGURE normally does
.  for _c in ${CONFIGURE_STYLE:U}
.    if defined(MOD${_c}_configure)
	@${MOD${_c}_configure}
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
.  if ${VMEM_WARNING:L} == "yes"
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
.  endif
.  if target(pre-build)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} pre-build
.  endif
.  if target(do-build)
	@cd ${.CURDIR} && exec ${_SYSTRACE_CMD} ${MAKE} do-build
.  else
# What BUILD normally does:
	@cd ${WRKBUILD} && exec ${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
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
# When interactive tests need X11
.  if defined(REGRESS_IS_INTERACTIVE) && ${REGRESS_IS_INTERACTIVE:L} == "x11"
.    if !defined(DISPLAY) || !exists(${XAUTHORITY})
	@echo 1>&2 "The regression tests require a running instance of X."
	@echo 1>&2 "You will also need to set the environment variable DISPLAY"
	@echo 1>&2 "to point to an active X11 display and XAUTHORITY to point"
	@echo 1>&2 "to the appropriate .Xauthority file."
	@exit 1
.    endif
.  endif
.  if target(pre-regress)
	@cd ${.CURDIR} && exec ${MAKE} pre-regress
.  endif
.  if target(do-regress)
	@${REGRESS_STATUS_IGNORE}cd ${.CURDIR} && exec 3>&1 && exit `exec 4>&1 1>&3; \
		(exec; set +e; ${MAKE} do-regress; \
		echo $$? >&4) 2>&1 ${REGRESS_LOG}`
.  else
# What REGRESS normally does:
	@${REGRESS_STATUS_IGNORE}cd ${WRKBUILD} && exec 3>&1 && exit `exec 4>&1 1>&3; \
		(exec; set +e; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}; \
		echo $$? >&4) 2>&1 ${REGRESS_LOG}`
# End of REGRESS
.  endif
.  if target(post-regress)
	@cd ${.CURDIR} && exec ${MAKE} post-regress
.  endif
.else
	@echo 1>&2 "No regression check for ${FULLPKGNAME}"
.endif
	@${_MAKE_COOKIE} $@

${_FAKE_COOKIE}: ${_BUILD_COOKIE}
	@${ECHO_MSG} "===>  Faking installation for ${FULLPKGNAME}${_MASTER}"
	@if [ x`${SUDO} /bin/sh -c umask` != x${DEF_UMASK} ]; then \
		echo >&2 "Error: your umask is \"`/bin/sh -c umask`"\".; \
		exit 1; \
	fi
	@${SUDO} install -d -m 755 -o root -g wheel ${WRKINST}
	@cat ${MTREE_FILE}| \
		${SUDO} /usr/sbin/mtree -U -e -d -n -p ${WRKINST} >/dev/null
.for _p in ${PROTECT_MOUNT_POINTS}
	@${SUDO} mount -u -r ${_p}
.endfor
.for _m in ${MODULES:T:U}
.  if defined(MOD${_m}_pre-fake)
	@${MOD${_m}_pre-fake}
.  endif
.endfor

.if target(pre-fake)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} \
		${MAKE} pre-fake ${_FAKE_SETUP}
.endif
	@${SUDO} ${_MAKE_COOKIE} ${_INSTALL_PRE_COOKIE}
.if target(pre-install)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} \
		${MAKE} pre-install ${_FAKE_SETUP}
.endif
.if target(do-install)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} \
		${MAKE} do-install ${_FAKE_SETUP}
.else
# What FAKE normally does:
	@cd ${WRKBUILD} && exec ${SUDO} ${_SYSTRACE_CMD} \
		${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
# End of FAKE.
.endif
.if target(post-install)
	@cd ${.CURDIR} && exec ${SUDO} ${_SYSTRACE_CMD} ${MAKE} post-install ${_FAKE_SETUP}
.endif
.for _p in ${PROTECT_MOUNT_POINTS}
	@${SUDO} mount -u -w ${_p}
.endfor
	@${SUDO} ${_MAKE_COOKIE} $@

.if empty(PLIST_DB)
_register_plist =:
.else
_register_plist = mkdir -p ${PLIST_DB} && perl ${PORTSDIR}/infrastructure/package/register-plist ${PLIST_DB}
.endif
.if ${CHECK_LIB_DEPENDS:L} == "yes"
_check_lib_depends = perl ${PORTSDIR}/infrastructure/package/check-lib-depends -d ${_PKG_REPO} -B ${WRKINST}
.else
_check_lib_depends =:
.endif

CLEAN_PLIST_OUTPUT?=No
.if ${CLEAN_PLIST_OUTPUT:L} == "yes"
_plist_header=echo "@+++ new plist"
_plist_footer=echo "@--- end plist"
.else
_plist_header=:
_plist_footer=:
.endif

print-plist:
	@${_plist_header}; ${PKG_CMD} -n -q ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}; ${_plist_footer}

print-plist-with-depends:
	@${_plist_header}; \
	if a=`SUBPACKAGE=${SUBPACKAGE} ${MAKE} _print-package-args`; \
	then \
		${PKG_CMD} -n -q $$a ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}; \
	else \
		exit 1; \
	fi ; \
	${_plist_footer}

print-plist-all:
.for _S in ${MULTI_PACKAGES}
	@${ECHO_MSG} "===> ${FULLPKGNAME${_S}}"
	@${_plist_header}; ${PKG_CMD} -n -q ${PKG_ARGS${_S}} ${_PACKAGE_COOKIE${_S}};${_plist_footer}
.endfor

print-plist-all-with-depends:
.for _S in ${MULTI_PACKAGES}
	@${ECHO_MSG} "===> ${FULLPKGNAME${_S}}"
	@${_plist_header}; \
	if a=`SUBPACKAGE=${_S} ${MAKE} _print-package-args`; \
	then \
		${PKG_CMD} -n -q $$a ${PKG_ARGS${_S}} ${_PACKAGE_COOKIE${_S}}; \
	else \
		exit 1; \
	fi; \
	${_plist_footer}
.endfor

print-plist-contents:
	@${_plist_header}; ${PKG_CMD} -n -Q ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}};${_plist_footer}

_internal-package-only: ${_PACKAGE_COOKIES}

_internal-subpackage: ${_PACKAGE_COOKIES${SUBPACKAGE}

# Separate target for each file fetch-all will retrieve

.for _F in ${MAKESUMFILES:S@^@${DISTDIR}/@}
${_F}:
.  if ${FETCH_MANUALLY:L} != "no"
.    if !empty(_MISSING_FILES)
	@echo "*** You're missing files: ${_MISSING_FILES}"
.    endif
.    for _M in ${FETCH_MANUALLY}
	@echo "*** ${_M}"
.    endfor
	@exit 1
.  else
	@lock=${_F:T}.dist; ${_SIMPLE_LOCK}; mkdir -p ${_F:H}; \
	cd ${_F:H}; \
	test -f ${_F:T} && exit 0; \
	select='${_EVERYTHING:M*${_F:S@^${FULLDISTDIR}/@@}\:[0-9]}'; \
	f=${_F:S@^${FULLDISTDIR}/@@}; \
	${_CDROM_OVERRIDE}; \
	${_SITE_SELECTOR}; \
	for site in $$sites; do \
		${ECHO_MSG} ">> Fetch $${site}$$f"; \
		if ${FETCH_CMD} $${site}$$f; then \
				file=${_F:S@^${DISTDIR}/@@}; \
				ck=`cd ${DISTDIR} && ${_size_fragment}`; \
				if [ ! -f ${CHECKSUM_FILE} ]; then \
					${ECHO_MSG} ">> Checksum file does not exist"; \
					exit 0; \
				elif grep -q "^$$ck\$$" ${CHECKSUM_FILE}; then \
					exit 0; \
				else \
					if grep -q "SIZE ($$file)" ${CHECKSUM_FILE}; then \
						${ECHO_MSG} ">> Size does not match for ${_F}"; \
						test `{ wc -c "$$file" 2>/dev/null || echo 0 ; }| awk '{print $$1}'` -lt 30000 && rm -f $$file; \
					else \
						${ECHO_MSG} ">> No size recorded for ${_F}"; \
						exit 0; \
					fi; \
				fi; \
		fi; \
	done; exit 1
.  endif
.endfor

.for _l _o in ${_PACKAGE_LINKS}
${PACKAGE_REPOSITORY}/${_l}: ${PACKAGE_REPOSITORY}/${_o}
	@echo "Link to $@"
	@mkdir -p ${@D}
	@rm -f $@
	@ln $? $@ 2>/dev/null || \
	  cp -p $? $@
.endfor

# Cleaning up

_internal-clean:
.if ${_clean:L:Mdepends} && ${_CLEANDEPENDS:L} == "yes"
	@${MAKE} all-dir-depends|tsort -r|${_zap_last_line}|while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _CLEANDEPENDS=No clean; \
	done
.endif
	@${ECHO_MSG} "===>  Cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
.if ${_clean:L:Mfake}
	@if cd ${WRKINST} 2>/dev/null; then ${SUDO} rm -rf ${WRKINST}; fi
.endif
.if ${_clean:L:Mwork} || (${_clean:L:Mbuild} && ${SEPARATE_BUILD:L} == "no")
.  if ${_clean:L:Mflavors}
	@for i in ${.CURDIR}/w-*; do \
		if [ -L $$i ]; then ${SUDO} rm -rf `readlink $$i`; fi; \
		${SUDO} rm -rf $$i; \
	done
.  else
	@if [ -L ${WRKDIR} ]; then rm -rf `readlink ${WRKDIR}`; fi
	@rm -rf ${WRKDIR}
.  endif
.elif ${_clean:L:Mbuild} && ${SEPARATE_BUILD:L} != "no"
	@rm -rf ${WRKBUILD} ${_CONFIGURE_COOKIE} ${_BUILD_COOKIE}
.endif
.if ${_clean:L:Mdist}
	@${ECHO_MSG} "===>  Dist cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
	@if cd ${DISTDIR} 2>/dev/null; then \
		rm -f ${MAKESUMFILES}; \
	fi
.  if !empty(DIST_SUBDIR)
	-@rmdir ${FULLDISTDIR}
.  endif
.endif
.if ${_clean:L:Minstall}
.  if ${_clean:L:Msub}
	-${SUDO} ${PKG_DELETE} ${PKGNAMES}
.  else
	-${SUDO} ${PKG_DELETE} ${FULLPKGNAME${SUBPACKAGE}}
.  endif
.endif
.if ${_clean:L:Mpackages} || ${_clean:L:Mpackage} && ${_clean:L:Msub}
	rm -f ${_PACKAGE_COOKIES}
.elif ${_clean:L:Mpackage}
	rm -f ${_PACKAGE_COOKIES${SUBPACKAGE}}
.endif
.if ${_clean:L:Mreadmes}
	rm -f ${_READMES}
.endif
.if ${_clean:L:Mbulk}
	rm -f ${_BULK_COOKIE}
.endif
.if ${_clean:L:Mplist}
.  for _d in ${PLIST_DB:S/:/ /}
	cd ${_d} && rm -f ${PKGNAMES}
.  endfor
.endif

# mirroring utilities
fetch-makefile:
	@mk=`mktemp ${TMPDIR}/mk.XXXXXXX`; \
	trap "rm -f $$mk" 0 1 2 3 13 15; \
	if ${MAKE} _fetch-makefile >$$mk; then \
		cat $$mk >>${_FETCH_MAKEFILE}; \
	else \
		echo >&2 "Problem in ${PKGPATH}"; \
	fi

mirror-maker-fetch:
	@mk=`mktemp ${TMPDIR}/mk.XXXXXXXX`; ${MAKE} fetch-makefile >$$mk; \
	echo "Check and remove $$mk"; \
	cd ${DISTDIR} && \
		${MAKE} -f $$mk all FETCH=${PORTSDIR}/infrastructure/fetch/fetch-all

_fetch-makefile:
.if !defined(COMES_WITH)
	@echo -n "all"
.  if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo -n " ftp"
.  endif
.  if ${PERMIT_DISTFILES_CDROM:L} == "yes"
	@echo -n " cdrom"
.  endif
	@echo ": ${_FETCH_MAKEFILE_NAMES}"
# write generic package dependencies
	@echo ".PHONY: ${_FETCH_MAKEFILE_NAMES}"
.  if ${RECURSIVE_FETCH_LIST:L} == "yes"
	@echo "${_FETCH_MAKEFILE_NAMES}: ${MAKESUMFILES} "`_FULL_PACKAGE_NAME=Yes ${MAKE} full-all-depends|fgrep -v ${PKGPATH}/`
.  else
	@echo "${_FETCH_MAKEFILE_NAMES}: ${MAKESUMFILES}"
.  endif
.endif
.if !empty(MAKESUMFILES)
.  for _F in ${MAKESUMFILES}
	@: $${_DONE_FILES:=/dev/null}; if ! fgrep -q "|${_F}|" $${_DONE_FILES}; then \
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
	@echo '\t@lock=$${@F}; $${SIMPLE_LOCK}; \\'
	@echo -n '\t MAINTAINER="${MAINTAINER}" '
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
.  if !defined(NO_CHECKSUM) && !empty(MAKESUMFILES:M${_F})
	@if [ ! -f ${CHECKSUM_FILE} ]; then \
	  echo >&2 "Missing checksum file: ${CHECKSUM_FILE}"; \
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
		  echo "\t CIPHER=\"$$c\" CKSUM=\"$$4\" CHECK=\""$$@"\" \\";; \
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
.for _S in ${MULTI_PACKAGES}
	@echo -n "${FULLPKGNAME${_S}}|${FULLPKGPATH${_S}}|"
.  if ${PREFIX${_S}} == ${LOCALBASE}
	@echo -n "|"
.  else
	@echo -n "${PREFIX${_S}}|"
.  endif
	@echo -n ${_COMMENT${_S}:S/^"//:S/"$//:S/^'//:S/'$//:Q}"|"; \
	if [ -f ${DESCR${_S}} ]; then \
		echo -n "${DESCR${_S}:S,^${PORTSDIR}/,,}|"; \
	else \
		echo -n "/dev/null|"; \
	fi; \
	echo -n "${MAINTAINER}|${CATEGORIES${_S}}|"
.  for _d in LIB BUILD RUN
	@echo -n '${_${_d}_DEP3${_S}:C/ +/ /g}'| tr '\040' '\012'|sort -u|tr '\012' '\040' | sed -e 's, $$,,'
	@echo -n '|'
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
.    if ${PERMIT_PACKAGE_CDROM${_S}:L} == "yes"
	@echo -n "y|"
.    else
	@echo -n "n|"
.    endif
.    if ${PERMIT_PACKAGE_FTP${_S}:L} == "yes"
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
.endfor

readme:
	@tmpdir=`mktemp -d ${TMPDIR}/readme.XXXXXX`; \
	trap 'rm -r $$tmpdir' 0 1 2 3 13 15; \
	cd ${.CURDIR} && ${MAKE} TMPDIR=$$tmpdir README_NAME=${README_NAME} \
		${READMES_TOP}/${PKGPATH}/${FULLPKGNAME${SUBPACKAGE}}.html

readmes:
	@tmpdir=`mktemp -d ${TMPDIR}/readme.XXXXXX`; \
	trap 'rm -r $$tmpdir' 0 1 2 3 13 15; \
	cd ${.CURDIR} && ${MAKE} TMPDIR=$$tmpdir README_NAME=${README_NAME} \
		${_READMES}

.for _S in ${MULTI_PACKAGES}
${READMES_TOP}/${PKGPATH}/${FULLPKGNAME${_S}}.html:
	@mkdir -p ${@D}
	@echo ${_COMMENT${_S}:Q} | ${HTMLIFY} >${TMPDIR}/comment${_S}
	@echo ${FULLPKGNAME${_S}} | ${HTMLIFY} > ${TMPDIR}/pkgname${_S}
.  if defined(HOMEPAGE)
	@echo 'See <a href="${HOMEPAGE}">${HOMEPAGE}</a> for details.' >${TMPDIR}/home${_S}
.  else
	@echo "" >${TMPDIR}/home${_S}
.  endif
.  if ${MULTI_PACKAGES} != "-"
	@echo "<h2>Part of a Multi-Package set</h2>" >${TMPDIR}/subpackages${_S}
	@echo "<ul>" >>${TMPDIR}/subpackages${_S}
.    for _T in ${MULTI_PACKAGES}
	@echo "<li><a href=\"${FULLPKGNAME${_T}}.html\">${FULLPKGNAME${_T}}</a>" >>${TMPDIR}/subpackages${_S}
.    endfor
	@echo "</ul>" >>${TMPDIR}/subpackages${_S}
.  else
	@>${TMPDIR}/subpackages${_S}
.  endif
.  for _I in build run
.    if !empty(_${_I:U}_DEP)
	@cd ${.CURDIR} && SUBPACKAGE=${_S} ${MAKE} full-${_I}-depends _FULL_PACKAGE_NAME=Yes| \
		while read n; do \
			j=`dirname $$n|${HTMLIFY}`; k=`basename $$n|${HTMLIFY}`; \
			echo "<li><a href=\"${PKGDEPTH}$$j/$$k.html\">$$k</a>"; \
		 done  >${TMPDIR}/${_I}${_S}
.    else
	@echo "<li>none" >${TMPDIR}/${_I}${_S}
.    endif
.  endfor
	@sed -e 's|%%PORT%%|'"`echo ${FULLPKGPATH${_S}}  | ${HTMLIFY}`"'|g' \
		-e '/%%PKG%%/r${TMPDIR}/pkgname${_S}' -e '//d' \
		-e '/%%COMMENT%%/r${TMPDIR}/comment${_S}' -e '//d' \
		-e '/%%DESCR%%/r${DESCR${_S}}' -e '//d' \
		-e '/%%HOMEPAGE%%/r${TMPDIR}/home${_S}' -e '//d' \
		-e '/%%BUILD_DEPENDS%%/r${TMPDIR}/build${_S}' -e '//d' \
		-e '/%%RUN_DEPENDS%%/r${TMPDIR}/run${_S}' -e '//d' \
		-e '/%%SUBPACKAGES%%/r${TMPDIR}/subpackages${_S}' -e '//d' \
		${README_NAME} > $@
	@rm -f ${TMPDIR}/*${_S}
.endfor

print-build-depends:
.if !empty(_BUILD_DEP)
	@echo -n 'This port requires package(s) "'
	@${MAKE} full-build-depends| ${_lines2list}
	@echo '" to build.'
.endif

print-run-depends:
.if !empty(_RUN_DEP)
	@echo -n 'This port requires package(s) "'
	@${MAKE} full-run-depends| ${_lines2list}
	@echo '" to run.'
.endif

# full-build-depends, full-all-depends, full-run-depends full-regress-depends
.for _i in build all run regress
full-${_i}-depends:
	@${MAKE} ${_i}-dir-depends|${_sort_dependencies}|while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _print-packagename ; \
	done
.endfor

license-check:
.for _S in ${MULTI_PACKAGES}
.  if ${PERMIT_PACKAGE_CDROM${_S}:L} == "yes" || \
	${PERMIT_PACKAGE_FTP${_S}:L} == "yes"
	@SUBPACKAGE=${_S} ${MAKE} all-dir-depends|${_sort_dependencies}|while read subdir; do \
		${_flavor_fragment}; \
		_MASTER_PERMIT_CDROM=${PERMIT_PACKAGE_CDROM${_S}:Q}; \
		_MASTER_PERMIT_FTP=${PERMIT_PACKAGE_FTP${_S}:Q}; \
		export _MASTER_PERMIT_CDROM _MASTER_PERMIT_FTP; \
		eval $$toset ${MAKE} _license-check; \
	done
.  endif
.endfor

_license-check:
.for _i in FTP CDROM
.  if defined(_MASTER_PERMIT_${_i}) && ${_MASTER_PERMIT_${_i}:L} == "yes" && \
	${PERMIT_PACKAGE_${_i}:L} != "yes"
	@echo >&2 "Warning: dependency ${PKGPATH} is not allowed for ${_i}"
.  endif
.endfor

# run-depends-list, build-depends-list, lib-depends-list
.for _i in RUN BUILD LIB
${_i:L}-depends-list:
.  if !empty(_${_i}_DEP3)
	@echo -n "This port requires \""
	@echo -n '${_${_i}_DEP3:C/ +/ /g}'| tr '\040' '\012'|sort -u|tr '\012' '\040' | sed -e 's, $$,,'
	@echo "\" for ${_i:L}."
.  endif
.endfor

# recursive depend targets

print-package-signature:
	@echo -n ${FULLPKGNAME${SUBPACKAGE}}
.if !empty(_DEPRUNLIBS)
	@cd ${.CURDIR} && LIST_LIBS=`${MAKE} _list-port-libs` ${MAKE} _print-package-signature-lib _print-package-signature-run| \
		sort -u| \
		while read i; do echo -n ",$$i"; done
.else
	@cd ${.CURDIR} && ${MAKE} _print-package-signature-run | \
		sort -u| \
		while read i; do echo -n ",$$i"; done
.endif
	@echo

_print-package-args:
.for _i in ${RUN_DEPENDS${SUBPACKAGE}}
	@echo '${_i}' |{ \
		IFS=:; read dep pkg subdir target; \
		${_flavor_fragment}; \
		if default=`eval $$toset ${MAKE} _print-packagename`; then \
			case "X$$pkg" in X) pkg=`echo $$default|${_version2default}`;; \
			esac; \
			echo "-P $$subdir:$$pkg:$$default"; \
		else \
			echo 1>&2 "Problem with dependency ${_i}"; \
			exit 1; \
		fi; \
	}
.endfor
.if ${NO_SHARED_LIBS:L} != "yes"
.  for _i in ${LIB_DEPENDS${SUBPACKAGE}}
	@echo '${_i}'|{ \
		IFS=:; read dep pkg subdir target; \
		${_flavor_fragment}; \
		libspecs='';comma=''; \
		if default=`eval $$toset ${MAKE} _print-packagename`; then \
			case "X$$pkg" in X) pkg=`echo "$$default" |${_version2default}`;; \
			esac; \
			if ${_PKG_QUERY} "$$pkg" -q; then \
				listlibs='echo ${DEPDIR}$$shdir/lib*'; \
				case "$$dir" in ${PKGPATH}) \
					listlibs="$$toset ${MAKE} print-plist-contents|${_grab_libs_from_plist}; $$listlibs";; \
				esac; \
			else \
				listlibs="$$toset ${MAKE} print-plist-contents|${_grab_libs_from_plist}"; \
			fi; \
			IFS=,; for d in $$dep; do \
				${_libresolve_fragment}; \
				case "$$check" in \
				*.a) continue;; \
				Failed) \
					echo 1>&2 "Can't resolve libspec $$d (in ${SUBPACKAGE})"; \
					exit 1;; \
				*) \
					echo "-W $$check";; \
				esac; \
			done; \
			echo "-P $$subdir:$$pkg:$$default"; \
		else \
			echo 1>&2 "Problem with dependency ${_i}"; \
			exit 1; \
		fi; \
	}
.  endfor
.  for _i in ${WANTLIB${SUBPACKAGE}}
	@d='${_i}'; listlibs='echo $$shdir/lib*'; \
	${_syslibresolve_fragment}; \
	case "$$check" in \
	*.a) ;; \
	Failed) \
		echo 1>&2 "Can't resolve libspec $$d"; \
		exit 1;; \
	*) \
		echo "-W $$check";; \
	esac
.   endfor
.endif

_list-port-libs:
.if defined(_PORT_LIBS_CACHE) && defined(_DEPENDS_CACHE) && \
	defined(_DEPENDS_FILE)
	@if ! fgrep -q -e "r|${FULLPKGPATH}|" -e "a|${FULLPKGPATH}" $${_DEPENDS_FILE}; then \
		${MAKE} run-dir-depends >>${_DEPENDS_CACHE}; \
	fi
	@perl ${PORTSDIR}/infrastructure/build/extract-dependencies ${FULLPKGPATH} <${_DEPENDS_CACHE}|while read subdir; do \
		fulldir=${_PORT_LIBS_CACHE}/$$subdir; \
		if test -f $$fulldir; then \
			cat $$fulldir; \
		else \
			mkdir -p $${fulldir%/*}; \
			${_flavor_fragment}; \
			eval $$toset ${MAKE} print-plist-contents | \
				${_grab_libs_from_plist}|tee $$fulldir; \
		fi; \
	done
.else
	@${MAKE} run-dir-depends|${_sort_dependencies}|while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} print-plist-contents ; \
	done | ${_grab_libs_from_plist}
.endif
	@echo /usr/lib/lib* ${X11BASE}/lib/lib*

_print-package-signature-run:
.for _i in ${RUN_DEPENDS${SUBPACKAGE}}
	@echo '${_i}' |{ \
		IFS=:; read dep pkg subdir target; \
		${_flavor_fragment}; \
		default=`eval $$toset ${MAKE} _print-packagename`; \
		echo "$$default"; \
	}
.endfor

_print-package-signature-lib:
	@echo $$LIST_LIBS| LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} perl ${PORTSDIR}/infrastructure/build/resolve-lib ${_DEPRUNLIBS:S/>/\>/g}
.for _i in ${LIB_DEPENDS${SUBPACKAGE}}
	@echo '${_i}' |{ \
		IFS=:; read dep pkg subdir target; \
		${_flavor_fragment}; \
		default=`eval $$toset ${MAKE} _print-packagename`; \
		echo "$$default"; \
	}
.endfor

# recursively build a list of dirs for package running, ready for tsort
_recurse-run-dir-depends:
.for _dir in ${_RUN_DEP}
	@echo "$$self ${_dir}"; \
	if ! fgrep -q -e "r|${_dir}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "r|${_dir}|" >> $${_DEPENDS_FILE}; \
		subdir=${_dir}; ${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-run-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

run-dir-depends:
.if !empty(_RUN_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q -e "r|${FULLPKGPATH}|" -e "a|${FULLPKGPATH}" $${_DEPENDS_FILE}; then \
		echo "r|${FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${FULLPKGPATH} ${MAKE} _recurse-run-dir-depends; \
	fi
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

# recursively build a list of dirs for package regression, ready for tsort
_recurse-regress-dir-depends:
.for _dir in ${_REGRESS_DEP}
	@echo "$$self ${_dir}"; \
	if ! fgrep -q -e "R|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "R|${_dir}|" >> $${_DEPENDS_FILE}; \
		subdir=${_dir}; ${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-run-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

regress-dir-depends:
.if !empty(_REGRESS_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q -e "R|${FULLPKGPATH}|" $${_DEPENDS_FILE}; then \
		echo "R|${FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${FULLPKGPATH} ${MAKE} _recurse-regress-dir-depends; \
	fi
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

# recursively build a list of dirs for package building, ready for tsort
# second and further stages need _RUN_DEP.
_recurse-all-dir-depends:
.for _dir in ${_BUILD_DEP} ${_RUN_DEP}
	@echo "$$self ${_dir}"; \
	if ! fgrep -q "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "a|${_dir}|" >> $${_DEPENDS_FILE}; \
		subdir=${_dir}; ${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-all-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

# first stage does not need _RUN_DEP
_build-dir-depends:
.for _dir in ${_BUILD_DEP}
	@echo "$$self ${_dir}"; \
	if ! fgrep -q -e "b|${_dir}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "b|${_dir}|" >> $${_DEPENDS_FILE}; \
		subdir=${_dir}; ${_flavor_fragment}; \
		toset="$$toset self=\"${_dir}\""; \
		if ! eval $$toset ${MAKE} _recurse-all-dir-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	fi
.endfor

build-dir-depends:
.if !empty(_BUILD_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q -e "b|${FULLPKGPATH}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "b|${FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${FULLPKGPATH} ${MAKE} _build-dir-depends; \
	fi
.else
	@echo "${FULLPKGPATH} ${FULLPKGPATH}"
.endif

all-dir-depends:
.if !empty(_BUILD_DEP) || !empty(_RUN_DEP)
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

peek-ftp:
	@echo "DISTFILES=${DISTFILES}"
	@mkdir -p ${FULLDISTDIR}; cd ${FULLDISTDIR}; echo "cd ${FULLDISTDIR}"; \
	for i in ${MASTER_SITES:Mftp*}; do \
		echo "Connecting to $$i"; ${FETCH_CMD} $$i ; break; \
	done

show-required-by:
	@cd ${PORTSDIR} && make all-dir-depends | perl ${PORTSDIR}/infrastructure/build/extract-dependencies -r ${_ALLPKGPATHS}


show:
.for _s in ${show}
	@echo ${${_s}:Q}
.endfor

verbose-show:
.for _s in ${verbose-show}
. if defined(${_s})
	@echo ${_s}=${${_s}:Q}
. endif
.endfor

dump-vars:
.if ${MULTI_PACKAGES} == "-"
.  for _v in ${_ALL_VARIABLES} ${_ALL_VARIABLES_INDEXED}
.   if defined(${_v})
	@echo ${FULLPKGPATH}.${_v}=${${_v}:Q}
.   endif
.  endfor
.else
.  for _S in ${MULTI_PACKAGES}
.    for _v in ${_ALL_VARIABLES}
.     if defined(${_v})
	@echo ${FULLPKGPATH${_S}}.${_v}=${${_v}:Q}
.     endif
.    endfor
.    for _v in ${_ALL_VARIABLES_INDEXED}
.      if defined(${_v}${_S})
	@echo ${FULLPKGPATH${_S}}.${_v}=${${_v}${_S}:Q}
.      endif
.    endfor
.  endfor
.endif

_all_phony = ${_recursive_depends_targets} ${_recursive_describe_targets} \
	${_recursive_targets} _build-dir-depends _fetch-makefile _fetch-onefile \
	_internal-all _internal-build _internal-build-depends \
	_internal-buildlib-depends _internal-buildwantlib-depends \
	_internal-checksum _internal-clean _internal-configure _internal-depends \
	_internal-distpatch _internal-extract _internal-fake _internal-fetch \
	_internal-fetch-all \
	_internal-install-all _internal-lib-depends _internal-manpages-check \
	_internal-package _internal-package-only _internal-plist \
	_internal-regress _internal-regress-depends _internal-run-depends \
	_internal-runwantlib-depends _internal-subpackage _internal-subupdate \
	_internal-update _internal-update _internal-update-plist \
	_internal_install _internal_runlib-depends _license-check \
	_list-port-libs _print-package-args _print-package-signature-lib \
	_print-package-signature-run _print-packagename _recurse-all-dir-depends \
	_recurse-regress-dir-depends _recurse-run-dir-depends _refetch addsum \
	build-depends build-depends-list checkpatch clean clean-depends \
	delete-package depends distpatch do-build do-configure do-distpatch \
	do-extract do-fetch do-install do-package do-regress fetch-all \
	install-all lib-depends lib-depends-list makesum \
	peek-ftp plist port-lib-depends-check post-build post-configure \
	post-distpatch post-extract post-fetch post-install post-package \
	post-patch post-regress pre-build pre-configure pre-extract pre-fake \
	pre-fetch pre-install pre-package pre-patch pre-regress \
	print-build-depends print-run-depends readme readmes rebuild \
	regress-depends repackage run-depends run-depends-list show-required-by \
	subpackage uninstall update-patches update-plist mirror-maker-fetch \
	lock unlock

.if defined(_DEBUG_TARGETS)
.  for _t in ${_all_phony}
.    if !target(${_t})
ERRORS += "Fatal: phony target ${_t} does not exist"
.    endif
.  endfor
.endif

.PHONY: ${_all_phony}
