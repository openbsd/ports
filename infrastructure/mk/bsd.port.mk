#-*- mode: Makefile; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	$OpenBSD: bsd.port.mk,v 1.1276 2014/08/10 11:34:27 jasper Exp $
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
.if defined(PERMIT_DISTFILES_CDROM)
ERRORS += "Fatal: Variable PERMIT_DISTFILES_CDROM is obsolete."
.endif
.for v in NO_REGRESS REGRESS_IS_INTERACTIVE REGRESS_DEPENDS
.  if defined($v)
ERRORS += "Fatal: $v has been replaced with ${v:S/REGRESS/TEST/}."
.  endif
.endfor

.for t in pre-fetch do-fetch post-fetch pre-package do-package post-package
.  if target($t)
ERRORS += "Fatal: you're not allowed to override $t"
.  endif
.endfor

.for f v in bsd.port.mk _BSD_PORT_MK bsd.port.subdir.mk _BSD_PORT_SUBDIR_MK
.  if defined($v)
ERRORS += "Fatal: inclusion of bsd.port.mk from $f"
.  endif
.endfor

_BSD_PORT_MK = Done

# The definitive source of documentation to this file's user-visible parts
# is bsd.port.mk(5).
#
# Any variable or target starting with an underscore (e.g., _DEPEND_ECHO)
# is internal to bsd.port.mk, not part of the user's API, and liable to
# change without notice.
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
FETCH_PACKAGES ?= No
CLEANDEPENDS ?= No
USE_SYSTRACE ?= No
BULK ?= Auto
RECURSIVE_FETCH_LIST ?= No
WRKDIR_LINKNAME ?=
_FETCH_MAKEFILE ?= /dev/stdout

.if ${USE_SYSTRACE:L} == "yes"
WRKOBJDIR_MFS ?!= readlink -fn /tmp/pobj
.else
WRKOBJDIR_MFS ?= /tmp/pobj
.endif

USE_MFS ?= No
.if ${USE_SYSTRACE:L} == "yes"
WRKOBJDIR ?!= readlink -fn ${PORTSDIR}/pobj
.else
WRKOBJDIR ?= ${PORTSDIR}/pobj
.endif
FAKEOBJDIR ?=

BULK_TARGETS ?=
BULK_DO ?=
CHECK_LIB_DEPENDS ?= No
FORCE_UPDATE ?= No
DPB ?= All Fetch Test
PREPARE_CHECK_ONLY ?= No
_SHSCRIPT = sh ${PORTSDIR}/infrastructure/bin
DPB_PROPERTIES ?=

# All variables relevant to the port's description
_ALL_VARIABLES = BUILD_DEPENDS IS_INTERACTIVE \
	SUBPACKAGE FLAVOR BUILD_PACKAGES DPB_PROPERTIES \
	MULTI_PACKAGES
# and stuff needing to be MULTI_PACKAGE'd
_ALL_VARIABLES_INDEXED = FULLPKGNAME RUN_DEPENDS LIB_DEPENDS IGNORE
_ALL_VARIABLES_PER_ARCH =


.if ${DPB:L:Mfetch} || ${DPB:L:Mall}
_ALL_VARIABLES += DISTFILES PATCHFILES SUPDISTFILES DIST_SUBDIR MASTER_SITES \
	MASTER_SITES0 MASTER_SITES1 MASTER_SITES2 MASTER_SITES3 MASTER_SITES4 \
	MASTER_SITES5 MASTER_SITES6 MASTER_SITES7 MASTER_SITES8 MASTER_SITES9 \
	CHECKSUM_FILE FETCH_MANUALLY MISSING_FILES \
	PERMIT_DISTFILES_FTP
.endif
.if ${DPB:L:Mtest} || ${DPB:L:Mall}
_ALL_VARIABLES += NO_TEST TEST_IS_INTERACTIVE TEST_DEPENDS
.endif
.if ${DPB:L:Mall}
_ALL_VARIABLES += HOMEPAGE DISTNAME \
	BROKEN COMES_WITH \
	USE_GMAKE USE_GROFF MODULES FLAVORS \
	NO_BUILD SHARED_ONLY PSEUDO_FLAVORS \
	CONFIGURE_STYLE USE_LIBTOOL SEPARATE_BUILD \
	SHARED_LIBS TARGETS PSEUDO_FLAVOR \
	MAINTAINER AUTOCONF_VERSION AUTOMAKE_VERSION CONFIGURE_ARGS \
	PKG_ARCH GH_ACCOUNT GH_COMMIT GH_PROJECT GH_TAGNAME 
_ALL_VARIABLES_PER_ARCH += BROKEN
# and stuff needing to be MULTI_PACKAGE'd
_ALL_VARIABLES_INDEXED += COMMENT PKGNAME \
	ONLY_FOR_ARCHS NOT_FOR_ARCHS PKGSPEC PREFIX \
	PERMIT_PACKAGE_FTP PERMIT_PACKAGE_CDROM WANTLIB CATEGORIES DESCR \
	EPOCH REVISION STATIC_PLIST
.endif
# special purpose user settings
PATCH_CHECK_ONLY ?= No
REFETCH ?= false

# Constants used by the ports tree

# Global path locations.
PORTSDIR ?= /usr/ports
LOCALBASE ?= /usr/local
X11BASE ?= /usr/X11R6
VARBASE ?= /var
DISTDIR ?= ${PORTSDIR}/distfiles
BULK_COOKIES_DIR ?= ${PORTSDIR}/bulk/${MACHINE_ARCH}
UPDATE_COOKIES_DIR ?= ${PORTSDIR}/update/${MACHINE_ARCH}
PLIST_DB ?= ${PORTSDIR}/plist/${MACHINE_ARCH}

PACKAGE_REPOSITORY ?= ${PORTSDIR}/packages

# experimental, don't touch the default unless you really know
# what you are doing
PORTS_BUILD_XENOCARA_TOO ?= No

.if ${PORTS_BUILD_XENOCARA_TOO:L} == "no"
.  if !exists(${X11BASE}/man/mandoc.db)
.    if exists(${X11BASE}/man/whatis.db)
ERRORS += "Your X11/system is not current"
.    else
ERRORS += "Fatal: building ports requires correctly installed X11"
.    endif
.  endif
.endif

# local path locations
.include "${PORTSDIR}/infrastructure/mk/pkgpath.mk"

.if ${USE_MFS:L} == "yes"
WRKOBJDIR_${PKGPATH} ?= ${WRKOBJDIR_MFS}
.else
WRKOBJDIR_${PKGPATH} ?= ${WRKOBJDIR}
.endif
FAKEOBJDIR_${PKGPATH} ?= ${FAKEOBJDIR}

BULK_${PKGPATH} ?= ${BULK}
BULK_TARGETS_${PKGPATH} ?= ${BULK_TARGETS}
BULK_DO_${PKGPATH} ?= ${BULK_DO}
CLEANDEPENDS_${PKGPATH} ?= ${CLEANDEPENDS}

# Commands and command settings.
PKG_DBDIR ?= /var/db/pkg

FTP_KEEPALIVE ?= 0

PROGRESS_METER ?= Yes
.if ${PROGRESS_METER:L} == "yes"
_PROGRESS = -m
.else
_PROGRESS =
.endif

FETCH_CMD ?= /usr/bin/ftp -V ${_PROGRESS} -k ${FTP_KEEPALIVE} -C

PKG_TMPDIR ?= /var/tmp

PKG_ADD ?= /usr/sbin/pkg_add
PKG_INFO ?= /usr/sbin/pkg_info
PKG_CREATE ?= /usr/sbin/pkg_create
PKG_DELETE ?= /usr/sbin/pkg_delete

_PKG_ADD = ${PKG_ADD} ${_PROGRESS} -I
_PKG_CREATE = ${PKG_CREATE} ${_PROGRESS} ${SIGNING_PARAMETERS}
_PKG_ADD_LOCAL = PKG_PATH=${_PKG_REPO} ${_PKG_ADD}
_PKG_DELETE = ${PKG_DELETE} ${_PROGRESS}

SIGNING_PARAMETERS ?=
.if empty(SIGNING_PARAMETERS)
_PKG_ADD_LOCAL += -Dunsigned
.else
_PKG_ADD_LOCAL += ${SIGNING_PARAMETERS:M-DSIGNER=*}
.endif


.if !defined(_ARCH_DEFINES_INCLUDED)
_ARCH_DEFINES_INCLUDED = Done
.  include "${PORTSDIR}/infrastructure/mk/arch-defines.mk"
.endif

.if !defined(_MAKEFILE_INC_DONE)
.  if exists(${.CURDIR}/../Makefile.inc)
_MAKEFILE_INC_DONE = Yes
.    include "${.CURDIR}/../Makefile.inc"
.  endif
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
.if empty(_clean) || ${_clean} == "depends"
_clean += work
.endif
.if ${_clean:Mall}
_clean += work build packages plist
.endif
.if ${CLEANDEPENDS_${PKGPATH}:L} == "yes"
_clean += depends
.endif
.if ${_clean:Mwork} || ${_clean:Mbuild}
_clean += fake
.endif
.if ${_clean:Mforce}
_clean += -f
.endif
# check that clean is clean
_okay_words = depends work fake -f flavors dist install sub packages package \
	bulk force plist build all
.for _w in ${_clean}
.  if !${_okay_words:M${_w}}
ERRORS += "Fatal: unknown clean command: ${_w}\n(not in ${_okay_words})"
.  endif
.endfor

# MODULES support
# reserved name spaces: for module=NAME, modname*, _modname* variables and
# targets.

# These variables must be defined before modules
CONFIGURE_STYLE ?=
NO_DEPENDS ?= No
NO_BUILD ?= No
NO_TEST ?= No
INSTALL_TARGET ?= install

.if ${CONFIGURE_STYLE:L:Mautomake} || ${CONFIGURE_STYLE:L:Mautoconf} || \
	${CONFIGURE_STYLE:L:Mautoupdate}
.  if !${CONFIGURE_STYLE:L:Mgnu}
CONFIGURE_STYLE += gnu
.  endif
.endif

.if ${CONFIGURE_STYLE:L:Mmodbuild}
.  if !${CONFIGURE_STYLE:L:Mperl}
CONFIGURE_STYLE += perl
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


# some introspection
TARGETS =
.for _t in extract patch distpatch configure build fake install
.  for _s in pre do post
.    if target(${_s}-${_t})
TARGETS += ${_s}-${_t}
.    endif
.  endfor
.endfor
.for _t in post-patch pre-configure configure pre-fake post-install
.  for _m in ${MODULES:T:U}
.    if defined(MOD${_m}_${_t})
TARGETS += MOD${_m}_${_t}
.    endif
.  endfor
.endfor

SHARED_ONLY ?= No
SEPARATE_BUILD ?= No

DIST_SUBDIR ?=

.if !empty(DIST_SUBDIR)
FULLDISTDIR ?= ${DISTDIR}/${DIST_SUBDIR}
.else
FULLDISTDIR ?= ${DISTDIR}
.endif

PATCHDIR ?= ${.CURDIR}/patches
PATCH_LIST ?= patch-*
FILESDIR ?= ${.CURDIR}/files
PKGDIR ?= ${.CURDIR}/pkg

PREFIX ?= ${LOCALBASE}
TRUEPREFIX ?= ${PREFIX}
DESTDIRNAME ?= DESTDIR
DESTDIR ?= ${WRKINST}

MAKE_FLAGS ?=
FAKE_FLAGS ?=
LIBTOOL_FLAGS ?=

# User choice, consider read-only from a given port
BASESYSCONFDIR ?= /etc
# where configuration files should actually go
SYSCONFDIR ?= ${BASESYSCONFDIR}

# User choice, consider read-only from a given port
BASELOCALSTATEDIR ?= ${VARBASE}
# Defaut localstatedir for gnu ports
LOCALSTATEDIR ?= ${BASELOCALSTATEDIR}

RCDIR ?= /etc/rc.d
USE_GMAKE ?= No
.if ${USE_GMAKE:L} == "yes"
BUILD_DEPENDS += devel/gmake
MAKE_PROGRAM = ${GMAKE}
CONFIGURE_ENV += MAKE=${MAKE_PROGRAM}
.else
MAKE_PROGRAM = ${MAKE}
.endif
USE_LIBTOOL ?= Yes
_lt_libs =
.if ${USE_LIBTOOL:L} != "no"
.  if ${USE_LIBTOOL:L} == "gnu"
LIBTOOL ?= ${DEPBASE}/bin/libtool
BUILD_DEPENDS += devel/libtool
.  else
LIBTOOL ?= /usr/bin/libtool
MAKE_ENV += PORTSDIR="${PORTSDIR}"
.  endif
# Intermediate variable because some tools like python to not properly
# parse variables with trailing spaces and add a bogus "" argument.
_LIBTOOL = ${LIBTOOL}
.if !empty(LIBTOOL_FLAGS)
_LIBTOOL += "${LIBTOOL_FLAGS}"
.endif
CONFIGURE_ENV += LIBTOOL="${_LIBTOOL}" ${_lt_libs}
MAKE_ENV += LIBTOOL="${_LIBTOOL}" ${_lt_libs}
MAKE_FLAGS += LIBTOOL="${_LIBTOOL}" ${_lt_libs}
.endif
MAKE_FLAGS += SHARED_LIBS_LOG=${WRKBUILD}/shared_libs.log
USE_CCACHE ?= No
NO_CCACHE ?= No
.if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no" && ${NO_BUILD:L} == "no"
CCACHE_DIR ?= ${WRKOBJDIR_${PKGPATH}}/.ccache
MAKE_ENV += CCACHE_DIR=${CCACHE_DIR}
.  if defined(CCACHE_ENV)
MAKE_ENV += ${CCACHE_ENV}
.  endif
CONFIGURE_ENV += CCACHE_DIR=${CCACHE_DIR}
BUILD_DEPENDS += devel/ccache
.endif

ALL_FAKE_FLAGS=	${MAKE_FLAGS:N-j[0-9]*} ${DESTDIRNAME}=${WRKINST} ${FAKE_FLAGS}

.if ${LOCALBASE:L} != "/usr/local"
_PKG_ADD += -L ${LOCALBASE}
.endif

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


.if !defined(_BSD_PORT_ARCH_MK_INCLUDED)
.  include "${PORTSDIR}/infrastructure/mk/bsd.port.arch.mk"
.endif

.for _S in ${MULTI_PACKAGES}
PERMIT_PACKAGE_CDROM${_S} ?= ${PERMIT_PACKAGE_CDROM}
.  if defined(PERMIT_PACKAGE_FTP)
PERMIT_PACKAGE_FTP${_S} ?= ${PERMIT_PACKAGE_FTP}
.  endif
.  if defined(PERMIT_PACKAGE_CDROM${_S}) && ${PERMIT_PACKAGE_CDROM${_S}:L} == "yes"
PERMIT_PACKAGE_FTP${_S} ?= Yes
.  endif
.  if !defined(PERMIT_PACKAGE_CDROM${_S}) || !defined(PERMIT_PACKAGE_FTP${_S})
ERRORS += "The licensing info for ${FULLPKGNAME${_S}} is incomplete."
_BAD_LICENSING = Yes
.  endif
.endfor

