COMMENT=	game interpreter
V=		2.8.1
DISTNAME=	scummvm-${V}
CATEGORIES=	games x11 emulators
SITES=		https://downloads.scummvm.org/frs/scummvm/${V}/
REVISION=	0

HOMEPAGE=	https://www.scummvm.org/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL2 a52 c faad fluidsynth freetype fribidi gif iconv jpeg
WANTLIB += m mad mpeg2 png ogg sndio ${COMPILER_LIBCXX} theoradec vorbis
WANTLIB += vorbisfile z

# C++11
COMPILER=	base-clang ports-gcc

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS=	audio/fluidsynth \
		audio/liba52 \
		audio/libmad \
		audio/libvorbis \
		audio/flac \
		audio/faad>=2.7 \
		devel/fribidi \
		devel/sdl2 \
		graphics/giflib \
		graphics/libmpeg2 \
		graphics/png \
		graphics/jpeg \
		multimedia/libtheora

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-alsa \
		--disable-cloud \
		--disable-debug \
		--disable-discord \
		--disable-fluidlite \
		--disable-gtk \
		--disable-libcurl \
		--disable-libunity \
		--disable-nasm \
		--disable-sdlnet \
		--disable-system-dialogs \
		--disable-tts \
		--disable-enet \
		--disable-mikmod \
		--disable-vpx \
		--enable-release \
		--enable-sndio \
		--mandir="${LOCALBASE}/man"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}" VERBOSE_BUILD=1 USE_CURL=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/scummvm.desktop
	${INSTALL_DATA} ${WRKSRC}/dists/org.scummvm.scummvm.desktop \
	    ${PREFIX}/share/applications/scummvm.desktop/

.include <bsd.port.mk>
