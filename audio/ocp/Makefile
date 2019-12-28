# $OpenBSD: Makefile,v 1.17 2019/12/28 13:13:12 sthen Exp $

BROKEN-alpha =	arctar.c:384: internal compiler error: in extract_insn, at recog.c:2077
BROKEN-i386 =	mixasm.c:94: this directive must appear between .cfi_startproc and .cfi_endproc directives

COMMENT =	UNIX port of Open Cubic Player

DISTNAME =	ocp-0.2.1
CATEGORIES =	audio

HOMEPAGE =	https://stian.cubic.org/project-ocp.php

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	FLAC SDL2 adplug binio c iconv m mad curses ogg pthread
WANTLIB +=	sidplay ${COMPILER_LIBCXX} vorbis vorbisfile z

MASTER_SITES =	https://stian.cubic.org/ocp/

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =	devel/desktop-file-utils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	audio/adplug \
		audio/flac \
		audio/libmad \
		audio/libogg \
		audio/libsidplay \
		audio/libvorbis \
		devel/libbinio \
		devel/sdl2

CFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/libbinio
CXXFLAGS +=	${CFLAGS}

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS = --with-dir-suffix="" \
		 --with-ncurses \
		 --without-alsa \
		 --without-oss \
		 --without-x11

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	# Prevent bundled Timidity to pick archivers/libzip's zip.h header
	@cd ${WRKSRC}/playgmi/timidity-git/libarc && mv zip.h libarc-zip.h
	@sed -i 's|"zip.h"|"libarc-zip.h"|' \
		${WRKSRC}/playgmi/timidity-git/libarc/*.c \
		${WRKSRC}/playgmi/timidity-git/timidity/*.c

post-install:
	gunzip ${PREFIX}/info/ocp.info.gz

.include <bsd.port.mk>
