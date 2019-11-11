# $OpenBSD: Makefile.inc,v 1.16 2019/11/11 02:01:07 bentley Exp $

ONLY_FOR_ARCHS ?=	amd64 i386 powerpc arm arm64
VERSION ?= 		2.5.9
DISTNAME ?=		mupen64plus-${MUPEN64PLUS_MOD}-src-${VERSION}
PKGNAME ?= 		mupen64plus-${MUPEN64PLUS_MOD}-${VERSION}
HOMEPAGE ?=		https://mupen64plus.org/
CATEGORIES ?=		emulators games
MASTER_SITES ?=		https://github.com/mupen64plus/mupen64plus-${MUPEN64PLUS_MOD}/releases/download/${VERSION}/
MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}

CONFIGURE_STYLE ?=	none
USE_GMAKE ?=		Yes
MAKE_FLAGS += 		CC=${CC} \
			CXX=${CXX} \
			DEBUG=1 \
			PIC=1 \
			V=1 \
			OPTFLAGS=

FAKE_FLAGS ?=		PREFIX=${PREFIX} LDCONFIG=true

.if ${MUPEN64PLUS_MOD} != "core"
MAKE_FLAGS += 		APIDIR=${LOCALBASE}/include/mupen64plus
BUILD_DEPENDS +=	emulators/mupen64plus/core>=2.5.9
.endif

WRKBUILD ?=		${WRKDIST}/projects/unix

NO_TEST ?=		Yes