.if defined(PERMIT_PACKAGE_CDROM) && ${PERMIT_PACKAGE_CDROM:L} == "yes"
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_FTP ?= Yes
.elif defined(PERMIT_PACKAGE_FTP) && ${PERMIT_PACKAGE_FTP:L} == "yes"
PERMIT_DISTFILES_FTP ?= Yes
.endif

.if !defined(PERMIT_PACKAGE_CDROM) || !defined(PERMIT_PACKAGE_FTP) || \
	!defined(PERMIT_DISTFILES_FTP)
ERRORS += "The licensing info for ${FULLPKGNAME} is incomplete."
_BAD_LICENSING = Yes
.endif

.if defined(_BAD_LICENSING)
ERRORS += "Please notify the OpenBSD port maintainer:"
ERRORS += "    ${MAINTAINER}"
PERMIT_PACKAGE_CDROM = No
PERMIT_PACKAGE_FTP = No
PERMIT_DISTFILES_FTP = No
.  for _S in ${MULTI_PACKAGES}
PERMIT_PACKAGE_CDROM${_S} = No
PERMIT_PACKAGE_FTP${_S} = No
.  endfor
.endif

.if ${MACHINE_ARCH} != ${ARCH}
PKG_ARCH ?= ${MACHINE_ARCH},${ARCH}
.else
PKG_ARCH ?= ${MACHINE_ARCH}
.endif

REVISION ?=
EPOCH ?=

.for _s in ${MULTI_PACKAGES}
REVISION${_s} ?= ${REVISION}
EPOCH${_s} ?= ${EPOCH}
.endfor

FLAVOR ?=
FLAVORS ?=
PSEUDO_FLAVORS ?=
FLAVORS += ${PSEUDO_FLAVORS}

.if !empty(FLAVORS:Mtest) && empty(FLAVOR:Mtest)
NO_TEST = Yes
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
.if !empty(PLIST_DB)
_PKG_ARGS += -DHISTORY_DIR=${PLIST_DB}/history
.endif
_README_DIR = ${LOCALBASE}/share/doc/pkg-readmes

PSEUDO_FLAVOR =
# (applies only to PLIST for now)
.if !empty(FLAVORS)
.  for _i in ${FLAVORS}
.    if empty(FLAVOR:M${_i})
_PKG_ARGS += -D${_i}=0
.    else
_FLAVOR_EXT2 := ${_FLAVOR_EXT2}-${_i}
BUILD_PKGPATH := ${BUILD_PKGPATH},${_i}
.    if empty(PSEUDO_FLAVORS:M${_i})
FLAVOR_EXT := ${FLAVOR_EXT}-${_i}
BASE_PKGPATH := ${BASE_PKGPATH},${_i}
.    else
PSEUDO_FLAVOR := ${PSEUDO_FLAVOR},${_i}
.    endif
_PKG_ARGS += -D${_i}=1
.    endif
.  endfor
.endif
.if !${BUILD_PKGPATH:M*,*}
BUILD_PKGPATH := ${BUILD_PKGPATH},
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
.    for _i in ${FLAVOR}
.      if empty(FLAVORS:M${_i})
ERRORS += "Fatal: Unknown flavor: ${_i}"
ERRORS += "   (Possible flavors are: ${FLAVORS})."
.      endif
.    endfor
.  else
ERRORS += "Fatal: Unknown flavor(s) ${FLAVOR}"
ERRORS += "   (No flavors for this port)."
.  endif
.endif

USE_GROFF ?= No
.if ${USE_GROFF:L} == "yes"
BUILD_DEPENDS += textproc/groff>=1.21
_PKG_ARGS += -DUSE_GROFF=1
.endif

PKGNAME ?= ${DISTNAME}
FULLPKGNAME ?= ${PKGNAME}${FLAVOR_EXT}
_MASTER ?=
_DEPENDENCY_STACK ?=

.if ${MULTI_PACKAGES} == "-"
# XXX "parse" FULLPKGNAME: is there a flavor after the version number
.    if ${FULLPKGNAME:M*-[0-9]*-*}
.      if !empty(REVISION)
# XXX simplest way is to alter FULLPKGNAME in place, even though := is evil...
FULLPKGNAME := ${FULLPKGNAME:C/-([0-9][^-]*)-/-\1p${REVISION}-/}
.      endif
.      if !empty(EPOCH)
FULLPKGNAME := ${FULLPKGNAME:C/-([0-9][^-]*)-/-\1v${EPOCH}-/}
.      endif
.    else
.      if !empty(REVISION)
FULLPKGNAME := ${FULLPKGNAME}p${REVISION}
.      endif
.      if !empty(EPOCH)
FULLPKGNAME := ${FULLPKGNAME}v${EPOCH}
.      endif
.    endif
PKGSPEC ?= ${FULLPKGNAME:C/-[0-9].*/-*/}
PKGSPEC- = ${PKGSPEC}
FULLPKGNAME- = ${FULLPKGNAME}
.else
.  for _s in ${MULTI_PACKAGES}
.    if defined(FULLPKGNAME${_s})
.      if !defined(FULLPKGPATH${_s}) && "${FLAVORS}" != " ${PSEUDO_FLAVORS}"
ERRORS += "Warning: FULLPKGNAME${_s} defined but no FULLPKGPATH${_s}"
.      endif
.    else
.      if defined(PKGNAME${_s})
FULLPKGNAME${_s} = ${PKGNAME${_s}}${FLAVOR_EXT}
.      else
FULLPKGNAME${_s} = ${PKGNAME}${_s}${FLAVOR_EXT}
.      endif
.    endif
# XXX see comments above for !MULTI_PACKAGES case
.    if ${FULLPKGNAME${_s}:M*-[0-9]*-*}
.      if !empty(REVISION${_s})
FULLPKGNAME${_s} := ${FULLPKGNAME${_s}:C/-([0-9][^-]*)-/-\1p${REVISION${_s}}-/}
.      endif
.      if !empty(EPOCH${_s})
FULLPKGNAME${_s} := ${FULLPKGNAME${_s}:C/-([0-9][^-]*)-/-\1v${EPOCH${_s}}-/}
.      endif
.    else
.      if !empty(REVISION${_s})
FULLPKGNAME${_s} := ${FULLPKGNAME${_s}}p${REVISION${_s}}
.      endif
.      if !empty(EPOCH${_s})
FULLPKGNAME${_s} := ${FULLPKGNAME${_s}}v${EPOCH${_s}}
.      endif
.    endif
PKGSPEC${_s} ?= ${FULLPKGNAME${_s}:C/-[0-9].*/-*/}
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
.for _S in ${BUILD_PACKAGES}
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
_TEST_COOKIE =			${WRKBUILD}/.test_done
.else
_CONFIGURE_COOKIE =		${WRKDIR}/.configure_done
_BUILD_COOKIE =			${WRKDIR}/.build_done
_TEST_COOKIE =			${WRKDIR}/.test_done
.endif

_ALL_COOKIES = ${_EXTRACT_COOKIE} ${_PATCH_COOKIE} ${_CONFIGURE_COOKIE} \
	${_INSTALL_PRE_COOKIE} ${_BUILD_COOKIE} ${_TEST_COOKIE} \
	${_SYSTRACE_COOKIE} ${_PACKAGE_COOKIES} \
	${_DISTPATCH_COOKIE} ${_PREPATCH_COOKIE} ${_FAKE_COOKIE} \
	${_WRKDIR_COOKIE} ${_DEPBUILD_COOKIES} \
	${_DEPRUN_COOKIES} ${_DEPTEST_COOKIES} ${_UPDATE_COOKIES} \
	${_DEPBUILDLIB_COOKIES} ${_DEPRUNLIB_COOKIES} \
	${_DEPBUILDWANTLIB_COOKIE} ${_DEPRUNWANTLIB_COOKIE} ${_DEPLIBSPECS_COOKIES}

_MAKE_COOKIE = touch

# Miscellaneous overridable commands:
GMAKE ?= gmake

CHECKSUM_FILE ?= ${.CURDIR}/distinfo

# Don't touch !!! Used for generating checksums.
_CIPHERS = sha256

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

PORTHOME ?= /${PKGNAME}_writes_to_HOME

MAKE_ENV += PATH='${PORTPATH}' PREFIX='${PREFIX}' \
	LOCALBASE='${LOCALBASE}' DEPBASE='${DEPBASE}' X11BASE='${X11BASE}' \
	CFLAGS='${CFLAGS:C/ *$//}' \
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
MAKE_ENV += ELF_TOOLCHAIN=Yes COMPILER_VERSION=${COMPILER_VERSION} \
	PICFLAG="${PICFLAG}" ASPICFLAG=${ASPICFLAG} \
	BINGRP=bin BINOWN=root BINMODE=${BINMODE} NONBINMODE=${NONBINMODE} \
	DIRMODE=755 \
	INSTALL_COPY=-c INSTALL_STRIP=${INSTALL_STRIP} \
	MANGRP=bin MANOWN=root MANMODE=${MANMODE}
.if defined(NOPIC)
MAKE_ENV += NOPIC=${NOPIC}
.endif


.if !empty(FAKEOBJDIR_${PKGPATH})
WRKINST ?= ${FAKEOBJDIR_${PKGPATH}}/${PKGNAME}${_FLAVOR_EXT2}
.else
WRKINST ?= ${WRKDIR}/fake-${ARCH}${_FLAVOR_EXT2}
.endif

.if ${SEPARATE_BUILD:L:Mflavored}
_WRKDIR_STEM = ${PKGNAME}
.else
_WRKDIR_STEM = ${PKGNAME}${_FLAVOR_EXT2}
.endif

OLD_WRKDIR_NAME = w-${_WRKDIR_STEM}

_WRKDIRS = ${.CURDIR}/${OLD_WRKDIR_NAME}

.if !empty(WRKOBJDIR_${PKGPATH})
WRKDIR ?= ${WRKOBJDIR_${PKGPATH}}/${_WRKDIR_STEM}
_WRKDIRS += ${WRKOBJDIR_${PKGPATH}}/${_WRKDIR_STEM}
_WRKDIRS += ${WRKOBJDIR}/${_WRKDIR_STEM}
_WRKDIRS += ${WRKOBJDIR_MFS}/${_WRKDIR_STEM}
.else
WRKDIR ?= ${.CURDIR}/${OLD_WRKDIR_NAME}
.endif

# github related variables
GH_TAGNAME ?=
GH_COMMIT ?=
GH_ACCOUNT ?=
GH_PROJECT ?=

