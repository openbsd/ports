COMMENT=		free cross-platform real-time strategy gaming engine.

V=			3.3.2
DISTNAME=		stratagus-$V
CATEGORIES=		games
SITES=			https://github.com/Wargus/stratagus/archive/refs/tags/
DISTFILES=		stratagus-{v}${V}${EXTRACT_SUFX}
EXTRACT_SUFX=		.tar.gz

HOMEPAGE=		http://stratagus.com/stratagus.html

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += 		${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer bz2 c m \
			mng ogg png pthread theora vorbis z

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
			multimedia/libtheora

CONFIGURE_ARGS=		-DGAMEDIR=${LOCALBASE}/bin/ \
			-DMANDIR="${LOCALBASE}/man/man6" \
			-DENABLE_DEV=ON

MODCMAKE_LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
CXXFLAGS =		-I${X11BASE}/include

# XXX Depends on tolua++, use bundled lua 51
CONFIGURE_ARGS+=	-DBUILD_VENDORED_LUA=ON
pre-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	cmake --build ${WRKBUILD} ${_MAKE_VERBOSE} -j ${MAKE_JOBS} -t Lua51B

.include <bsd.port.mk>
