# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:15 sthen Exp $

BROKEN-alpha =	arctar.c:384: internal compiler error: in extract_insn, at recog.c:2077

COMMENT =	UNIX port of Open Cubic Player

DISTNAME =	ocp-0.1.21
REVISION =	1
CATEGORIES =	audio

HOMEPAGE =	http://stian.cubic.org/project-ocp.php

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	FLAC SDL adplug binio c iconv m mad ncurses ogg pthread
WANTLIB +=	sidplay ${COMPILER_LIBCXX} vorbis vorbisfile z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opencubicplayer/}

BUILD_DEPENDS =	devel/desktop-file-utils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	audio/adplug \
		audio/flac \
		audio/libmad \
		audio/libogg \
		audio/libsidplay \
		audio/libvorbis \
		devel/libbinio \
		devel/sdl

CFLAGS +=	-L${LOCALBASE}/lib -I${LOCALBASE}/include
CXXFLAGS +=	${CFLAGS}

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --with-dir-suffix="" \
		 --without-alsa \
		 --without-oss \
		 --without-x11

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	gunzip ${PREFIX}/info/ocp.info.gz
	rm ${PREFIX}/bin/ultrafix.sh

.include <bsd.port.mk>