.if !empty(GH_TAGNAME)
WRKDIST ?= ${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME:C/^v//}
.elif !empty(GH_COMMIT)
WRKDIST ?= ${WRKDIR}/${GH_PROJECT}-${GH_COMMIT}
.else
WRKDIST ?= ${WRKDIR}/${DISTNAME}
.endif

WRKSRC ?= ${WRKDIST}

.if ${SEPARATE_BUILD:L} != "no"
WRKBUILD ?= ${WRKDIR}/build-${MACHINE_ARCH}${_FLAVOR_EXT2}
.else
WRKBUILD ?= ${WRKSRC}
.endif
WRKCONF ?= ${WRKBUILD}

XENOCARA_COMPONENT ?= No
# XXX autodetermine makefile actual name, can't do this in
# xenocara.port.mk, since WRKBUILD isn't known yet.
.if ${XENOCARA_COMPONENT:L} == "yes"
.  if exists(${WRKBUILD}/Makefile.bsd-wrapper)
MAKE_FILE ?= Makefile.bsd-wrapper
.  endif
.endif

MAKE_FILE ?= Makefile
ALL_TARGET ?= all

FAKE_TARGET ?= ${INSTALL_TARGET}

TEST_TARGET ?= test
TEST_FLAGS ?= 
TEST_ENV ?=
ALL_TEST_FLAGS = ${MAKE_FLAGS} ${TEST_FLAGS}
ALL_TEST_ENV = ${MAKE_ENV} ${TEST_ENV}
TEST_LOGFILE ?= ${WRKDIR}/test.log
TEST_LOG ?= | tee ${TEST_LOGFILE}
IS_INTERACTIVE ?= No
TEST_IS_INTERACTIVE ?= No

.if ${TEST_IS_INTERACTIVE:L} == "x11"
TEST_ENV += DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
XAUTHORITY ?= ${HOME}/.Xauthority
.endif

_PACKAGE_COOKIE_DEPS=${_FAKE_COOKIE}

.for _s in ${BUILD_PACKAGES}
PKGNAMES += ${FULLPKGNAME${_s}}
PKGFILES += ${PKGFILE${_s}}
.endfor

STATIC_PLIST ?= Yes
.for _s in ${MULTI_PACKAGES}
.  for _v in PKG_ARCH RUN_DEPENDS WANTLIB LIB_DEPENDS PREFIX CATEGORIES \
	STATIC_PLIST
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
NO_ARCH ?= ${MACHINE_ARCH}/no-arch
_PKG_REPO = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/
_TMP_REPO = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/tmp/
_CACHE_REPO = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/cache/
PKGFILE = ${_PKG_REPO}${_PKGFILE${SUBPACKAGE}}

.for _S in ${MULTI_PACKAGES}
_PKGFILE${_S} = ${FULLPKGNAME${_S}}.tgz
.  if ${PKG_ARCH${_S}} == "*" && ${NO_ARCH} != ${MACHINE_ARCH}/all
_PACKAGE_COOKIE${_S} = ${PACKAGE_REPOSITORY}/${NO_ARCH}/${_PKGFILE${_S}}
.  else
_PACKAGE_COOKIE${_S} = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${_PKGFILE${_S}}
.  endif
.endfor

.for _S in ${BUILD_PACKAGES}
.  if ${PKG_ARCH${_S}} == "*" && ${NO_ARCH} != ${MACHINE_ARCH}/all
_PACKAGE_LINKS += ${MACHINE_ARCH}/all/${_PKGFILE${_S}} ${NO_ARCH}/${_PKGFILE${_S}}
_PACKAGE_COOKIES${_S} += ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${_PKGFILE${_S}}
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
_FULLPKGPATH = ${PKGPATH}${_FLAVOR_EXT2:S/-/,/g}
_ALLPKGPATHS = ${FULLPKGPATH}
.else
_ALLPKGPATHS = ${PKGPATH}${FLAVOR_EXT:S/-/,/g}
.  for _S in ${MULTI_PACKAGES}
FULLPKGPATH${_S} ?= ${PKGPATH},${_S}${FLAVOR_EXT:S/-/,/g}
_ALLPKGPATHS += ${FULLPKGPATH${_S}}
.  endfor
FULLPKGPATH = ${FULLPKGPATH${SUBPACKAGE}}
_FULLPKGPATH = ${PKGPATH},${SUBPACKAGE}${_FLAVOR_EXT2:S/-/,/g}
.endif

FAKE_AS_ROOT ?= Yes
.if ${FAKE_AS_ROOT:L} == "yes"
_FAKESUDO = ${SUDO}
_BINOWNGRP = -o ${BINOWN} -g ${BINGRP}
_SHAREOWNGRP = -o ${SHAREOWN} -g ${SHAREGRP}
_MANOWNGRP = -o ${MANOWN} -g ${MANGRP}
.else
_FAKESUDO =
_BINOWNGRP = 
_SHAREOWNGRP =
_MANOWNGRP =
BINMODE = 755
NONBINMODE = 644
MANMODE = ${NONBINMODE}
SHAREMORE = ${NONBINMODE}
_INSTALL_WRAPPER = ${PORTSDIR}/infrastructure/bin/install-wrapper
.endif

.if ${FAKE_AS_ROOT:L:Malways-wrap}
_INSTALL = ${_PERLSCRIPT}/install-wrapper
.endif
_INSTALL ?= ${WRKDIR}/bin/install

# A few aliases for *-install targets
INSTALL_PROGRAM = \
	${_INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP} ${_BINOWNGRP} -m ${BINMODE}
INSTALL_SCRIPT = \
	${_INSTALL} ${INSTALL_COPY} ${_BINOWNGRP} -m ${BINMODE}
INSTALL_DATA = \
	${_INSTALL} ${INSTALL_COPY} ${_SHAREOWNGRP} -m ${SHAREMODE}
INSTALL_MAN = \
	${_INSTALL} ${INSTALL_COPY} ${_MANOWNGRP} -m ${MANMODE}

INSTALL_PROGRAM_DIR = \
	${_INSTALL} -d ${_BINOWNGRP} -m ${DIRMODE}
INSTALL_SCRIPT_DIR = \
	${INSTALL_PROGRAM_DIR}
INSTALL_DATA_DIR = \
	${_INSTALL} -d ${_SHAREOWNGRP} -m ${DIRMODE}
INSTALL_MAN_DIR = \
	${_INSTALL} -d ${_MANOWNGRP} -m ${DIRMODE}

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
SYSTRACE_FILTER_CCACHE ?= ${PORTSDIR}/infrastructure/db/systrace.filter.ccache
_SYSTRACE_POLICIES += /bin/sh /usr/bin/env /usr/bin/make \
	/usr/bin/patch ${DEPBASE}/bin/gmake
SYSTRACE_SUBST_VARS += DISTDIR PKG_TMPDIR PORTSDIR TMPDIR WRKDIR
.if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no"
SYSTRACE_SUBST_VARS += CCACHE_DIR
.endif
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
	FULLPKGNAME MAINTAINER ^BASE_PKGPATH ^LOCALBASE ^X11BASE ^TRUEPREFIX \
	^RCDIR ^LOCALSTATEDIR
_tmpvars =

_PKG_ADD_AUTO ?=
.if !empty(_DEPENDENCY_STACK)
_PKG_ADD_AUTO += -a
.endif

_TERM_ENV = PKG_TMPDIR=${PKG_TMPDIR}
.for _v in TERM TERMCAP ftp_proxy http_proxy
.  if defined(${_v})
_TERM_ENV += ${_v}=${${_v}:Q}
.  endif
.endfor

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
_PKG_ARGS += -Dno_mips64=0
.else
_PKG_ARGS += -Dno_mips64=1
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
_substvars${_S} += -D${_v}=${${_v:S/^^//}${_S}:Q}
_tmpvars += ${_v}${_S}=${${_v:S/^^//}${_S}:Q}
.    else
_substvars${_S} += -D${_v}=${${_v:S/^^//}:Q}
_tmpvars += ${_v}=${${_v:S/^^//}:Q}
.    endif
.  endfor

PKG_ARGS${_S} += ${_substvars${_S}}
PKG_ARGS${_S} += -DFULLPKGPATH=${FULLPKGPATH${_S}}
PKG_ARGS${_S} += -DPERMIT_PACKAGE_CDROM=${PERMIT_PACKAGE_CDROM${_S}:Q}
PKG_ARGS${_S} += -DPERMIT_PACKAGE_FTP=${PERMIT_PACKAGE_FTP${_S}:Q}
.  if !empty(REVISION${_S})
PKG_ARGS${_S} += -DREVISION=${REVISION${_S}}
.  endif
.  if !empty(EPOCH${_S})
PKG_ARGS${_S} += -DEPOCH=${EPOCH${_S}}
.  endif

SUBST_CMD${_S} = ${_PERLSCRIPT}/pkg_subst ${_substvars${_S}}
.if ${FAKE_AS_ROOT:L} == "no"
SUBST_CMD${_S} += -i
.endif
.endfor

SUBST_CMD = ${_PERLSCRIPT}/pkg_subst
.for _v in ${SUBST_VARS}
SUBST_CMD += -D${_v}=${${_v:S/^^//}:Q}
.endfor
.if ${FAKE_AS_ROOT:L} == "no"
SUBST_CMD += -i
.endif
SUBST_PROGRAM = ${SUBST_CMD} -c ${_BINOWNGRP} -m ${BINMODE}
SUBST_DATA = ${SUBST_CMD} -c ${_SHAREOWNGRP} -m ${SHAREMODE}
SUBST_MAN = ${SUBST_CMD} -c ${_MANOWNGRP} -m ${MANMODE}

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
.  endfor
.endif

MTREE_FILE ?=

.if ${XENOCARA_COMPONENT:L} == "yes"
MTREE_FILE += /etc/mtree/BSD.x11.dist
.else
MTREE_FILE += ${PORTSDIR}/infrastructure/db/fake.mtree
.endif

.for _S in ${MULTI_PACKAGES}
# Fill out package command, and package dependencies
PKG_ARGS${_S} += -DCOMMENT=${_COMMENT${_S}:Q} -d ${DESCR${_S}}
PKG_ARGS${_S} += -f ${PLIST${_S}} -p ${PREFIX${_S}}
.  if defined(MESSAGE${_S}) && !empty(MESSAGE${_S})
PKG_ARGS${_S} += -M ${MESSAGE${_S}}
.  endif
.  if defined(UNMESSAGE${_S}) && !empty(UNMESSAGE${_S})
PKG_ARGS${_S} += -U ${UNMESSAGE${_S}}
.  endif
PKG_ARGS${_S} += -A'${PKG_ARCH${_S}}'
.  if !defined(_COMMENT${_S})
ERRORS += "Fatal: Missing comment for ${_S:S/^-$/main package/}."
.  endif
.endfor

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

# Used to print all the '===>' style prompts - override this to turn them off.
ECHO_MSG ?= echo

# basic master sites configuration

MASTER_SITE_OVERRIDE ?= No

.if exists(${PORTSDIR}/infrastructure/db/network.conf)
.include "${PORTSDIR}/infrastructure/db/network.conf"
.else
.include "${PORTSDIR}/infrastructure/templates/network.conf.template"
.endif

.if !empty(GH_ACCOUNT) && !empty(GH_PROJECT)
.  if ${GH_TAGNAME} == master
ERRORS += "Fatal: using master as GH_TAGNAME is invalid"
.  endif
MASTER_SITES_GITHUB += \
	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/archive/${GH_TAGNAME:S/$/\//}

MASTER_SITES ?= ${MASTER_SITES_GITHUB}
.else
# Empty declarations to avoid "variable XXX is recursive" errors
MASTER_SITES ?=
.endif

# I guess we're in the master distribution business! :)  As we gain mirror
# sites for distfiles, add them to this list.
.if ${MASTER_SITE_OVERRIDE:L} == "no"
MASTER_SITES := ${MASTER_SITES} ${MASTER_SITE_BACKUP}
.else
MASTER_SITES := ${MASTER_SITE_OVERRIDE} ${MASTER_SITES}
.endif

_warn_checksum = :
.if !empty(MASTER_SITES:M*[^/])
_warn_checksum += ;echo ">>> MASTER_SITES not ending in /: ${MASTER_SITES:M*[^/]}"
.endif

.for _I in 0 1 2 3 4 5 6 7 8 9
.  if defined(MASTER_SITES${_I})
.    if !empty(MASTER_SITES${_I}:M*[^/])
_warn_checksum += ;echo ">>> MASTER_SITES${_I} not ending in /: ${MASTER_SITES${_I}:M*[^/]}"
.    endif
.    if ${MASTER_SITE_OVERRIDE:L} == "no"
MASTER_SITES${_I} := ${MASTER_SITES${_I}} ${MASTER_SITE_BACKUP}
.    else
MASTER_SITES${_I} := ${MASTER_SITE_OVERRIDE} ${MASTER_SITES${_I}}
.    endif
.  endif
.endfor


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

.if !empty(GH_COMMIT)
DISTFILES ?= ${DISTNAME}${EXTRACT_SUFX}{${GH_COMMIT}${EXTRACT_SUFX}}
.else
DISTFILES ?= ${DISTNAME}${EXTRACT_SUFX}
.endif

_FILES=
.for v in DISTFILES PATCHFILES SUPDISTFILES
.  if defined($v)
.    for e in ${$v}
.      for f m u in ${e:C/:[0-9]$//:C/(.*)\{.*\}(.*)/\1\2/} MASTER_SITES${e:M*\:[0-9]:C/.*:([0-9])/\1/} ${e:C/:[0-9]$//:C/.*\{(.*)\}(.*)/\1\2/}
.        if empty(_FILES:M$f)
_FILES += $f
.          if empty(DIST_SUBDIR)
_FULL_$v += $f $f $m $u
_PATH_$v += $f
.          else
_FULL_$v += ${DIST_SUBDIR}/$f $f $m $u
_PATH_$v += ${DIST_SUBDIR}/$f
.          endif
_LIST_$v += $f
.        endif
.      endfor
.    endfor
.  endif
.endfor

CHECKSUMFILES = ${_PATH_DISTFILES} ${_PATH_PATCHFILES}
MAKESUMFILES = ${CHECKSUMFILES} ${_PATH_SUPDISTFILES}

.if defined(IGNOREFILES)
ERRORS += "Fatal: don't use IGNOREFILES"
.endif

# This is what is actually going to be extracted, and is overridable
# by the user.
EXTRACT_ONLY ?= ${_LIST_DISTFILES}

# okay, time for some guess work
.if !empty(EXTRACT_ONLY:M*.zip)
_USE_ZIP ?= Yes
.endif
.if !empty(EXTRACT_ONLY:M*.tar.xz)
_USE_XZ ?= Yes
.endif
.if !empty(EXTRACT_ONLY:M*.tar.lz)
_USE_LZIP ?= Yes
.endif
.if !empty(EXTRACT_ONLY:M*.tar.bz2) || !empty(EXTRACT_ONLY:M*.tbz2) || !empty(EXTRACT_ONLY:M*.tbz) || \
	(defined(PATCHFILES) && !empty(_LIST_PATCHFILES:M*.bz2))
_USE_BZIP2 ?= Yes
.endif
_USE_XZ ?= No
_USE_LZIP ?= No
_USE_ZIP ?= No
_USE_BZIP2 ?= No

EXTRACT_CASES ?=

_PERL_FIX_SHAR ?= perl -ne 'print if $$s || ($$s = m:^\#(\!\s*/bin/sh\s*| This is a shell archive):)'

# XXX note that we DON'T set EXTRACT_SUFX.
.if ${_USE_XZ:L} != "no"
BUILD_DEPENDS += archivers/xz
EXTRACT_CASES += *.tar.xz) \
	xzcat ${FULLDISTDIR}/$$archive| ${TAR} xf -;;
.endif
.if ${_USE_LZIP:L} != "no"
BUILD_DEPENDS += archivers/lzip/lunzip
EXTRACT_CASES += *.tar.lz) \
	lunzip -c ${FULLDISTDIR}/$$archive| ${TAR} xf -;;
.endif
.if ${_USE_ZIP:L} != "no"
BUILD_DEPENDS += archivers/unzip
EXTRACT_CASES += *.zip) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;
.endif
.if ${_USE_BZIP2:L} != "no"
BUILD_DEPENDS += archivers/bzip2
EXTRACT_CASES += *.tar.bz2|*.tbz2|*.tbz) \
	${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;
.endif
EXTRACT_CASES += *.tar) \
	${TAR} xf ${FULLDISTDIR}/$$archive;;
EXTRACT_CASES += *.shar.gz|*.shar.Z|*.sh.gz|*.sh.Z) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${_PERL_FIX_SHAR} | /bin/sh;;
EXTRACT_CASES += *.shar | *.sh) \
	${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;
EXTRACT_CASES += *.tar.gz|*.tgz) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;
EXTRACT_CASES += *.gz) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive >$$(basename $$archive .gz);;
EXTRACT_CASES += *) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

PATCH_CASES ?=
.if ${_USE_BZIP2:L} != "no"
PATCH_CASES += *.bz2) \
	${BZIP2} -dc $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
.endif
.if ${_USE_LZIP:L} != "no"
PATCH_CASES += *.lz) \
	lunzip -c $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
.endif
PATCH_CASES += *.Z|*.gz) \
	${GZCAT} $$patchfile | ${PATCH} ${PATCH_DIST_ARGS};;
PATCH_CASES += *) \
	${PATCH} ${PATCH_DIST_ARGS} < $$patchfile;;

# Documentation
MAINTAINER ?= The OpenBSD ports mailing-list <ports@openbsd.org>
.if empty(MAINTAINER)
ERRORS += "Fatal: defining MAINTAINER to empty is an error"
.endif

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
MISSING_FILES =
.if ${FETCH_MANUALLY:L} != "no"
.  for _F in ${CHECKSUMFILES}
.    if !exists(${DISTDIR}/${_F})
MISSING_FILES += ${_F}
.    endif
.  endfor
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
TRY_BROKEN ?= No
_IGNORE_TEST ?=
.if ${TEST_IS_INTERACTIVE:L} != "no" && defined(BATCH)
_IGNORE_TEST += "has interactive tests"
.elif ${TEST_IS_INTERACTIVE:L} == "no" && defined(INTERACTIVE)
_IGNORE_TEST += "does not have interactive tests"
.endif

.if ${IS_INTERACTIVE:L} != "no" && defined(BATCH)
IGNORE += "is an interactive port"
.elif !(${IS_INTERACTIVE:L} != "no" || !empty(MISSING_FILES)) && defined(INTERACTIVE)
IGNORE += "is not an interactive port"
.endif
.if !empty(MISSING_FILES) && defined(BATCH)
_EXTRA_IGNORE += "is an interactive port: missing files"
.endif

.if ${SHARED_ONLY:L} == "yes" && ${NO_SHARED_LIBS:L} == "yes"
IGNORE += "requires shared libraries"
.endif

.if ${TRY_BROKEN:L} != "yes"
.  if defined(BROKEN-${ARCH})
IGNORE += "is marked as broken for ${ARCH}: ${BROKEN-${ARCH}:Q}"
.  endif
.  if ${MACHINE_ARCH} != ${ARCH} && defined(BROKEN-${MACHINE_ARCH})
IGNORE += "is marked as broken for ${MACHINE_ARCH}: ${BROKEN-${MACHINE_ARCH}:Q}"
.  endif
.  if defined(BROKEN)
IGNORE += "is marked as broken: ${BROKEN:Q}"
.  endif
.endif
.if defined(COMES_WITH)
IGNORE += "-- ${FULLPKGNAME${SUBPACKAGE}:C/-[0-9].*//g} comes with OpenBSD as of release ${COMES_WITH}"
.endif

IGNORE_IS_FATAL ?= "No"
# XXX even if subpackage is invalid, define this, so that errors come out
# from ERRORS and not make internals.
IGNORE${SUBPACKAGE} ?=
.if (!empty(IGNORE${SUBPACKAGE}) || defined(_EXTRA_IGNORE)) && ${IGNORE_IS_FATAL:L} == "yes"
ERRORS += "Fatal: can't build"
ERRORS += ${IGNORE${SUBPACKAGE}} ${_EXTRA_IGNORE}
.endif

_DEPENDS_TARGET ?= install

################################################################
# Dependency checking
################################################################

# Various dependency styles
_resolve_lib = LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} \
			${_PERLSCRIPT}/resolve-lib

