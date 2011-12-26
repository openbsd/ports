# $OpenBSD: mupen64plus.port.mk,v 1.1.1.1 2011/12/26 13:38:27 stsp Exp $

SHARED_ONLY = 		Yes
VERSION ?= 		1.99.4
DISTNAME ?=		mupen64plus-${MUPEN64PLUS_MOD}-src-${VERSION}
PKGNAME ?= 		mupen64plus-${MUPEN64PLUS_MOD}-${VERSION}
HOMEPAGE ?=		http://code.google.com/p/mupen64plus/
CATEGORIES ?=		emulators games
MASTER_SITES ?=		https://bitbucket.org/richard42/mupen64plus-${MUPEN64PLUS_MOD}/downloads/

CONFIGURE_STYLE ?=	none
USE_GMAKE ?=		Yes
MAKE_FLAGS ?= 		CC=${CC} CXX=${CXX} V=1

.if ${MUPEN64PLUS_MOD} != "core"
MAKE_FLAGS += 		APIDIR=${LOCALBASE}/include/mupen64plus
LIB_DEPENDS += 		emulators/mupen64plus/core
.endif

# non-standard build system...
.if !target(do-build)
do-build:
	cd ${WRKSRC}/projects/unix && \
		${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${ALL_TARGET}
.endif

.if !target(do-install)
do-install:
	cd ${WRKSRC}/projects/unix && \
		${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		PREFIX=${LOCALBASE} DESTDIR=${DESTDIR} \
		LDCONFIG=true ${INSTALL_TARGET}
.endif

NO_REGRESS ?=		Yes
