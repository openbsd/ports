# $OpenBSD: Makefile,v 1.1.1.1 2016/01/14 00:11:40 abieber Exp $

ONLY_FOR_ARCHS= 	amd64 i386

COMMENT=		clone of the original Quake III Arena

GH_ACCOUNT=		ioquake
GH_PROJECT=		ioq3
GH_COMMIT=		42dee17663cfc841fe6d0933f5c1dc10463e2dbd

DISTNAME=		ioquake3-2016.01.09
CATEGORIES=		games

HOMEPAGE=		http://ioquake3.org/
MAINTAINER=		Aaron Bieber <abieber@openbsd.org>

QUAKE_ARCH=		${ARCH:S/amd64/x86_64/:S/i386/x86/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/sdl2 \
			net/curl

USE_GMAKE=		Yes
NO_TEST=		Yes

MAKE_ENV=		"V=1"

CFLAGS+=                -pthread -g

WANTLIB += GL SDL2 c curl m pthread

SUBST_VARS+=		QUAKE_ARCH

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ioquake3/
	cp -rp ${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/* \
		${PREFIX}/share/ioquake3/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/ioq3ded.${QUAKE_ARCH} \
		${PREFIX}/bin/ioq3ded
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/ioquake3.${QUAKE_ARCH} \
		${PREFIX}/bin/ioquake3

.include <bsd.port.mk>