.if ${NO_SHARED_LIBS:L} == "yes"
_resolve_lib += -noshared
.endif

PKG_CREATE_NO_CHECKS ?= No
.if ${PKG_CREATE_NO_CHECKS:L} == "yes"
_pkg_wantlib_args = fake-wantlib-args
.elif ${PKG_CREATE_NO_CHECKS:L} == "warn"
_pkg_wantlib_args = wantlib-args
_check_msg = Warning
# ignore diff error
_check_error = || true
.else
_pkg_wantlib_args = wantlib-args
_check_msg = Error
# let diff error out
_check_error =
.endif
wantlib_args ?= port-wantlib-args
lib_depends_args ?= lib-depends-args



PORT_LD_LIBRARY_PATH = ${LOCALBASE}/lib:${X11BASE}/lib:/usr
DEPBASE = ${LOCALBASE}
DEPDIR =

.if ${FORCE_UPDATE:L} == "yes" || ${FORCE_UPDATE:L} == "hard"
_force_update_fragment = { \
		${ECHO_MSG} "===>  Verifying update for $$pkg in $$dir"; \
		if ( eval $$toset exec ${MAKE} subupdate ); then \
			${ECHO_MSG} "===> Returning to build of ${FULLPKGNAME${SUBPACKAGE}}${_MASTER}"; \
		else \
			${REPORT_PROBLEM}; \
			exit 1; \
		fi; \
	}
_PKG_ADD_FORCE = -D update -D updatedepends
.  if ${FORCE_UPDATE:L} == "hard"
_PKG_ADD_FORCE += -D installed
.  endif
.else
_force_update_fragment = :
_PKG_ADD_FORCE =
.endif

_FULL_PACKAGE_NAME ?= No

# XXX save result pre-normalization, just for checking
_CHECK_DEPENDS =
.for _v in BUILD LIB RUN TEST
_CHECK_DEPENDS +:= ${${_v}_DEPENDS}
.endfor
.for _s in ${MULTI_PACKAGES}
.  for _v in RUN LIB
_CHECK_DEPENDS +:= ${${_v}_DEPENDS${_s}}
.  endfor
.endfor
.if ${_CHECK_DEPENDS:M\:*}
ERRORS += "Fatal: old style depends ${_CHECK_DEPENDS:M\:*}"
.endif

# the C,...., part basically does this:
# if the depends contains only pkgpath>=something
# then we rebuild it as STEM->=something:pkgpath

.for _v in BUILD LIB RUN TEST
${_v}_DEPENDS := ${${_v}_DEPENDS:C,^([^:]+/[^:<=>]+)([<=>][^:]+)$,STEM-\2:\1,}
.endfor
.for _v in BUILD TEST
${_v}_DEPENDS := ${${_v}_DEPENDS:C,^([^:]+/[^:<=>]+)([<=>][^:]+)(:patch|:configure|:build)$,STEM-\2:\1\3,}
.endfor
.for _s in ${MULTI_PACKAGES}
.  for _v in RUN LIB
${_v}_DEPENDS${_s} := ${${_v}_DEPENDS${_s}:C,^([^:]+/[^:<=>]+)([<=>][^:]+)$,STEM-\2:\1,}
.  endfor
.endfor


_BUILDLIB_DEPENDS = 
_BUILDWANTLIB = 
# strip inter-multi-packages dependencies during building
.for _path in ${PKGPATH:S,^mystuff/,,}
.  for _s in ${BUILD_PACKAGES}
_BUILDLIB_DEPENDS += ${LIB_DEPENDS${_s}:N*\:${_path}:N*\:${_path},*:N${_path}:N${_path},*}
_BUILDWANTLIB += ${WANTLIB${_s}}
_LIB4${_s} = ${LIB_DEPENDS${_s}:M*\:${_path}} ${LIB_DEPENDS${_s}:M*\:${_path},*} ${LIB_DEPENDS${_s}:M${_path}} ${LIB_DEPENDS${_s}:M${_path},*}
_LIB4 += ${_LIB4${_s}}
.  endfor
.endfor

# automatically try to determine USE_X11 from wantlib
USE_X11 ?= No
.for _lib in X11 GL ICE xcb pixman freetype Xft
.  if ${USE_X11:L} != "yes"
.    for _b in ${_BUILDWANTLIB:C/[>=].*//}
.      if "${_b:M${_lib}}"
USE_X11 = Yes
.      endif
.    endfor
.  endif
.endfor

.if ${USE_X11:L} == "yes" && ${PORTS_BUILD_XENOCARA_TOO:L} == "yes"
BUILD_DEPENDS += base/xenocara/meta
.endif

.if ${NO_DEPENDS:L} == "no"
_BUILD_DEPLIST = ${BUILD_DEPENDS}
_RUN_DEPLIST = ${RUN_DEPENDS${SUBPACKAGE}}
_TEST_DEPLIST = ${TEST_DEPENDS}
_BUILDLIB_DEPLIST = ${_BUILDLIB_DEPENDS}
_RUNLIB_DEPLIST = ${LIB_DEPENDS${SUBPACKAGE}}
.endif

_DEPLIST = ${_BUILD_DEPLIST} ${_RUN_DEPLIST} ${_TEST_DEPLIST} \
	${_BUILDLIB_DEPLIST} ${_RUNLIB_DEPLIST}

# compute DEPBUILD_COOKIES and friends
.for _DEP in BUILD RUN BUILDLIB RUNLIB TEST
_DEP${_DEP}_COOKIES =
.  for _i in ${_${_DEP}_DEPLIST}
_DEP${_DEP}_COOKIES += ${WRKDIR}/.dep-${_i:C,>=,ge-,g:C,<=,le-,g:C,<,lt-,g:C,>,gt-,g:C,\*,ANY,g:C,[|:/=],-,g}
.  endfor
.endfor

LIBM_CHECK ?=
.if ${MACHINE_ARCH} == "vax" && !empty(LIBM_CHECK)
_DEPBUILDLIB_COOKIES += ${WRKDIR}/.libm-check
.endif

# Normal user-mode targets are PHONY targets, e.g., don't create the
# corresponding file. However, there is nothing phony about the cookie.

MODSIMPLE_configure = \
	cd ${WRKCONF} && ${_SYSTRACE_CMD} ${SETENV} \
		CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS:C/ *$//}" \
		CXX="${CXX}" ac_cv_path_CXX="${CXX}" CXXFLAGS="${CXXFLAGS:C/ *$//}" \
		INSTALL="${_INSTALL} -c ${_BINOWNGRP}" \
		ac_given_INSTALL="${_INSTALL} -c ${_BINOWNGRP}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
		YACC="${YACC}" \
		${CONFIGURE_ENV} ${_CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}

FAKE_SETUP = PATH='${PORTPATH}' TRUEPREFIX=${PREFIX} \
	PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST}

_CLEANDEPENDS ?= Yes

.for _S in ${MULTI_PACKAGES}
_FETCH_MAKEFILE_NAMES += ${PKGPATH}/${FULLPKGNAME${_S}}
.endfor

# Internal variables, used by dependencies targets
# Only keep pkg:dir spec, strip extra target

.for _mod in C/:(patch|configure|build)$$//
_BUILD_DEP2 = ${BUILD_DEPENDS:${_mod}}
_BUILD_DEP3 = ${BUILD_DEPENDS:${_mod}}

_RUN_DEP2 = ${RUN_DEPENDS${SUBPACKAGE}:${_mod}}
_RUN_DEP3 = ${RUN_DEPENDS${SUBPACKAGE}:${_mod}}

_TEST_DEP2 = ${TEST_DEPENDS:${_mod}}
_TEST_DEP3 = ${_TEST_DEP2}

.  if ${NO_SHARED_LIBS:L} != "yes"
_RUN_DEP2 += ${LIB_DEPENDS${SUBPACKAGE}:${_mod}}
_LIB_DEP3 = ${LIB_DEPENDS${SUBPACKAGE}}
.  else
_LIB_DEP3 =
.  endif

_BUILD_DEP2 += ${_BUILDLIB_DEPENDS:${_mod}}

.  for _S in ${MULTI_PACKAGES}
_BUILD_DEP3${_S} = ${_BUILD_DEP3}
_RUN_DEP3${_S} = ${RUN_DEPENDS${_S}:${_mod}}
.    if ${NO_SHARED_LIBS:L} != "yes"
_LIB_DEP3${_S} = ${LIB_DEPENDS${_S}}
.    else
_LIB_DEP3${_S} =
.    endif
.  endfor

.endfor

_DEPBUILDLIBS = ${_BUILDWANTLIB}
_DEPRUNLIBS = ${WANTLIB${SUBPACKAGE}}

# the _DEP*LIBSPECS_COOKIES are only there to force reevaluation of
# _DEPBUILDWANTLIB_COOKIE and _DEPRUNWANTLIB_COOKIE when the dependencies
# change (the list will change, and so the cookie will be regenerated)
.if ${NO_DEPENDS:L} == "no"
.  for i in ${_DEPBUILDLIBS:C,>=,-ge-,g:C,=,-gt-,g:C,/,-,g}
_DEPBUILDLIBSPECS_COOKIES += ${WRKDIR}/.spec-$i
.  endfor
_DEPBUILDWANTLIB_COOKIE = ${WRKDIR}/.buildwantlibs
.  for i in ${_DEPRUNLIBS:C,>=,-ge-,g:C,=,-gt-,g:C,/,-,g}
_DEPRUNLIBSPECS_COOKIES += ${WRKDIR}/.spec-$i
.  endfor
_DEPRUNWANTLIB_COOKIE = ${WRKDIR}/.runwantlibs${SUBPACKAGE}
.else
_DEPBUILDWANTLIB_COOKIE =
_DEPRUNWANTLIB_COOKIE =
.endif

_DEPLIBSPECS_COOKIES = ${_DEPBUILDLIBSPECS_COOKIES} ${_DEPRUNLIBSPECS_COOKIES}

# strip optional pkgspec, only keep the path
_BUILD_DEP = ${_BUILD_DEP2:C,^[^:/]*:,,}
_RUN_DEP = ${_RUN_DEP2:C,^[^:/]*:,,}
_TEST_DEP = ${_TEST_DEP2:C,^[^:/]*:,,}

REORDER_DEPENDENCIES ?=
ECHO_REORDER ?= :

# Lock infrastructure:
# to remove locks handling, define LOCKDIR to an empty value
LOCKDIR ?= ${WRKOBJDIR}/locks

LOCK_CMD ?= ${_PERLSCRIPT}/dolock
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
_LOCKNAME = ${FULLPKGNAME}
.  else
_LOCKNAME = ${PKGNAME}
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
	${_LOCK}; locked=true; \
	trap 'if $$locked; then ${_UNLOCK}; locked=false; fi' 0; \
	trap 'exit 1' 1 2 3 13 15

.endif
_SIMPLE_LOCK ?= :
_DO_LOCK ?= :

CHECKSUM_PACKAGES ?= No
_PACKAGE_CHECKSUM_DIR = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/cksums

_do_checksum_package = \
	mkdir -p ${_PACKAGE_CHECKSUM_DIR} && \
	cd ${_TMP_REPO} && \
	cksum -b -a sha256 $$pkgname \
		>${_PACKAGE_CHECKSUM_DIR}/$$(basename $$pkgname .tgz).sha256

.if ${CHECKSUM_PACKAGES:L} == "yes"
_checksum_package = ${_do_checksum_package}
.elif ${CHECKSUM_PACKAGES:L} == "ftp"
_checksum_package = \
	case $${permit_ftp} in yes) \
		${_do_checksum_package};; \
	esac
.elif ${CHECKSUM_PACKAGES:L} == "cdrom"
_checksum_package = \
	case $${permit_cdrom} in yes) \
		${_do_checksum_package};; \
	esac
.else
_checksum_package = :
.endif

_size_fragment = perl -e '$$s = (stat $$ARGV[0])[7]; print "SIZE ($$ARGV[1]) = $$s\n";'

# commands used all the time
_lines2list = tr '\012' '\040' | sed -e 's, $$,,'

_zap_last_line = sed -e '$$d'

_sort_dependencies = tsort -r|${_zap_last_line}

_version2stem = sed -e 's,-[0-9].*,,'

_grab_libs_from_plist = sed -n -e '/^@lib /{ s///; p; }' \
	-e '/^@file .*\/lib\/lib.*\.a$$/{ s/^@file //; p; }'

# used in the following pattern
# while $(_read_spec); do $(_parse_spec); done

