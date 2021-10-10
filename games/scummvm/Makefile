# $OpenBSD: Makefile,v 1.90 2021/10/10 03:12:02 jsg Exp $

COMMENT=	graphical adventure game interpreter
V=		2.5.0
DISTNAME=	scummvm-${V}
CATEGORIES=	games x11 emulators
MASTER_SITES=	https://downloads.scummvm.org/frs/scummvm/${V}/

HOMEPAGE=	https://www.scummvm.org/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL2 a52 c faad fluidsynth freetype fribidi iconv jpeg
WANTLIB += m mad mpeg2 png ogg sndio ${COMPILER_LIBCXX} theoradec vorbis
WANTLIB += vorbisfile z

# GCC 4.2.1 miscompiles this on at least ppc, so play safe and
# just use a newer compiler everywhere.
COMPILER=	base-clang ports-gcc

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	audio/fluidsynth \
		audio/liba52 \
		audio/libmad \
		audio/libvorbis \
		audio/flac \
		audio/faad>=2.7 \
		devel/fribidi \
		devel/sdl2 \
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
		--disable-gtk \
		--disable-libcurl \
		--disable-nasm \
		--disable-sdlnet \
		--disable-seq-midi \
		--disable-system-dialogs \
		--disable-tts \
		--enable-sndio \
		--mandir="${LOCALBASE}/man"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}" VERBOSE_BUILD=1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/dists/scummvm.desktop \
	    ${PREFIX}/share/applications

.include <bsd.port.mk>
