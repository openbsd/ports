# $OpenBSD: Makefile.inc,v 1.3 2012/08/13 06:53:55 bentley Exp $

ONLY_FOR_ARCHS ?=	amd64 i386
SHARED_ONLY = 		Yes
VERSION ?= 		1.99.5
DISTNAME ?=		mupen64plus-${MUPEN64PLUS_MOD}-src-${VERSION}
PKGNAME ?= 		mupen64plus-${MUPEN64PLUS_MOD}-${VERSION}
HOMEPAGE ?=		http://code.google.com/p/mupen64plus/
CATEGORIES ?=		emulators games
MASTER_SITES ?=		https://bitbucket.org/richard42/mupen64plus-${MUPEN64PLUS_MOD}/downloads/

CONFIGURE_STYLE ?=	none
USE_GMAKE ?=		Yes
MAKE_FLAGS ?= 		CC=${CC} CXX=${CXX} V=1

FAKE_FLAGS ?=		PREFIX=${PREFIX} LDCONFIG=true

.if ${MUPEN64PLUS_MOD} != "core"
MAKE_FLAGS += 		APIDIR=${LOCALBASE}/include/mupen64plus
LIB_DEPENDS += 		emulators/mupen64plus/core>=1.99.5
.endif

WRKBUILD ?=	${WRKDIST}/projects/unix

NO_REGRESS ?=		Yes