_read_spec = IFS=: read pkg subdir target
_parse_spec = \
	d="$$pkg$${subdir:+:}$$subdir$${target:+:}$$target"; \
	extra_msg="(DEPENDS was $$d) in ${FULLPKGPATH}"; \
	case "X$$pkg" in \
	*/*) target="$$subdir"; subdir="$$pkg"; pkg=;; \
	esac; ${_flavor_fragment}

_compute_default = \
	set -f; \
	if set -- $$(eval $$toset exec ${MAKE} _print-metadata); then \
		default=$$1; pkgspec=$$2; pkgpath=$$3; \
	else \
		echo 1>&2 "Problem with dependency $$d"; \
		exit 1; \
	fi; \
	set +f

_complete_pkgspec = \
	${_compute_default}; \
	case "X$$pkg" in \
	X) \
		pkg=$$pkgspec;; \
	XSTEM*) \
		stem=$$(echo $$default|${_version2stem}); \
		pkg="$$stem$${pkg\#STEM}";; \
	esac

_emit_lib_depends = for i in ${LIB_DEPENDS${SUBPACKAGE}:QL}; do echo "$$i"; done
_emit_run_depends = for i in ${RUN_DEPENDS${SUBPACKAGE}:QL}; do echo "$$i"; done

# computing libraries from the ports tree is expensive, so cache as many of
# these as we can

# XXX assumes it's running under _cache_fragment, either directly, or from
# a target up there

# XXX if we can't move the tmpfile, we remove it, because we've been pre-empted
# by someone with more rights who created the correct file for us
_libs2cache = \
	cached_libs=$${_DEPENDS_CACHE}/$$(echo $$subdir|sed -e 's/\//--/g'); \
	if ! test -f $$cached_libs; then \
		t=$$(mktemp $${_DEPENDS_CACHE}/tmp.XXXXXXXXXX||exit 1); \
		if eval $$toset ${MAKE} print-plist-libs >$$t; \
		then  \
			chmod 0644 $$t; \
			mv $$t $$cached_libs || rm $$t; \
		else \
			echo 1>&2 "Problem with dependency $$subdir"; \
			exit 1; \
		fi; \
	fi

# is this subdir actually needed as a libs depend ?
_if_check_needed = \
	${_parse_spec}; \
	${_libs2cache}; \
	if ${_resolve_lib} -needed ${_DEPRUNLIBS:QL} <$$cached_libs

.if ${NO_SHARED_LIBS:L} == "yes"
_warn_if_shared = :
.else
_warn_if_shared = echo "LIB_DEPENDS $$d not needed for ${FULLPKGPATH${SUBPACKAGE}} ?" 1>&2
.endif

# turn a list of found libraries into parameters for pkg_create,
# zap .a in the meantime
_show_found = \
	for k in $$found; do \
		case $$k in *.a) ;; \
		*) echo "-W $$k";; \
		esac; \
	done

# fairly good approximation of libraries we want
# XXX this is ksh, be less perfect with pure sh
_lib=/lib*.{so.+([0-9]).+([0-9]),a}

_list_system_libs = \
	for i in /usr/lib${_lib} ${X11BASE}/lib${_lib}; do echo $$i; done

_list_port_libs = \
	{ ${MAKE} show-run-depends|while read subdir; do \
		${_flavor_fragment}; \
		${_libs2cache}; \
		cat $$cached_libs; \
	done; ${_list_system_libs}; }

.if empty(PLIST_DB)
_register_plist =:
.else
_register_plist = mkdir -p ${PLIST_DB:S/:/ /g} && ${_PERLSCRIPT}/register-plist ${PLIST_DB}
.endif
.if ${CHECK_LIB_DEPENDS:L} == "yes"
_check_lib_depends = ${_CHECK_LIB_DEPENDS}
.else
_check_lib_depends =:
.endif

_CHECK_LIB_DEPENDS = PORTSDIR=${PORTSDIR} ${_PERLSCRIPT}/check-lib-depends
_CHECK_LIB_DEPENDS += -d ${_PKG_REPO} -B ${WRKINST}

.for _s in ${MULTI_PACKAGES}
.  if ${STATIC_PLIST${_s}:L} == "no"
_register_plist${_s} = :
.  else
_register_plist${_s} = ${_register_plist}
.  endif
.endfor

###
### end of variable setup. Only targets now
###
dump-vars:
.if ${MULTI_PACKAGES} == "-"
.  for _v in ${_ALL_VARIABLES} ${_ALL_VARIABLES_INDEXED}
.   if defined(${_v}-)
.     if !empty(${_v}-)
	@echo ${FULLPKGPATH}.${_v}=${${_v}-:Q}
.     endif
.   elif defined(${_v}) && !empty(${_v})
	@echo ${FULLPKGPATH}.${_v}=${${_v}:Q}
.   endif
.  endfor
.  for _v in ${_ALL_VARIABLES_PER_ARCH}
.    for _a in ${ALL_ARCHS}
.      if defined(${_v}-${_a}) && !empty(${_v}-${_a})
	@echo ${FULLPKGPATH}.${_v}-${_a}=${${_v}-${_a}:Q}
.      endif
.    endfor
.  endfor
.else
.  for _S in ${MULTI_PACKAGES}
.    for _v in ${_ALL_VARIABLES}
.     if defined(${_v}) && !empty(${_v})
	@echo ${FULLPKGPATH${_S}}.${_v}=${${_v}:Q}
.     endif
.    endfor
.    for _v in ${_ALL_VARIABLES_PER_ARCH}
.      for _a in ${ALL_ARCHS}
.        if defined(${_v}-${_a}) && !empty(${_v}-${_a})
	@echo ${FULLPKGPATH${_S}}.${_v}-${_a}=${${_v}-${_a}:Q}
.        endif
.      endfor
.    endfor
.    for _v in ${_ALL_VARIABLES_INDEXED}
.      if defined(${_v}${_S}) && !empty(${_v}${_S})
	@echo ${FULLPKGPATH${_S}}.${_v}=${${_v}${_S}:Q}
.      endif
.    endfor
.  endfor
.endif

check-register:
.if empty(PLIST_DB)
	@exit 1
.else
	@if cd ${.CURDIR} && PKGPATH=${PKGPATH} ${MAKE} print-plist-with-depends | ${_PERLSCRIPT}/register-plist -p ${PLIST_DB}; then \
		echo "${FULLPKGNAME${SUBPACKAGE}} okay"; \
	else \
		echo "${FULLPKGNAME${SUBPACKAGE}} BAD"; \
	fi
.endif

check-register-all:
.for _S in ${MULTI_PACKAGES}
	@cd ${.CURDIR} && SUBPACKAGE=${_S} PKGPATH=${PKGPATH} ${MAKE} check-register
.endfor

.for _S in ${MULTI_PACKAGES}

${_CACHE_REPO}/${_PKGFILE${_S}}:
	@mkdir -p ${@D}
	@${ECHO_MSG} -n "===>  Looking for ${_PKGFILE${_S}} in \$$PKG_PATH - "
	@if ${SETENV} ${_TERM_ENV} PKG_CACHE=${_CACHE_REPO} PKG_PATH=${_CACHE_REPO}:${_PKG_REPO}:${PACKAGE_REPOSITORY}/${NO_ARCH}/:${PKG_PATH} ${_PKG_ADD} -n -q ${_PKG_ADD_FORCE} -D installed -D downgrade ${_PKGFILE${_S}} >/dev/null 2>&1; then \
		${ECHO_MSG} "found"; \
		exit 0; \
	else \
		${ECHO_MSG} "not found"; \
		exit 1; \
	fi


# The real package

${_PACKAGE_COOKIE${_S}}:
	@mkdir -p ${@D} ${_TMP_REPO}
.  if ${FETCH_PACKAGES:L} == "yes" && !defined(_TRIED_FETCHING_${_PACKAGE_COOKIE${_S}})
	@f=${_CACHE_REPO}/${_PKGFILE${_S}}; \
	cd ${.CURDIR} && ${MAKE} $$f && \
		{ ln $$f $@ 2>/dev/null || cp -p $$f $@ ; } || \
		cd ${.CURDIR} && ${MAKE} _TRIED_FETCHING_${_PACKAGE_COOKIE${_S}}=Yes _internal-package-only
.  else
	@${_MAKE} ${_PACKAGE_COOKIE_DEPS}
# What PACKAGE normally does:
	@${ECHO_MSG} "===>  Building package for ${FULLPKGNAME${_S}}"
	@${ECHO_MSG} "Create ${_PACKAGE_COOKIE${_S}}"
	@cd ${.CURDIR} && \
	tmp=${_TMP_REPO}${_PKGFILE${_S}} pkgname=${_PKGFILE${_S}} permit_ftp=${PERMIT_PACKAGE_FTP${_S}:L:Q} permit_cdrom=${PERMIT_PACKAGE_CDROM${_S}:L:Q} && \
	if deps=$$(SUBPACKAGE=${_S} wantlib_args=${_pkg_wantlib_args} \
			${MAKE} print-package-args) && \
		${_FAKESUDO} ${_PKG_CREATE} -DPORTSDIR="${PORTSDIR}" \
			$$deps ${PKG_ARGS${_S}} $$tmp && \
		${_check_lib_depends} $$tmp && \
		${_register_plist${_S}} $$tmp && \
		${_checksum_package} && \
		mv $$tmp ${_PACKAGE_COOKIE${_S}} && \
		mode=$$(id -u):$$(id -g) && \
		${_FAKESUDO} chown $${mode} ${_PACKAGE_COOKIE${_S}}; then \
		 	exit 0; \
	else \
		${_FAKESUDO} rm -f $$tmp; \
	    exit 1; \
	fi
# End of PACKAGE.
	@rm -f ${_BULK_COOKIE} ${_UPDATE_COOKIE${_S}} ${_FUPDATE_COOKIE${_S}}
.  endif


# The real install

${_INSTALL_COOKIE${_S}}:
.  if ${FETCH_PACKAGES:L} == "yes"
	@cd ${.CURDIR} && SUBPACKAGE=${_S} PKGPATH=${PKGPATH} exec ${MAKE} subpackage
.  else

	@${_MAKE} package
.  endif
	@cd ${.CURDIR} && SUBPACKAGE=${_S} _DEPENDS_TARGET=install PKGPATH=${PKGPATH} \
		exec ${MAKE} _internal-run-depends _internal-runlib-depends \
		_internal-runwantlib-depends
	@${ECHO_MSG} "===>  Installing ${FULLPKGNAME${_S}} from ${_PKG_REPO}"
	@if ${PKG_INFO} -e ${FULLPKGNAME${_S}}; then \
		echo "Package ${FULLPKGNAME${_S}} is already installed"; \
	else \
		${SUDO} ${SETENV} ${_TERM_ENV} ${_PKG_ADD_LOCAL} ${_PKG_ADD_AUTO} ${PKGFILE${_S}}; \
	fi
	@-${SUDO} ${_MAKE_COOKIE} $@


${_UPDATE_COOKIE${_S}}:
	@${_MAKE} _internal-package
.  if empty(UPDATE_COOKIES_DIR)
	@${_MAKE} ${WRKDIR}
.  else
	@mkdir -p ${UPDATE_COOKIES_DIR}
.  endif
	@${ECHO_MSG} "===> Updating for ${FULLPKGNAME${_S}}"
	@b=$$(cd ${.CURDIR} && SUBPACKAGE=${_S} ${MAKE} print-plist|sed -ne '/^@pkgpath /s,,-e ,p'); \
	a=$$(${PKG_INFO} -e ${FULLPKGPATH${_S}} $$b 2>/dev/null |sort -u); \
	case $$a in \
		'') ${ECHO_MSG} "Not installed, no update";; \
		*) cd ${.CURDIR} && SUBPACKAGE=${_S} _DEPENDS_TARGET=package PKGPATH=${PKGPATH} \
		     ${MAKE} _internal-run-depends _internal-runlib-depends \
			   _internal-runwantlib-depends; \
		   ${ECHO_MSG} "Upgrading from $$a"; \
		   ${SUDO} ${SETENV} ${_TERM_ ENV} ${_PKG_ADD_LOCAL} ${_PKG_ADD_AUTO} -r ${_PKG_ADD_FORCE} ${PKGFILE${_S}};; \
	esac
	@${_MAKE_COOKIE} $@

${_FUPDATE_COOKIE${_S}}:
	@${_MAKE} _internal-package
	@cd ${.CURDIR} && SUBPACKAGE=${_S} _DEPENDS_TARGET=package PKGPATH=${PKGPATH} \
		exec ${MAKE} _internal-run-depends _internal-runlib-depends \
		_internal-runwantlib-depends
.  if empty(UPDATE_COOKIES_DIR)
	@${_MAKE} ${WRKDIR}
.  else
	@mkdir -p ${UPDATE_COOKIES_DIR}
.  endif
	@${ECHO_MSG} "===> Updating/installing for ${FULLPKGNAME${_S}}"
	@${SUDO} ${SETENV} ${_TERM_ENV} ${_PKG_ADD_LOCAL} ${_PKG_ADD_AUTO} -r ${_PKG_ADD_FORCE} ${PKGFILE${_S}}
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
.  if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no"
	@sed ${_SYSTRACE_SED_SUBST} ${SYSTRACE_FILTER_CCACHE} >> $@
.  endif
.endfor
	@if [ -f ${.CURDIR}/systrace.policy ]; then \
		sed ${_SYSTRACE_SED_SUBST} ${.CURDIR}/systrace.policy >> $@; \
	fi

makesum: fetch-all
	@${_warn_checksum}
.if !defined(NO_CHECKSUM) && !empty(MAKESUMFILES)
	@rm -f ${CHECKSUM_FILE}
	@cd ${DISTDIR} && cksum -b -a "${_CIPHERS}" ${MAKESUMFILES} >> ${CHECKSUM_FILE}
	@cd ${DISTDIR} && \
		for file in ${MAKESUMFILES}; do \
			${_size_fragment} $$file $$file >> ${CHECKSUM_FILE}; \
		done
	@sort -u -o ${CHECKSUM_FILE} ${CHECKSUM_FILE}
.endif

list-distinfo:
	@if test -e ${CHECKSUM_FILE}; then cat ${CHECKSUM_FILE}; \
	else \
		if ! test -z "${DISTFILES}"; then \
			echo 1>&2 "${CHECKSUM_FILE} not found"; \
			exit 1; \
		fi; \
	fi


################################################################
# Dependency checking
################################################################



_internal-depends: _internal-lib-depends _internal-build-depends \
	_internal-buildlib-depends \
	_internal-run-depends _internal-buildwantlib-depends \
	_internal-runwantlib-depends _internal-test-depends

_internal-prepare: _internal-build-depends _internal-buildlib-depends \
	_internal-buildwantlib-depends

# and the rules for the actual dependencies

_print-metadata:
	@echo '${FULLPKGNAME${SUBPACKAGE}}' '${PKGSPEC${SUBPACKAGE}}' '${FULLPKGPATH${SUBPACKAGE}}'

_print-packagename:
.if ${_FULL_PACKAGE_NAME:L} == "yes"
	@echo '${PKGPATH}/${FULLPKGNAME${SUBPACKAGE}}'
.else
	@echo ${FULLPKGNAME${SUBPACKAGE}}
.endif

.for _i in ${_DEPLIST}
.  if !target(${WRKDIR}/.dep-${_i:C,>=,ge-,g:C,<=,le-,g:C,<,lt-,g:C,>,gt-,g:C,\*,ANY,g:C,[|:/=],-,g})
${WRKDIR}/.dep-${_i:C,>=,ge-,g:C,<=,le-,g:C,<,lt-,g:C,>,gt-,g:C,\*,ANY,g:C,[|:/=],-,g}: ${_WRKDIR_COOKIE}
	@unset _DEPENDS_TARGET _MASTER WRKDIR|| true; \
	echo '${_i}'| while ${_read_spec}; do \
		${_parse_spec}; \
		_ignore_cookie=${@:S/.dep/.ignored/}; \
		toset="$$toset _IGNORE_COOKIE=$${_ignore_cookie}"; \
		case "X$$target" in X) target=${_DEPENDS_TARGET};; esac; \
		case "X$$target" in \
		Xinstall|Xreinstall) wantsub=false; check_installed=true; try_install=true;; \
		Xpackage|Xfake) wantsub=false; check_installed=true; try_install=false;; \
		Xpatch|Xconfigure|Xbuild) \
			wantsub=true; check_installed=false; try_install=false; \
			mkdir -p ${WRKDIR}/$$dir; \
			toset="$$toset _MASTER='[${FULLPKGNAME${SUBPACKAGE}}]${_MASTER}' WRKDIR=${WRKDIR}/$$dir";; \
		*) \
			${ECHO_MSG} "===> Error: can't depend on $$target"; \
			${REPORT_PROBLEM}; \
			exit 1;; \
		esac; \
		${_complete_pkgspec}; \
		toset="$$toset _DEPENDENCY_STACK='${_DEPENDENCY_STACK} ${PKGPATH}'"; \
		h="===> ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} depends on: $$pkg -"; \
		for second_pass in false true; do \
			if $$check_installed; then \
				case ${PREPARE_CHECK_ONLY:L} in \
				yes) \
						second_pass=true;; \
				esac; \
				$$try_install && ${_force_update_fragment}; \
				if $$(${PKG_INFO} -e "$$pkg" -r "$$pkg" $$default >$@t); then \
					sed -ne '/^inst:/s///p' <$@t| \
						{ read v || v=found; \
							echo "$$v" >$@; \
							${ECHO_MSG} "$$h> $$v"; } ;\
					rm $@t; \
					break; \
				else \
					r=$$?; \
					rm $@t; \
					case $$r in \
					1|3) \
							${ECHO_MSG} "$$h not found";; \
					esac; \
					case $$r in \
					2|3) \
							${ECHO_MSG} "$$h default $$default does not match"; \
							${REPORT_PROBLEM}; \
							exit 1;; \
					esac; \
				fi; \
			else \
				if ! ${PKG_INFO} -q -r "$$pkg" $$default; \
				then \
					${ECHO_MSG} "$$h default $$default does not match"; \
					${REPORT_PROBLEM}; \
					exit 1; \
				fi; \
			fi; \
			if $$second_pass; then \
				${ECHO_MSG} "Dependency check failed"; \
				${REPORT_PROBLEM}; \
				exit 1; \
			fi; \
			${ECHO_MSG} "===>  Verifying $$target for $$pkg in $$dir"; \
			if (eval $$toset exec ${MAKE} $$target) && \
				! test -e $${_ignore_cookie}; then \
				if $$wantsub; then \
					eval $$toset ${MAKE} show-prepare-results >$@; \
				fi; \
				${ECHO_MSG} "===> Returning to build of ${FULLPKGNAME${SUBPACKAGE}}${_MASTER}"; \
			else \
				${REPORT_PROBLEM}; \
				exit 1; \
			fi; \
			$$try_install || break; \
		done; \
	done
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin
	@${_MAKE_COOKIE} $@
.  endif
.endfor

${WRKDIR}/.libm-check:
	@nm /usr/lib/libm.a >${WRKDIR}/.libm-list
.for f in ${LIBM_CHECK}
	@${ECHO_MSG} "===> checking for $f in libm"
	@fgrep -wq $f ${WRKDIR}/.libm-list
.endfor
	@touch $@

show-prepare-results: prepare
	@sort -u ${_DEPBUILD_COOKIES} ${_DEPBUILDLIB_COOKIES} /dev/null

show-prepare-test-results: prepare test-depends
	@sort -u ${_DEPBUILD_COOKIES} ${_DEPBUILDLIB_COOKIES} ${_DEPTEST_COOKIES} /dev/null

_internal-build-depends: ${_DEPBUILD_COOKIES}
_internal-run-depends: ${_DEPRUN_COOKIES}
_internal-lib-depends: ${_DEPBUILDLIB_COOKIES}
_internal-test-depends: ${_DEPTEST_COOKIES}
_internal-buildlib-depends: ${_DEPBUILDLIB_COOKIES}
_internal-runlib-depends: ${_DEPRUNLIB_COOKIES}

# very quick rule, create this to force reevaluation of next rule when
# the dependencies in the Makefile are changed
.  if !empty(_DEPLIBSPECS_COOKIES)
${_DEPLIBSPECS_COOKIES}: ${_WRKDIR_COOKIE}
	@${_MAKE_COOKIE} $@
.endif

# similar rules for _DEPBUILDWANTLIB_COOKIE and _DEPRUNWANTLIB_COOKIE
.for _m in BUILD RUN
.  if !empty(_DEP${_m}WANTLIB_COOKIE)
${_DEP${_m}WANTLIB_COOKIE}: ${_DEP${_m}LIBSPECS_COOKIES} \
	${_DEP${_m}LIB_COOKIES} ${_DEPBUILD_COOKIES} ${_WRKDIR_COOKIE}
.    if !empty(_DEP${_m}LIBS)
	@${ECHO_MSG} "===>  Verifying specs: ${_DEP${_m}LIBS}"
	@${_cache_fragment}; if found=`{ \
		for i in ${_LIB4:QL}; do echo "$$i"; done | \
			while ${_read_spec}; do \
				${_parse_spec}; \
				${_libs2cache}; \
				cat $$cached_libs; \
			done; \
		for i in ${LOCALBASE}/lib${_lib}; do echo $$i; done;  \
		${_list_system_libs}; \
		for d in ${_DEP${_m}LIBS:QL}; do \
			case "$$d" in \
			/*) echo $${d%/*}${_lib};; \
			*/*) echo ${LOCALBASE}/$${d%/*}${_lib};; \
			esac; \
		done; } | ${_resolve_lib} ${_DEP${_m}LIBS:QL}`; \
	then \
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
# What FETCH-ALL normally does:
.  if !empty(MAKESUMFILES)
	@${_MAKE} ${MAKESUMFILES:S@^@${DISTDIR}/@}
.    endif
# End of FETCH

.if (!empty(IGNORE${SUBPACKAGE}) || defined(_EXTRA_IGNORE)) && !defined(NO_IGNORE)
_internal-all _internal-build _internal-checksum _internal-configure \
	_internal-deinstall _internal-extract _internal-fake _internal-fetch \
	_internal-install _internal-install-all _internal-manpages-check \
	_internal-package _internal-patch _internal-plist _internal-test \
	_internal-subpackage _internal-subupdate _internal-uninstall \
	_internal-update _internal-update-or-install \
	_internal-update-or-install-all _internal-update-plist \
	lib-depends-check port-lib-depends-check update-patches:
.  if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${IGNORE${SUBPACKAGE}} ${_EXTRA_IGNORE}."
.  endif
.  if defined(_IGNORE_COOKIE)
	@echo "${IGNORE${SUBPACKAGE}} ${_EXTRA_IGNORE}" >${_IGNORE_COOKIE}
.  endif
.else

lib-depends-check:
	@${_cache_fragment}; cd ${.CURDIR} && ${MAKE} package; \
	${_CHECK_LIB_DEPENDS} ${_PACKAGE_COOKIE}

${WRKINST}/.saved_libs: ${_FAKE_COOKIE}
	@${_FAKESUDO} ${_CHECK_LIB_DEPENDS} -O $@t && ${_FAKESUDO} mv $@t $@

port-lib-depends-check: ${WRKINST}/.saved_libs
	@-${_cache_fragment}; for s in ${MULTI_PACKAGES}; do \
		SUBPACKAGE=$$s ${MAKE} print-plist-with-depends \
		lib_depends_args=all-lib-depends-args \
		wantlib_args=fake-wantlib-args| \
			${_CHECK_LIB_DEPENDS} -i -s ${WRKINST}/.saved_libs; \
	done

_internal-manpages-check: ${_FAKE_COOKIE}
	@cd ${WRKINST}${TRUEPREFIX}/man && \
		${_FAKESUDO} /usr/libexec/makewhatis -p . && \
		cat mandoc.db

# Most standard port targets create a cookie to avoid being re-run.
#
# fetch is an exception, as it uses the files it fetches as `cookies',
# and it's run by checksum, so in essence it's a sub-goal of extract,
# in normal use.
#
# Besides, fetch can't create cookies, as it does not have WRKDIR available
# in the first place.
#

_internal-fetch:
# See ports/infrastructure/templates/Makefile.template
	@${ECHO_MSG} "===>  Checking files for ${FULLPKGNAME}${_MASTER}"
# What FETCH normally does:
.  if !empty(CHECKSUMFILES)
	@${_MAKE} ${CHECKSUMFILES:S@^@${DISTDIR}/@}
.  endif
# End of FETCH


_internal-checksum: _internal-fetch
	@${_warn_checksum}
	@fgrep 2>/dev/null SIZE ${CHECKSUM_FILE} | \
	sed -e '/SIZE (\(.*\)).*/s//\1/'|\
	while read i; do \
		for j in ${MAKESUMFILES}; do \
			missing=true; \
			if test $$i = $$j; then \
				missing=false; \
				break; \
			fi; \
		done; \
		if $$missing; then \
			bad=true; \
			echo 1>&2 "!!! Extra file '$$i' in ${CHECKSUM_FILE}"; \
			echo 1>&2 "!!! Read up on SUPDISTFILES in bsd.port.mk(5)"; \
			exit 1; \
		fi; \
	done
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
			set -- $$(grep -i "^$$cipher ($$file)" ${CHECKSUM_FILE}) \
			  && break || \
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
		  	cd ${.CURDIR} && PKGPATH=${PKGPATH} ${MAKE} _refetch _PROBLEMS="$$list"; \
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
	@${_MAKE} ${DISTDIR}/${file} \
		MASTER_SITE_OVERRIDE="${MASTER_SITE_OPENBSD:=by_cipher/${cipher}/${value:C/(..).*/\1/}/${value}/} ${MASTER_SITE_OPENBSD:=${cipher}/${value}/}"
.  endfor
	${_MAKE} _internal-checksum REFETCH=false


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
_internal-update-or-install: ${_FUPDATE_COOKIE${SUBPACKAGE}}
_internal-update-or-install-all: ${_FUPDATE_COOKIES}

regress: test

.  if !empty(_IGNORE_TEST)
_internal-test:
.    if !defined(IGNORE_SILENT)
	@${ECHO_MSG} "===>  ${FULLPKGNAME${SUBPACKAGE}}${_MASTER} ${_IGNORE_TEST}."
.    endif
.  else
_internal-test: ${_BUILD_COOKIE} ${_DEPTEST_COOKIES} ${_TEST_COOKIE}
.  endif

# packing list utilities.  This generates a packing list from a recently
# installed port.  Not perfect, but pretty close.  The generated file
# will have to have some tweaks done by hand.
# Note: add @comment PACKAGE(arch=${MACHINE_ARCH}, opsys=OpenBSD, vers=${OSREV})
# when port is installed or package created.
#
.  if ${SHARED_ONLY:L} == "yes"
_do_libs_too =
.  else
_do_libs_too = NO_SHARED_LIBS=Yes
.  endif

_extra_info =
.  for _s in ${MULTI_PACKAGES}
_extra_info += PLIST${_s}='${PLIST${_s}}'
_extra_info += DEPPATHS${_s}="$$(${SETENV} FLAVOR=${FLAVOR:Q} SUBPACKAGE=${_s} PKGPATH=${PKGPATH} ${MAKE} show-run-depends ${_do_libs_too})"
.  endfor

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
	OWNER=$$(id -u) \
	GROUP=$$(id -g) \
	${_FAKESUDO} ${_PERLSCRIPT}/make-plist \
	${_extra_info} ${_tmpvars}

update-patches:
	@toedit=`WRKDIST=${WRKDIST} PATCHDIR=${PATCHDIR} \
		PATCH_LIST='${PATCH_LIST}' DIFF_ARGS='${DIFF_ARGS}' \
		DISTORIG=${DISTORIG} PATCHORIG=${PATCHORIG} \
		${_SHSCRIPT}/update-patches`; \
	case $$toedit in "");; \
	*) read i?'edit patches: '; \
	cd ${PATCHDIR} && $${VISUAL:-$${EDITOR:-/usr/bin/vi}} $$toedit;; esac



