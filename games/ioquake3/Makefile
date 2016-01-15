# $OpenBSD: Makefile,v 1.2 2016/01/15 21:53:18 abieber Exp $

ONLY_FOR_ARCHS= amd64 i386

SHARED_ONLY=	Yes

COMMENT=	clone of the original Quake III Arena

DISTNAME=	ioquake3-2016.01.15

GH_ACCOUNT=	ioquake
GH_PROJECT=	ioq3
GH_COMMIT=	3089df0398b8d0be9d6234e1620468aa2b068897

CATEGORIES=	games

HOMEPAGE=	http://ioquake3.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# openal is statically linked
WANTLIB += GL SDL2 c curl m openal pthread

LIB_DEPENDS=	audio/openal \
		devel/sdl2 \
		net/curl

MAKE_ENV=	"V=1"
ALL_TARGET=	"release"
USE_GMAKE=	Yes
NO_TEST=	Yes

CFLAGS+=	-pthread -g

QUAKE_ARCH=	${ARCH:S/amd64/x86_64/:S/i386/x86/}
SUBST_VARS+=	QUAKE_ARCH

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
