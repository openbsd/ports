BROKEN-alpha =	arctar.c:384: internal compiler error: in extract_insn, at recog.c:2077

COMMENT =	UNIX port of Open Cubic Player

DISTNAME =	ocp-0.2.109
CATEGORIES =	audio

HOMEPAGE =	https://stian.cubic.org/project-ocp.php

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} FLAC SDL2 ancient bz2 c cjson curses
WANTLIB +=	discid freetype iconv jpeg m mad ogg png vorbis vorbisfile
WANTLIB +=	z

SITES =		https://stian.cubic.org/ocp/

COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	devel/desktop-file-utils \
		fonts/unifont \
		misc/shared-mime-info \
		x11/gtk+4,-guic

BUILD_DEPENDS =	devel/desktop-file-utils \
		fonts/unifont \
		devel/xa

LIB_DEPENDS =	archivers/ancient \
		archivers/bzip2 \
		audio/flac \
		audio/libdiscid \
		audio/libmad \
		audio/libogg \
		audio/libvorbis \
		devel/cjson \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png

CFLAGS +=	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/SDL2 \
		-I${LOCALBASE}/include/libbinio
CXXFLAGS +=	${CFLAGS}

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS = --with-dir-suffix="" \
		 --with-ncurses \
		 --without-alsa \
		 --without-oss \
		 --without-x11 \
		 --without-update-desktop-database \
		 --without-update-mime-database \
		 --with-unifontdir-otf=${PREFIX}/share/fonts/unifont

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	# Prevent bundled Timidity to pick archivers/libzip's zip.h header
	@cd ${WRKSRC}/playtimidity/timidity-git/libarc && mv zip.h libarc-zip.h
	@sed -i 's|"zip.h"|"libarc-zip.h"|' \
		${WRKSRC}/playtimidity/timidity-git/libarc/*.c \
		${WRKSRC}/playtimidity/timidity-git/timidity/*.c

post-install:
	gunzip ${PREFIX}/info/ocp.info.gz

.include <bsd.port.mk>