.endif # IGNORECMD


# Top-level targets redirect to the real _internal-target, along with locking
# if locking exists.

.for _t in extract patch distpatch configure build all install fake \
	subupdate fetch fetch-all checksum test prepare \
	depends lib-depends build-depends run-depends test-depends \
	clean manpages-check plist update-plist \
	update update-or-install update-or-install-all package install-all
.  if defined(_LOCK)
${_t}:
	@${_DO_LOCK}; cd ${.CURDIR} && PKGPATH=${PKGPATH} ${MAKE} _internal-${_t}
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
	@${_DO_LOCK}; (${_cache_fragment}; cd ${.CURDIR} && ${MAKE} _internal-subpackage)

_internal-package:
	@${_cache_fragment}; cd ${.CURDIR} && ${MAKE} _internal-package-only
# XXX loop needed for M to work
.for p in ${PKGPATH}
.  if ${BULK_$p:L} == "yes"
	@${_MAKE} ${_BULK_COOKIE}
.  elif ${BULK_$p:L} == "auto"
.    if !empty(_DEPENDENCY_STACK)
.      if !${_DEPENDENCY_STACK:M$p}
	@${_MAKE} ${_BULK_COOKIE}
.      endif
.    endif
.  endif
.endfor


${_BULK_COOKIE}:
	@${_cache_fragment}; cd ${.CURDIR} && ${MAKE} _internal-package-only
	@mkdir -p ${BULK_COOKIES_DIR}
.for _i in ${BULK_TARGETS_${PKGPATH}}
	@${ECHO_MSG} "===> Running ${_i}"
	@${_MAKE} ${_i} ${BULK_FLAGS}
.endfor
.if !empty(BULK_DO_${PKGPATH})
	@${BULK_DO_${PKGPATH}}
.endif
	@${_SUDOMAKE} _internal-clean
	@${_MAKE_COOKIE} $@

# The real targets. Note that some parts always get run, some parts can be
# disabled, and there are hooks to override behavior.

${_WRKDIR_COOKIE}:
	@rm -rf ${WRKDIR}
.if ${PORTS_BUILD_XENOCARA_TOO:L} != "yes"
	@appdefaults=${LOCALBASE}/lib/X11/app-defaults; \
	if ! test -d $$appdefaults -a -h $$appdefaults; then \
		echo 1>&2 "Fatal: $$appdefaults should exist and be a symlink"; \
		exit 1; \
	fi
.endif
	@if [ x`SUDO_PORT_V1=ah ${SUDO} /bin/sh -c 'eval echo $${SUDO_PORT_V1}'` \
		!= xah ]; then \
			echo >&2 "Error: sudo does not let env variables through"; \
			exit 1; \
	fi
	@mkdir -p ${WRKDIR} ${WRKDIR}/bin ${DEPDIR}
#	@ln -s ${LOCALBASE}/bin/pkg-config ${WRKDIR}/bin
.if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no"
	@${ECHO_MSG} "===>  Enabling ccache for ${FULLPKGNAME}${_MASTER}"
	@ln -sf ${LOCALBASE}/bin/ccache ${WRKDIR}/bin/gcc
	@ln -sf ${LOCALBASE}/bin/ccache ${WRKDIR}/bin/g++
	@ln -sf ${LOCALBASE}/bin/ccache ${WRKDIR}/bin/cc
	@ln -sf ${LOCALBASE}/bin/ccache ${WRKDIR}/bin/c++
