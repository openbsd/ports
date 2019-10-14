# $OpenBSD: Makefile,v 1.83 2019/10/14 09:18:00 jsg Exp $

COMMENT=	graphical adventure game interpreter
V=		2.1.0
DISTNAME=	scummvm-${V}
CATEGORIES=	games x11 emulators
MASTER_SITES=	https://www.scummvm.org/frs/scummvm/${V}/

HOMEPAGE=	https://www.scummvm.org/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL2 c faad freetype jpeg m mad png ogg sndio
WANTLIB += ${COMPILER_LIBCXX} theoradec vorbis vorbisfile z

# GCC 4.2.1 miscompiles this on at least ppc, so play safe and
# just use a newer compiler everywhere.
COMPILER=	base-clang ports-gcc

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	audio/libmad \
		audio/libvorbis \
		audio/flac \
		audio/faad>=2.7 \
		devel/sdl2 \
		graphics/png \
		graphics/jpeg \
		multimedia/libtheora

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+= --disable-alsa \
		--disable-debug \
		--disable-fluidsynth \
		--disable-seq-midi \
		--disable-mpeg2 \
		--disable-sdlnet \
		--disable-libcurl \
		--disable-nasm \
		--enable-sndio \
		--mandir="${LOCALBASE}/man"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}" VERBOSE_BUILD=1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/dists/scummvm.desktop \
	    ${PREFIX}/share/applications

.include <bsd.port.mk>
