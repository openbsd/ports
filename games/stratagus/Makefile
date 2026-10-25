COMMENT=		free cross-platform real-time strategy gaming engine.

GH_ACCOUNT=		Wargus
GH_PROJECT=		stratagus
GH_TAGNAME=		v3.3.2
REVISION=		0
CATEGORIES=		games

HOMEPAGE=		http://stratagus.com/stratagus.html

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer bz2 c
WANTLIB += lua5.1 m mng ogg png theora toluapp vorbis z

MODULES=		devel/cmake

# C++17
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		archivers/bzip2 \
			audio/libogg \
			audio/libvorbis \
			devel/sdl2 \
			devel/sdl2-mixer \
			devel/sdl2-image \
			graphics/libmng \
			lang/toluapp \
			multimedia/libtheora

CONFIGURE_ARGS=		-DGAMEDIR=${LOCALBASE}/bin/ \
			-DMANDIR="${LOCALBASE}/man/man6" \
			-DENABLE_DEV=ON

MODCMAKE_LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
CXXFLAGS+=		-I${X11BASE}/include

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