.endif
.if ${FAKE_AS_ROOT:L} == "yes"
	@ln -sf /usr/bin/install ${WRKDIR}/bin/install
.else
	@install -m ${BINMODE} ${_INSTALL_WRAPPER} ${WRKDIR}/bin/install
.endif
.if !empty(WRKDIR_LINKNAME)
	@ln -sf ${WRKDIR} ${.CURDIR}/${WRKDIR_LINKNAME}
.endif
	@${_MAKE_COOKIE} $@

${_EXTRACT_COOKIE}: ${_WRKDIR_COOKIE} ${_SYSTRACE_COOKIE}
	@${_MAKE} _internal-checksum _internal-prepare
	@${ECHO_MSG} "===>  Extracting for ${FULLPKGNAME}${_MASTER}"
.if target(pre-extract)
	@${_MAKESYS} pre-extract
.endif
	@${_MAKESYS} do-extract
.if target(post-extract)
	@${_MAKESYS} post-extract
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
	@${_MAKESYS} pre-patch
.  if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.  endif
.endif



# The real distpatch

${_DISTPATCH_COOKIE}: ${_EXTRACT_COOKIE}
.if target(pre-patch)
	@${_MAKE} ${_PREPATCH_COOKIE}
.endif
	@${_MAKESYS} do-distpatch
.if target(post-distpatch)
	@${_MAKESYS} post-distpatch
.endif
.if ${PATCH_CHECK_ONLY:L} != "yes"
	@${_MAKE_COOKIE} $@
.endif

.if !target(do-distpatch)
do-distpatch:
# What DISTPATCH normally does
.  if defined(_LIST_PATCHFILES)
	@${ECHO_MSG} "===>  Applying distribution patches for ${FULLPKGNAME}${_MASTER}"
	@cd ${FULLDISTDIR}; \
	  for patchfile in ${_LIST_PATCHFILES}; do \
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
	@${_MAKE} ${_PREPATCH_COOKIE}
.endif
.if target(do-patch)
	@${_MAKESYS} do-patch
.else
# What PATCH normally does:
# XXX test for efficiency, don't bother with distpatch if it's not needed
.  if target(do-distpatch) || target(post-distpatch) || defined(PATCHFILES)
	@${_MAKE} _internal-distpatch
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
							*) ${ECHO_MSG} "===>   Applying OpenBSD patch $$i" ;; \
						esac; \
						if [ -s $$i ]; then \
							${_SYSTRACE_CMD} ${PATCH} ${PATCH_ARGS} < $$i || \
								{ echo "***>   $$i did not apply cleanly"; \
								error=true; }; \
						else \
							${ECHO_MSG} "===>   Ignoring empty patchfile $$i"; \
						fi; \
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
	@${_MAKESYS} post-patch
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
.if defined(_CONFIG_SITE)
	@cd ${PORTSDIR}/infrastructure/db && cat ${CONFIG_SITE_LIST} >${_CONFIG_SITE}
	@echo "Using ${_CONFIG_SITE} (generated)"
.endif
	@mkdir -p ${WRKBUILD}
.if target(pre-configure)
	@${_MAKESYS} pre-configure
.endif
.for _m in ${MODULES:T:U}
.  if defined(MOD${_m}_pre-configure)
	@${MOD${_m}_pre-configure}
.  endif
.endfor
.if target(do-configure)
	@${_MAKESYS} do-configure
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
	@${_MAKESYS} post-configure
.endif
	@${_MAKE_COOKIE} $@

# The real build

${_BUILD_COOKIE}: ${_CONFIGURE_COOKIE}
.if ${NO_BUILD:L} == "no"
	@${ECHO_MSG} "===>  Building for ${FULLPKGNAME}${_MASTER}"
.  if target(pre-build)
	@${_MAKESYS} pre-build
.  endif
.  if target(do-build)
	@${_MAKESYS} do-build
.  else
# What BUILD normally does:
	@cd ${WRKBUILD} && exec ${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
# End of BUILD
.  endif
.  if target(post-build)
	@${_MAKESYS} post-build
.  endif
.endif
	@${_MAKE_COOKIE} $@

${_TEST_COOKIE}: ${_BUILD_COOKIE}
.if ${NO_TEST:L} == "no"
	@${ECHO_MSG} "===>  Regression tests for ${FULLPKGNAME}${_MASTER}"
# When interactive tests need X11
.  if ${TEST_IS_INTERACTIVE:L} == "x11"
.    if !defined(DISPLAY) || !exists(${XAUTHORITY})
	@echo 1>&2 "The regression tests require a running instance of X."
	@echo 1>&2 "You will also need to set the environment variable DISPLAY"
	@echo 1>&2 "to point to an active X11 display and XAUTHORITY to point"
	@echo 1>&2 "to the appropriate .Xauthority file."
	@exit 1
.    endif
.  endif
.  if target(pre-test)
	@${_MAKE} pre-test
.  endif
.  if target(do-test)
	@cd ${.CURDIR} && exec 3>&1 && exit `exec 4>&1 1>&3; \
		(exec; set +e; PKGPATH=${PKGPATH} ${MAKE} do-test; \
		echo $$? >&4) 2>&1 ${TEST_LOG}`
.  else
# What TEST normally does:
	@cd ${WRKBUILD} && exec 3>&1 && exit `exec 4>&1 1>&3; \
		(exec; set +e; ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}; \
		echo $$? >&4) 2>&1 ${TEST_LOG}`
# End of TEST
.  endif
.  if target(post-test)
	@${_MAKE} post-test
.  endif
.else
	@echo 1>&2 "No regression tests for ${FULLPKGNAME}"
.endif
	@${_MAKE_COOKIE} $@

# XXX we don't care about the order
.for _m in ${MODULES:T:U}
.  if defined(MOD${_m}_post-install)
_hook-post-install::
	@${MOD${_m}_post-install}
.  endif
.endfor

${_FAKE_COOKIE}: ${_BUILD_COOKIE}
	@${ECHO_MSG} "===>  Faking installation for ${FULLPKGNAME}${_MASTER}"
	@if [ x`${_FAKESUDO} /bin/sh -c umask` != x022 ]; then \
		echo >&2 "Error: your umask is \"`${_FAKESUDO} /bin/sh -c umask`"\".; \
		exit 1; \
	fi
.if ${FAKE_AS_ROOT:L} == "yes"
	@${_FAKESUDO} install -d -m 755 ${_BINOWNGRP} ${WRKINST}
.else
	install -d -m 755 ${WRKINST}
.endif
	@cat ${MTREE_FILE}| \
		${_FAKESUDO} /usr/sbin/mtree -U -e -d -p ${WRKINST} >/dev/null
.if ${FAKE_AS_ROOT:L} == "no"
	@ln -sf /bin/echo ${WRKDIR}/bin/chown
	@ln -sf /bin/echo ${WRKDIR}/bin/chgrp
	@install -m ${BINMODE} ${_INSTALL_WRAPPER} ${WRKDIR}/bin/install
.endif
.for _m in ${MODULES:T:U}
.  if defined(MOD${_m}_pre-fake)
	@${MOD${_m}_pre-fake}
.  endif
.endfor
.if target(pre-fake)
	@${_SUDOMAKESYS} pre-fake ${FAKE_SETUP}
.endif
	@${_FAKESUDO} ${_MAKE_COOKIE} ${_INSTALL_PRE_COOKIE}
.if target(pre-install)
	@${_SUDOMAKESYS} pre-install ${FAKE_SETUP}
.endif
.if target(do-install)
	@${_SUDOMAKESYS} do-install ${FAKE_SETUP}
.else
# What FAKE normally does:
	@cd ${WRKBUILD} && exec ${_FAKESUDO} ${_SYSTRACE_CMD} \
		${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
# End of FAKE.
.endif
.if target(post-install)
	@${_SUDOMAKESYS} post-install ${FAKE_SETUP}
.endif
.if target(_hook-post-install)
	@${_SUDOMAKESYS} _hook-post-install ${FAKE_SETUP}
.endif
.if ${MULTI_PACKAGES} == "-"
	@if test -e ${PKGDIR}/README; then \
		r=${WRKINST}${_README_DIR}/${FULLPKGNAME}; \
		echo "Installing ${PKGDIR}/README as $$r"; \
		${_FAKESUDO} ${SUBST_CMD} ${_SHAREOWNGRP} -c ${PKGDIR}/README $$r; \
	fi
.else
.  for _s in ${MULTI_PACKAGES}
	@if test -e ${PKGDIR}/README${_s}; then \
		r=${WRKINST}${_README_DIR}/${FULLPKGNAME${_s}}; \
		echo "Installing ${PKGDIR}/README${_s} as $$r"; \
		${_FAKESUDO} ${SUBST_CMD${_s}} ${_SHAREOWNGRP} -c ${PKGDIR}/README${_s} $$r; \
	fi
.  endfor
.endif
	@mkdir -p ${PKGDIR}
	@cd ${PKGDIR} && for i in *.rc; do \
		if test X"$$i" != "X*.rc"; then \
			r=${WRKINST}${RCDIR}/$${i%.rc}; \
			echo "Installing ${PKGDIR}/$$i as $$r"; \
			${_FAKESUDO} ${SUBST_CMD} ${_BINOWNGRP} -c $$i $$r; \
			${_FAKESUDO} chmod ${BINMODE} $$r; \
		fi; \
	done

	@${_FAKESUDO} ${_MAKE_COOKIE} $@

print-plist:
	@${_PKG_CREATE} -n -q ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}

print-plist-with-depends:
	@if a=`SUBPACKAGE=${SUBPACKAGE} PKGPATH=${PKGPATH} ${MAKE} print-package-args`; \
	then \
		${_PKG_CREATE} -n -q $$a ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}; \
	else \
		exit 1; \
	fi

print-plist-libs-with-depends:
	@if a=`SUBPACKAGE=${SUBPACKAGE} PKGPATH=${PKGPATH} ${MAKE} print-package-args`; \
	then \
		${_PKG_CREATE} -DLIBS_ONLY -n -q $$a ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}; \
	else \
		exit 1; \
	fi

print-plist-all:
.for _S in ${MULTI_PACKAGES}
		@${ECHO_MSG} "===> ${FULLPKGNAME${_S}}"
.  if ${STATIC_PLIST${_s}:L} == "yes"
		@${_PKG_CREATE} -n -q ${PKG_ARGS${_S}} ${_PACKAGE_COOKIE${_S}}
.  else
		@echo "@pkgname ${FULLPKGNAME${_S}}"
.  endif
.endfor

print-plist-all-with-depends:
.for _S in ${MULTI_PACKAGES}
	@${ECHO_MSG} "===> ${FULLPKGNAME${_S}}"
	@if a=`SUBPACKAGE=${_S} PKGPATH=${PKGPATH} ${MAKE} print-package-args`; \
	then \
		${_PKG_CREATE} -n -q $$a ${PKG_ARGS${_S}} ${_PACKAGE_COOKIE${_S}}; \
	else \
		exit 1; \
	fi
.endfor

print-plist-contents:
	@${_PKG_CREATE} -n -Q ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}

print-plist-libs:
	@${_PKG_CREATE} -DLIBS_ONLY -n -Q ${PKG_ARGS${SUBPACKAGE}} ${_PACKAGE_COOKIE${SUBPACKAGE}}|${_grab_libs_from_plist}

_internal-package-only: ${_PACKAGE_COOKIES}

_internal-subpackage: ${_PACKAGE_COOKIES${SUBPACKAGE}}

# Separate target for each file fetch-all will retrieve

.for p f m u in ${_FULL_DISTFILES} ${_FULL_PATCHFILES} ${_FULL_SUPDISTFILES}
${DISTDIR}/$p:
.  if ${FETCH_MANUALLY:L} != "no"
.    if !empty(MISSING_FILES)
	@echo "*** You're missing files: ${MISSING_FILES}"
.    endif
.    for _M in ${FETCH_MANUALLY}
	@echo "*** ${_M}"
.    endfor
	@exit 1
.  else
	@lock=${@:T}.dist; ${_SIMPLE_LOCK}; mkdir -p ${@:H}; \
	cd ${@:H}; \
	test -f ${@:T} && exit 0; \
	f=$f; \
	${_CDROM_OVERRIDE}; \
	for site in ${$m}; do \
		file=$@.part; \
		${ECHO_MSG} ">> Fetch $${site}$u"; \
		if ${FETCH_CMD} -o $$file $${site}$u; then \
				ck=`${_size_fragment} $$file $p`; \
				if [ ! -f ${CHECKSUM_FILE} ]; then \
					${ECHO_MSG} ">> Checksum file does not exist"; \
					mv $$file $@; \
					exit 0; \
				elif grep -q "^$$ck\$$" ${CHECKSUM_FILE}; then \
					mv $$file $@; \
					exit 0; \
				else \
					if grep -q "SIZE ($p)" ${CHECKSUM_FILE}; then \
						${ECHO_MSG} ">> Size does not match for $p"; \
						rm -f $$file; \
					else \
						${ECHO_MSG} ">> No size recorded for $p"; \
						mv $$file $@; \
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
.if ${_clean:Mdepends} && ${_CLEANDEPENDS:L} == "yes"
	@PKGPATH=${PKGPATH} ${MAKE} all-dir-depends|${_sort_dependencies}|while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _CLEANDEPENDS=No clean; \
	done
.endif
	@${ECHO_MSG} "===>  Cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
.if ${_clean:Mfake}
	@if cd ${WRKINST} 2>/dev/null; then ${_FAKESUDO} rm -rf ${WRKINST}; fi
.endif
.if ${_clean:Mwork} || (${_clean:Mbuild} && ${SEPARATE_BUILD:L} == "no")
.  if ${_clean:Mflavors}
	@for i in ${.CURDIR}/w-*; do \
		if [ -L $$i ]; then ${SUDO} rm -rf `readlink $$i`; fi; \
		${SUDO} rm -rf $$i; \
	done
.  endif
.  for l in ${_WRKDIRS}
.    if "$l" != ""
	@if [ -L $l ]; then rm -rf `readlink $l`; fi
	@if [ -e $l ]; then rm -rf $l; fi
.    endif
.  endfor
.  if !empty(WRKDIR_LINKNAME)
	@if [ -L ${WRKDIR_LINKNAME} ]; then rm -f ${.CURDIR}/${WRKDIR_LINKNAME}; fi
.  endif
.elif ${_clean:Mbuild} && ${SEPARATE_BUILD:L} != "no"
	@rm -rf ${WRKBUILD} ${_CONFIGURE_COOKIE} ${_BUILD_COOKIE}
.endif
.if ${_clean:Mdist}
	@${ECHO_MSG} "===>  Dist cleaning for ${FULLPKGNAME${SUBPACKAGE}}"
	@if cd ${DISTDIR} 2>/dev/null; then \
		rm -f ${MAKESUMFILES}; \
	fi
.  if !empty(DIST_SUBDIR)
	-@rmdir ${FULLDISTDIR}
