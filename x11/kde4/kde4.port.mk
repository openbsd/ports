# $OpenBSD: kde4.port.mk,v 1.24 2014/08/10 10:13:18 espie Exp $

# The version of KDE SC in x11/kde4
_MODKDE4_STABLE =	4.13.3

# List of currently supported KDE SC versions, except "stable"
_MODKDE4_OTHERS =

# Handle kde4* FLAVORs: detect what version is requested, and
# set MODKDE4_VERSION, MODKDE4_DEP_VERSION and MODKDE4_DEP_DIR
# accordingly. There is also a shortcut for the latter.
#
# MODKDE4_FLAVOR is read-only for ports, except KDE SC itself.

.for _v in ${_MODKDE4_OTHERS}
MODKDE4_FLAVORS +=	kde${_v:S/.//g}
.endfor
FLAVORS +=		${MODKDE4_FLAVORS}
MODKDE4_FLAVOR ?=	${FLAVOR:Mkde4*}

.if ${MODKDE4_FLAVOR}
.   for _f in ${MODKDE4_FLAVOR}
.      for _f2 in ${MODKDE4_FLAVOR}
.         if "${_f2}" != "${_f}"
ERRORS += "Fatal: cannot use more than one kde4* FLAVOR\n"
.         endif
.      endfor

.      for _v in ${_MODKDE4_OTHERS}
.         if "kde${_v:S/.//g}" == "${_f}"
MODKDE4_VERSION ?=	${_v}
MODKDE4_DEP_VERSION ?=	${_v:R}
.         endif
.      endfor

.   endfor
MODKDE4_DEP_DIR =	x11/${MODKDE4_FLAVOR}
.else
MODKDE4_DEP_DIR =	x11/kde4
.endif

CATEGORIES +=		${MODKDE4_DEP_DIR}

# Can be set by port to force dependency on particular KDE SC version.
MODKDE4_VERSION ?=	${_MODKDE4_STABLE}
MODKDE4_DEP_VERSION ?=	${MODKDE4_VERSION:R}

# General options set by module
SHARED_ONLY ?=		Yes
ONLY_FOR_ARCHS ?=	${GCC4_ARCHS}
EXTRACT_SUFX ?=		.tar.xz

.if "${NO_BUILD:L}" != "yes"
# CONFIGURE_STYLE needs separate handling because it is set to empty
# string in bsd.port.mk initially.
.   if "${CONFIGURE_STYLE}" == ""
CONFIGURE_STYLE =	cmake
.   endif

.   if ${CONFIGURE_STYLE:Mcmake}
MODULES +=		devel/cmake
SEPARATE_BUILD ?=	flavored
.   endif
.endif

# MODKDE4_RESOURCES: Yes/No
#   If enabled, disable default Qt and KDE LIB_DEPENDS and RUN_DEPENDS,
#   and set PKG_ARCH=*. Also, FLAVORS will not be touched. "libs"
#   dependencies in MODKDE4_USE (see below) will become a BUILD_DEPENDS.

MODKDE4_RESOURCES ?=	No

# MODKDE4_USE: [libs | runtime | workspace] [PIM] [games]
#   - Set to empty for stuff that is a prerequisite for kde base blocks:
#     kdelibs, kde-runtime, kdepimlibs or kdepim-runtime.
#
#   - Set to "libs" for ports that need only libs, without runtime support.
#     All options below imply "libs". If no from "none", "libs" or
#     "runtime" were specified, "libs" is implied. This is the default
#     value when MODKDE4_RESOURCES is enabled.
#
#   - Set to "runtime" for ports which depend on base KDE libraries and
#     runtime components. This is the default setting until
#     MODKDE4_RESOURCES is enabled.
#
#   - Set to "workspace" for ports that require KDE workspace libraries.
#     This automatically implies "runtime".
#
#   - Add "pim" when port depends on KDE PIM framework, i.e. LIB_DEPENDS
#     on kdepimlibs and, if "libs" was not specified, RUN_DEPENDS on
#     kdepim-runtime.
#
#   - Add "games" when port is usual KDE game. It adds LIB_DEPENDS on
#     libkdegames and add kdegames to WANTLIB. Also, Makefile.inc may
#     use this value, e.g., to provide different default HOMEPAGE.
#
# NOTE: There are no options like "Kate" or "Okular", they should be handled
#       with simple LIB_DEPENDS on corresponding packages in addition to
#       options above.
#

.if ${MODKDE4_RESOURCES:L} == "no"
MODKDE4_USE ?=		runtime
MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++
.else
MODKDE4_USE ?=		libs
.endif

_MODKDE4_USE_ALL =	libs runtime workspace pim games
.for _modkde4_u in ${MODKDE4_USE:L}
.   if !${_MODKDE4_USE_ALL:M${_modkde4_u}}
ERRORS += "Fatal: unknown KDE 4 use flag: ${_modkde4_u}"
ERRORS += "Fatal: (not one from ${_MODKDE4_USE_ALL})."
.   endif
.endfor

.if ${MODKDE4_USE:L:Mworkspace}
MODKDE4_USE +=		runtime
.endif
.if !empty(MODKDE4_USE) && ${MODKDE4_USE:L:Mlibs} == "" && ${MODKDE4_USE:L:Mruntime} == ""
MODKDE4_USE +=		runtime
.endif

# Almost all KDE ports use docbook.
MODKDE4_BUILD_DEPENDS =	textproc/docbook \
			textproc/docbook-xsl
MODKDE4_LIB_DEPENDS =
MODKDE4_RUN_DEPENDS =
MODKDE4_WANTLIB =
MODKDE4_CONF_ARGS =

FLAVOR ?=

.if ${MODKDE4_USE:L:Mruntime} || ${MODKDE4_USE:L:Mpim}
MODKDE4_USE +=		libs
.endif

.if empty(MODKDE4_USE)
KDE4_ONLY ?= No
.else
KDE4_ONLY ?= Yes
.endif

.if ${KDE4_ONLY:L} == "yes"
DPB_PROPERTIES +=	tag:kde4
.endif

# Small hack, until automoc4 will be gone
PKGNAME ?= ${DISTNAME}
.if !${PKGNAME:Mautomoc4-*}
MODKDE4_BUILD_DEPENDS +=	devel/automoc
.endif

.if ${MODKDE4_RESOURCES:L} != "no"
PKG_ARCH ?=		*
MODKDE4_NO_QT ?=	Yes	# resources usually don't need Qt
.   if ${MODKDE4_USE:L:Mworkspace}
MODKDE4_BUILD_DEPENDS +=	${MODKDE4_DEP_DIR}/workspace>=4.11,<5
.   endif
.   if ${MODKDE4_USE:L:Mlibs}
MODKDE4_BUILD_DEPENDS +=	${MODKDE4_DEP_DIR}/libs,-main>=${MODKDE4_DEP_VERSION},<5
.   endif
.else
MODKDE4_NO_QT ?=	No
.   if ${MODKDE4_USE:L:Mlibs}
.       if ${MODKDE4_NO_QT:L} == "yes"
ERRORS +=	"Fatal: KDE libraries require Qt."
.       endif

MODKDE4_LIB_DEPENDS +=		${MODKDE4_DEP_DIR}/libs,-main>=${MODKDE4_DEP_VERSION},<5
MODKDE4_WANTLIB +=		${MODKDE4_LIB_DIR}/kdecore>=8
.       if ${MODKDE4_USE:L:Mpim}
MODKDE4_LIB_DEPENDS +=		${MODKDE4_DEP_DIR}/pimlibs>=${MODKDE4_DEP_VERSION},<5
MODKDE4_BUILD_DEPENDS +=	devel/boost
.       endif

.       if ${MODKDE4_USE:L:Mgames}
MODKDE4_LIB_DEPENDS +=		${MODKDE4_DEP_DIR}/libkdegames>=${MODKDE4_DEP_VERSION},<5
MODKDE4_WANTLIB +=		${MODKDE4_LIB_DIR}/kdegames
.       endif

.       if ${MODKDE4_USE:L:Mruntime}
MODKDE4_RUN_DEPENDS +=		${MODKDE4_DEP_DIR}/runtime,-main>=${MODKDE4_DEP_VERSION},<5
.           if ${MODKDE4_USE:L:Mpim}
MODKDE4_RUN_DEPENDS +=		${MODKDE4_DEP_DIR}/pim-runtime>=${MODKDE4_DEP_VERSION},<5
.           endif

.           if ${MODKDE4_USE:L:Mworkspace}
MODKDE4_LIB_DEPENDS +=		${MODKDE4_DEP_DIR}/workspace>=4.11,<5
.           endif
.       endif
.   endif    # ${MODKDE4_USE:L:Mlibs}

# See FindKDE4Internal.cmake from kdelibs package for details.
.if ${CONFIGURE_STYLE:Mcmake}
.   if ${FLAVOR:Mdebug}
# No optimization, debug symbols included, qDebug/kDebug enabled
MODKDE4_CONF_ARGS +=	-DCMAKE_BUILD_TYPE:String=DebugFull
MODKDE4_CMAKE_PREFIX =	-debugfull
COPTS +=		-O0 -ggdb
CXXOPTS +=		-O0 -ggdb
.   else
# Optimization for speed, debug symbols stripped, qDebug/kDebug disabled
MODKDE4_CONF_ARGS +=	-DCMAKE_BUILD_TYPE:String=Release
MODKDE4_CMAKE_PREFIX =	-release
.   endif

# NOTE: due to bugs in make-plist, plist may contain
# ${FLAVORS} instead of ${MODKDE4_CMAKE_PREFIX}.
# You've been warned.
SUBST_VARS +=		MODKDE4_CMAKE_PREFIX

FLAVORS +=	debug
.endif

# ${MODKDE4_RESOURCES:L} != "no"
.endif

# Set up directories, avoiding conflicts with KDE3.
# Libraries are handled in kde4-post-install target, see below.
MODKDE4_INCLUDE_DIR =	include/kde4
MODKDE4_LIB_DIR =	lib/kde4/libs

# shortcut to make WANTLIBs and PLISTs more readable
KDE4LIB =		${MODKDE4_LIB_DIR}
SUBST_VARS +=		KDE4LIB

.if ${CONFIGURE_STYLE:Mcmake}
. if "${NO_TEST:L}" != "yes"
# Enable regression tests if any
MODKDE4_CONF_ARGS +=	-DKDE4_BUILD_TESTS:Bool=Yes
. else
MODKDE4_CONF_ARGS +=	-DKDE4_BUILD_TESTS:Bool=No
. endif

MODKDE4_CONF_ARGS +=	-DINCLUDE_INSTALL_DIR:Path=${MODKDE4_INCLUDE_DIR} \
			-DKDE4_INCLUDE_INSTALL_DIR:Path=${PREFIX}/${MODKDE4_INCLUDE_DIR} \
			-DKDE4_INSTALL_DIR:Path=${PREFIX} \
			-DKDE4_LIB_DIR:Path=${PREFIX}/${MODKDE4_LIB_DIR} \
			-DKDE4_LIB_INSTALL_DIR:Path=${PREFIX}/lib \
			-DKDE4_LIBEXEC_INSTALL_DIR:Path=${PREFIX}/libexec \
			-DKDE4_INFO_INSTALL_DIR:Path=${PREFIX}/info \
			-DKDE4_MAN_INSTALL_DIR:Path=${PREFIX}/man \
			-DKDE4_SYSCONF_INSTALL_DIR:Path=${SYSCONFDIR}

# Make sure that KDE4-specific places are searched first
MODKDE4_CONF_ARGS +=	-DCMAKE_INCLUDE_PATH=${LOCALBASE}/${MODKDE4_INCLUDE_DIR} \
			-DCMAKE_LIBRARY_PATH=${LOCALBASE}/${MODKDE4_LIB_DIR}

# KDE 4.11 doesn't play well with NEW CMP0022
MODKDE4_CONF_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0022=OLD
.endif

# FIXME
MODKDE4_CONFIGURE_ENV =	HOME=${WRKDIR}
PORTHOME ?=		${WRKDIR}

MODKDE4_NO_QT ?=	No
.if ${MODKDE4_NO_QT:L} == "no"
MODULES +=			x11/qt4
MODQT4_OVERRIDE_UIC ?=		No
MODKDE4_CONFIGURE_ENV +=	QTDIR=${MODQT_LIBDIR}
.endif


.if "${NO_BUILD:L}" != "yes"
BUILD_DEPENDS +=	${MODKDE4_BUILD_DEPENDS}
LIB_DEPENDS +=		${MODKDE4_LIB_DEPENDS}
.endif

RUN_DEPENDS +=		${MODKDE4_RUN_DEPENDS}
WANTLIB +=		${MODKDE4_WANTLIB}
CONFIGURE_ENV +=	${MODKDE4_CONFIGURE_ENV}
CONFIGURE_ARGS +=	${MODKDE4_CONF_ARGS}
# MAKE_FLAGS +=		${MODKDE4_CONF_ARGS}

MODKDE4_FIX_GETTEXT ?=	Yes
.if ${MODKDE4_FIX_GETTEXT:L} == "yes"
# System (CMake) FindGettext.cmake requires having PO_FILES marker
MODKDE4_post-patch =	@echo '====> Fixing GETTEXT_PROCESS_PO_FILES() calls'; \
	cd ${WRKSRC} && find . -name CMakeLists.txt | sort | \
		while read F; do \
			perl -pi.pofilesfix -e '\
			if (/GETTEXT_PROCESS_PO_FILES/ and !/\sPO_FILES/) { \
				s@\$$\{_po_files\}@PO_FILES $$&@; \
			}' "$$F"; \
			if cmp -s "$$F" "$$F".pofilesfix; then \
				rm "$$F".pofilesfix; \
			else \
				echo "$$F" >&2; \
			fi; \
		done
.endif

# Some KDE ports install files under ${SYSCONFDIR}.
# We want to have them under ${PREFIX}/share/examples or such,
# and just be @sample'd under ${SYSCONFDIR}.
# So add "file/dir destination" pairs to this variable, and
# apporiate @sample lines to packing list, e.g.:
#   dbus-1	share/examples
MODKDE4_SYSCONF_FILES ?=

# Create soft links for shared libraries in ${PREFIX}/lib to
# ${MODKDE4_LIB_DIR}. Used to avoid clashing with KDE 3.
MODKDE4_LIB_LINKS ?=	No

# We cannot use at least "MODKDE4_pre-install", as it means a totally different
# thing for MODULES rather than for ports. So play another game...

# Always create directory for headers, remove later if left empty
MODKDE4_pre-fake =	${_FAKESUDO} ${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX}/include/kde4;

# 1. Remove includes directory created above, if empty.
# 2. Create links for shared libraries in ${PREFIX}/${KDE4LIB},
#    to allow using -DDKDE4_LIB_DIR=${PREFIX}/${KDE4LIB}.
# 3. Fixup files in ${SYSCONFDIR}, see notes for MODKDE4_SYSCONF_FILES above.
MODKDE4_post-install =	rmdir ${PREFIX}/${MODKDE4_INCLUDE_DIR} 2>/dev/null || :;

.if ${MODKDE4_LIB_LINKS:L} == "yes" && defined(SHARED_LIBS) && !empty(SHARED_LIBS)
MODKDE4_post-install +=	\
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE4_LIB_DIR}; \
	cd ${PREFIX}/${MODKDE4_LIB_DIR};

# Note that number of upper-level directories depends on
# actual ${MODKDE4_LIB_DIR} value relative to ${PREFIX}/lib.
. for _l _v in ${SHARED_LIBS}
MODKDE4_post-install +=	\
	! test -e ../../lib${_l}.so.${_v} || ln -sf ../../lib${_l}.so.${_v};
. endfor
.endif

.for _f _d in ${MODKDE4_SYSCONF_FILES}
MODKDE4_post-install +=	\
	rm -Rf ${PREFIX}/${_d}/${_f}; \
	${INSTALL_DATA_DIR} ${PREFIX}/${_d}; \
	mv ${WRKINST}${SYSCONFDIR}/${_f} ${PREFIX}/${_d}/${_f};
.endfor
