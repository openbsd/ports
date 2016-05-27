# $OpenBSD: Makefile,v 1.6 2016/05/27 23:44:14 abieber Exp $

BROKEN-i386=	need to free up a register
ONLY_FOR_ARCHS= amd64 i386

COMMENT=	clone of the original Quake III Arena

DISTNAME=	ioquake3-2016.05.23

GH_ACCOUNT=	ioquake
GH_PROJECT=	ioq3
GH_COMMIT=	7811b2acb2955132a68d1b869d4df98eb3ae194a

CATEGORIES=	games

HOMEPAGE=	http://ioquake3.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# GPLv2+
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