.  endif
.endif
.if ${_clean:Minstall}
.  if ${_clean:Msub}
	-${SUDO} ${_PKG_DELETE} ${PKGNAMES}
.  else
	-${SUDO} ${_PKG_DELETE} ${FULLPKGNAME${SUBPACKAGE}}
.  endif
.endif
.if ${_clean:Mpackages} || ${_clean:Mpackage} && ${_clean:Msub}
	rm -f ${_PACKAGE_COOKIES} ${_UPDATE_COOKIES}
.elif ${_clean:Mpackage}
	rm -f ${_PACKAGE_COOKIES${SUBPACKAGE}} ${_UPDATE_COOKIE${SUBPACKAGE}}
.endif
.if ${_clean:Mbulk}
	rm -f ${_BULK_COOKIE}
.endif
.if ${_clean:Mplist}
.  for _d in ${PLIST_DB:S/:/ /}
.    for _p in ${PKGNAMES}
	rm -f ${_d}/${_p}
.    endfor
.  endfor
.endif

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
		echo -n `PORTSDIR_PATH=${PORTSDIR_PATH} ${_PERLSCRIPT}/getpkgpath ${DESCR${_S}}`'|';  \
	else \
		echo -n "/dev/null|"; \
	fi; \
	echo -n "${MAINTAINER}|${CATEGORIES${_S}}|"
.  for _d in LIB BUILD RUN
	@echo -n '${_${_d}_DEP3${_S}:C/ +/ /g}'| tr '\040' '\012'|sort -u|tr '\012' '\040' | sed -e 's, $$,,'
	@echo -n '|'
.  endfor
.  if defined(ONLY_FOR_ARCHS${_S})
	@echo -n "${ONLY_FOR_ARCHS${_S}}|"
.  elif defined(NOT_FOR_ARCHS${_S})
	@echo -n "!${NOT_FOR_ARCHS${_S}}|"
.  else
	@echo -n "any|"
.  endif
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
.    if ${PERMIT_DISTFILES_FTP:L} == "yes"
	@echo "y"
.    else
	@echo "n"
.    endif
.  endif
.endfor

print-build-depends:
.if !empty(_BUILD_DEP)
	@echo -n 'This port requires package(s) "'
	@PKGPATH=${PKGPATH} ${MAKE} full-build-depends| ${_lines2list}
	@echo '" to build.'
.endif

print-run-depends:
.if !empty(_RUN_DEP)
	@echo -n 'This port requires package(s) "'
	@PKGPATH=${PKGPATH} ${MAKE} full-run-depends| ${_lines2list}
	@echo '" to run.'
.endif

# full-build-depends, full-all-depends, full-run-depends full-test-depends
.for _i in build all run test
full-${_i}-depends:
	@PKGPATH=${PKGPATH} ${MAKE} ${_i}-dir-depends|${_sort_dependencies}|while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _print-packagename ; \
	done
.endfor

license-check:
.for _S in ${MULTI_PACKAGES}
.  if ${PERMIT_PACKAGE_CDROM${_S}:L} == "yes" || \
	${PERMIT_PACKAGE_FTP${_S}:L} == "yes"
	@SUBPACKAGE=${_S} PKGPATH=${PKGPATH} ${MAKE} all-dir-depends|${_sort_dependencies}|while read subdir; do \
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

# run-depends-list, build-depends-list, lib-depends-list, test-depends-list
.for _i in RUN BUILD LIB TEST
${_i:L}-depends-list:
.  if !empty(_${_i}_DEP3)
	@echo -n "This port requires \""
	@echo -n '${_${_i}_DEP3:C/ +/ /g}'| tr '\040' '\012'|sort -u|tr '\012' '\040' | sed -e 's, $$,,'
	@echo "\" for ${_i:L}."
.  endif
.endfor

# recursive depend targets

print-package-signature print-update-signature:
	@echo -n ${FULLPKGNAME${SUBPACKAGE}}
.if !empty(_DEPRUNLIBS)
	@${_cache_fragment}; cd ${.CURDIR} && ${MAKE} _print-package-signature-lib _print-package-signature-run| \
		sort -u| \
		while read i; do echo -n ",$$i"; done
.else
	@cd ${.CURDIR} && PKGPATH=${PKGPATH} ${MAKE} _print-package-signature-run | \
		sort -u| \
		while read i; do echo -n ",$$i"; done
.endif
	@echo


print-package-args: run-depends-args

.if ${NO_SHARED_LIBS:L} != "yes"
print-package-args: ${lib_depends_args} ${wantlib_args}
.endif

run-depends-args:
	@${_emit_run_depends} | while ${_read_spec}; do \
		${_parse_spec}; \
		${_complete_pkgspec}; \
		echo "-P $$pkgpath:$$pkg:$$default"; \
	done

# waive checks for WANTLIB when we're running lib-depends-check
# since we're trying to figure out what's actually needed
all-lib-depends-args:
	@${_emit_lib_depends} |while ${_read_spec}; do \
		${_parse_spec}; \
		${_complete_pkgspec}; \
		echo "-P $$pkgpath:$$pkg:$$default"; \
	done

# - remove lib-depends-args if we're only scanning for common dirs in
# update-plist and we're not shared only
# - zap wantlib-args when we're only solving for @depends in pkg_create(1).
no-lib-depends-args no-wantlib-args:
	@:

# those are expensive computations, so don't do them if we don't have to
.if empty(_DEPRUNLIBS)
lib-depends-args wantlib-args port-wantlib-args fake-wantlib-args:
.else

lib-depends-args:
	@${_cache_fragment}; ${_emit_lib_depends}| while ${_read_spec}; do \
		${_if_check_needed}; then \
			${_complete_pkgspec}; \
			echo "-P $$pkgpath:$$pkg:$$default"; \
		else \
			${_warn_if_shared}; \
		fi; \
	done

wantlib-args:
	@${_cache_fragment}; \
	a=$${_DEPENDS_CACHE}/portstree-${FULLPKGNAME${SUBPACKAGE}}; \
	b=$${_DEPENDS_CACHE}/inst-${FULLPKGNAME${SUBPACKAGE}}; \
	if cd ${.CURDIR} && \
	${MAKE} port-wantlib-args >$$a && \
	${MAKE} fake-wantlib-args >$$b; then \
		if ! cmp -s $$a $$b; \
		then \
			echo 1>&2 "${_check_msg}: Libraries in packing-lists in the ports tree"; \
			echo 1>&2 "       and libraries from installed packages don't match"; \
			diff 1>&2 -u $$a $$b ${_check_error}; \
		fi; \
		cat $$b; \
		rm $$a $$b; \
	else \
		exit 1; \
	fi

port-wantlib-args:
	@${_cache_fragment}; \
	if found=`${_list_port_libs} | ${_resolve_lib} ${_DEPRUNLIBS:QL}`; \
	then \
		${_show_found}; \
	else \
		exit 1; \
	fi

fake-wantlib-args:
	@if found=`{ \
		echo {${WRKINST},}${LOCALBASE}/lib${_lib} /usr/lib${_lib} ${X11BASE}/lib${_lib}; \
		for d in ${_DEPRUNLIBS:QL}; do \
			case "$$d" in \
			/*) echo {${WRKINST},}$${d%/*}${_lib};; \
			*/*) echo {${WRKINST},}${LOCALBASE}/$${d%/*}${_lib};; \
			esac; \
		done } | perl -pe 's,\Q${WRKINST}\E,,g' | \
			${_resolve_lib} ${_DEPRUNLIBS:QL}`; then \
				${_show_found}; \
		else \
			exit 1; \
		fi
.endif

_print-package-signature-run:
	@${_emit_run_depends} |while ${_read_spec}; do \
		${_parse_spec}; \
		${_compute_default}; \
		echo "@$$default"; \
	done

_print-package-signature-lib:
	@${_list_port_libs}| ${_resolve_lib} ${_DEPRUNLIBS:QL}; \
	${_emit_lib_depends}| while ${_read_spec}; do \
		${_if_check_needed}; then \
			${_complete_pkgspec}; \
			echo "@$$default"; \
		fi; \
	done

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
	if ! fgrep -q -e "r|${_FULLPKGPATH}|" -e "a|${_FULLPKGPATH}" $${_DEPENDS_FILE}; then \
		echo "r|${_FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${_FULLPKGPATH} PKGPATH=${PKGPATH} ${MAKE} _recurse-run-dir-depends; \
	fi
.else
	@echo "${_FULLPKGPATH} ${_FULLPKGPATH}"
.endif

# recursively build a list of dirs for package regression tests, ready for tsort
_recurse-test-dir-depends:
.for _dir in ${_TEST_DEP}
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

test-dir-depends:
.if !empty(_TEST_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q -e "R|${_FULLPKGPATH}|" $${_DEPENDS_FILE}; then \
		echo "R|${_FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${_FULLPKGPATH} PKGPATH=${PKGPATH} ${MAKE} _recurse-test-dir-depends; \
	fi
.else
	@echo "${_FULLPKGPATH} ${_FULLPKGPATH}"
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
	if ! fgrep -q -e "b|${_FULLPKGPATH}|" -e "a|${_dir}|" $${_DEPENDS_FILE}; then \
		echo "b|${_FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${_FULLPKGPATH} PKGPATH=${PKGPATH} ${MAKE} _build-dir-depends; \
	fi
.else
	@echo "${_FULLPKGPATH} ${_FULLPKGPATH}"
.endif

all-dir-depends:
.if !empty(_BUILD_DEP) || !empty(_RUN_DEP)
	@${_depfile_fragment}; \
	if ! fgrep -q "|${_FULLPKGPATH}|" $${_DEPENDS_FILE}; then \
		echo "|${_FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
		self=${_FULLPKGPATH} PKGPATH=${PKGPATH} ${MAKE} _recurse-all-dir-depends; \
	fi
.else
	@echo "${_FULLPKGPATH} ${_FULLPKGPATH}"
.endif

# simpler list of package depends, no need to tsort, no duplicates
_recurse-show-run-depends:
	@for d in ${_RUN_DEP}; do \
		fgrep -q -e "|$$d|" $${_DEPENDS_FILE} && continue; \
		echo "$$d"; \
		echo "|$$d|" >> $${_DEPENDS_FILE}; \
		subdir=$$d; ${_flavor_fragment}; \
		if ! eval $$toset ${MAKE} _recurse-show-run-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done

show-run-depends:
.if !empty(_RUN_DEP)
	@${_depfile_fragment}; \
	echo "|${_FULLPKGPATH}|" >>$${_DEPENDS_FILE}; \
	for d in ${_RUN_DEP}; do \
		fgrep -q -e "|$$d|" $${_DEPENDS_FILE} && continue; \
		echo "$$d"; \
		echo "|$$d|" >> $${_DEPENDS_FILE}; \
		subdir=$$d; ${_flavor_fragment}; \
		if ! eval $$toset ${MAKE} _recurse-show-run-depends; then  \
			echo 1>&2 "*** Problem checking deps in \"$$dir\"."; \
			exit 1; \
		fi; \
	done
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
	@${_MAKE} PATCH_CHECK_ONLY=Yes patch

clean-depends:
	@${_MAKE} clean=depends

distclean:
	@${_MAKE} clean=dist

reinstall:
	@${_MAKE} clean='install force'
	@cd ${.CURDIR} && _DEPENDS_TARGET=reinstall PKGPATH=${PKGPATH} exec ${MAKE} install

repackage:
	@${_MAKE} clean=packages
	@${_MAKE} package

rebuild:
	@rm -f ${_BUILD_COOKIE}
	@${_MAKE} build

uninstall deinstall:
	@${ECHO_MSG} "===> Deinstalling for ${FULLPKGNAME${SUBPACKAGE}}"
	@${SUDO} ${_PKG_DELETE} ${FULLPKGNAME${SUBPACKAGE}}

peek-ftp:
	@echo "DISTFILES=${DISTFILES}"
	@mkdir -p ${FULLDISTDIR}; cd ${FULLDISTDIR}; echo "cd ${FULLDISTDIR}"; \
	for i in ${MASTER_SITES:Mftp*}; do \
		echo "Connecting to $$i"; ${FETCH_CMD} $$i ; break; \
	done

show-required-by:
	@cd ${PORTSDIR} && make all-dir-depends | ${_PERLSCRIPT}/extract-dependencies -r ${_ALLPKGPATHS}


show:
.for _s in ${show}
	@echo ${${_s}:Q}
.endfor

show-size:
	@-du -ks ${WRKDIR}

show-fake-size:
	@-du -ks ${WRKINST}

verbose-show:
.for _s in ${verbose-show}
. if defined(${_s})
	@echo ${_s}=${${_s}:Q}
. endif
.endfor

_all_phony = ${_recursive_depends_targets} \
	${_recursive_targets} ${_dangerous_recursive_targets} \
	_build-dir-depends _hook-post-install \
	_internal-all _internal-build _internal-build-depends \
	_internal-buildlib-depends _internal-buildwantlib-depends \
	_internal-checksum _internal-clean _internal-configure _internal-depends \
	_internal-distpatch _internal-extract _internal-fake _internal-fetch \
	_internal-fetch-all \
	_internal-install-all _internal-lib-depends _internal-manpages-check \
	_internal-package _internal-package-only _internal-plist _internal-prepare \
	_internal-test _internal-test-depends _internal-run-depends \
	_internal-runwantlib-depends _internal-subpackage _internal-subupdate \
	_internal-update _internal-update _internal-update-plist \
	_internal_install _internal_runlib-depends _license-check \
	print-package-args _print-package-signature-lib \
	_print-package-signature-run _print-packagename _recurse-all-dir-depends \
	_recurse-test-dir-depends _recurse-run-dir-depends _refetch \
	build-depends build-depends-list checkpatch clean clean-depends \
	delete-package depends distpatch do-build do-configure do-distpatch \
	do-extract do-install do-test fetch-all \
	install-all lib-depends lib-depends-list \
	peek-ftp port-lib-depends-check post-build post-configure \
	post-distpatch post-extract post-install \
	post-patch post-test pre-build pre-configure pre-extract pre-fake \
	pre-install pre-patch pre-test prepare \
	print-build-depends print-run-depends rebuild \
	test-depends test-depends-list run-depends run-depends-list \
    show-required-by subpackage uninstall _print-metadata \
	run-depends-args lib-depends-args all-lib-depends-args wantlib-args \
	port-wantlib-args fake-wantlib-args no-wantlib-args no-lib-depends-args \
	_recurse-show-run-depends show-run-depends

.if defined(_DEBUG_TARGETS)
.  for _t in ${_all_phony}
.    if !target(${_t})
ERRORS += "Fatal: phony target ${_t} does not exist"
.    endif
.  endfor
.endif

.if defined(ERRORS)
.BEGIN:
.  for _m in ${ERRORS}
	@echo 1>&2 ${_m} "(in ${PKGPATH})"
.  endfor
.  if !empty(ERRORS:M"Fatal\:*") || !empty(ERRORS:M'Fatal\:*')
	@exit 1
.  endif
.endif

.PHONY: ${_all_phony}
