# $OpenBSD: Makefile,v 1.17 2017/08/04 22:06:51 abieber Exp $

BROKEN-i386=	need to free up a register
ONLY_FOR_ARCHS= amd64 i386

COMMENT=	clone of the original Quake III Arena

DISTNAME=	ioquake3-2017.08.03

GH_ACCOUNT=	ioquake
GH_PROJECT=	ioq3
GH_COMMIT=	59b1262b82a2d2fa80f7f5ffce098cb4d3459a14

CATEGORIES=	games

HOMEPAGE=	http://ioquake3.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

# openal is statically linked
WANTLIB += GL SDL2 c curl m ogg openal pthread

LIB_DEPENDS=	audio/libogg \
		audio/openal \
		devel/sdl2 \
		net/curl

MAKE_ENV=	V=1 USE_INTERNAL_OGG=0 CC="${CC}" TOOLS_CC="${CC}"
ALL_TARGET=	"release"
USE_GMAKE=	Yes
NO_TEST=	Yes

CFLAGS+=	-pthread -g

QUAKE_ARCH=	${ARCH:S/amd64/x86_64/:S/i386/x86/}
SUBST_VARS+=	QUAKE_ARCH

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ioquake3/
	${INSTALL_DATA_DIR} ${PREFIX}/share/ioquake3/{baseq3,missionpack}/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/baseq3/{cgame,qagame,ui}${QUAKE_ARCH}.so \
		${PREFIX}/share/ioquake3/baseq3/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/missionpack/{cgame,qagame,ui}${QUAKE_ARCH}.so \
		${PREFIX}/share/ioquake3/missionpack/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/renderer_opengl{1,2}_${QUAKE_ARCH}.so \
		${PREFIX}/share/ioquake3/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/ioq3ded.${QUAKE_ARCH} \
		${PREFIX}/bin/ioq3ded
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-${QUAKE_ARCH}/ioquake3.${QUAKE_ARCH} \
		${PREFIX}/bin/ioquake3

.include <bsd.port.mk>
