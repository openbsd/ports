# $OpenBSD: Makefile.inc,v 1.9 2015/05/11 09:40:40 bentley Exp $

ONLY_FOR_ARCHS ?=	amd64 i386
SHARED_ONLY = 		Yes
VERSION ?= 		2.5
DISTNAME ?=		mupen64plus-${MUPEN64PLUS_MOD}-src-${VERSION}
PKGNAME ?= 		mupen64plus-${MUPEN64PLUS_MOD}-${VERSION}
HOMEPAGE ?=		https://code.google.com/p/mupen64plus/
CATEGORIES ?=		emulators games
MASTER_SITES ?=		https://github.com/mupen64plus/mupen64plus-${MUPEN64PLUS_MOD}/releases/download/${VERSION}/
MAINTAINER ?=		Anthony J. Bentley <anthony@cathet.us>

CONFIGURE_STYLE ?=	none
USE_GMAKE ?=		Yes
MAKE_FLAGS += 		CC=${CC} \
			CXX=${CXX} \
			DEBUG=1 \
			V=1 \
			OPTFLAGS=

FAKE_FLAGS ?=		PREFIX=${PREFIX} LDCONFIG=true

.if ${MUPEN64PLUS_MOD} != "core"
MAKE_FLAGS += 		APIDIR=${LOCALBASE}/include/mupen64plus
BUILD_DEPENDS +=	emulators/mupen64plus/core>=2.5
.endif

WRKBUILD ?=		${WRKDIST}/projects/unix

NO_TEST ?=		Yes
