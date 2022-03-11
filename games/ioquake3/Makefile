BROKEN-i386=	need to free up a register
ONLY_FOR_ARCHS= amd64 i386 macppc

COMMENT=	clone of the original Quake III Arena

DISTNAME=	ioquake3-2020.09.29
REVISION=	0

GH_ACCOUNT=	ioquake
GH_PROJECT=	ioq3
GH_COMMIT=	e7a7a2b6b677c030be5cca8cc9cc58e81b2e04de

CATEGORIES=	games

HOMEPAGE=	http://ioquake3.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

# openal is statically linked
WANTLIB += SDL2 c curl m ogg openal pthread

LIB_DEPENDS=	audio/libogg \
		audio/openal \
		devel/sdl2 \
		net/curl

MAKE_ENV=	V=1 USE_VOIP=0 USE_INTERNAL_OGG=0 CC="${CC}" TOOLS_CC="${CC}"
ALL_TARGET=	"release"
USE_GMAKE=	Yes
NO_TEST=	Yes

QUAKE_ARCH-amd64 = 	x86_64
QUAKE_ARCH-i386 = 	x86
QUAKE_ARCH-powerpc = 	ppc
QUAKE_ARCH-${MACHINE_ARCH} ?= ${MACHINE_ARCH}
QUAKE_ARCH =		${QUAKE_ARCH-${MACHINE_ARCH}}
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
