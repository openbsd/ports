# $OpenBSD: Makefile,v 1.1.1.1 2016/09/26 06:56:57 fcambus Exp $

COMMENT =	UNIX port of Open Cubic Player

DISTNAME =	ocp-0.1.21
CATEGORIES =	audio

HOMEPAGE =	http://stian.cubic.org/project-ocp.php

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	FLAC SDL c iconv m mad ncurses ogg pthread sidplay
WANTLIB +=	stdc++ vorbis vorbisfile z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opencubicplayer/}

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	audio/flac \
		audio/libmad \
		audio/libogg \
		audio/libsidplay \
		audio/libvorbis \
		devel/sdl

CFLAGS +=	-L${LOCALBASE}/lib -I${LOCALBASE}/include
CXXFLAGS +=	${CFLAGS}

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --with-dir-suffix="" \
		 --without-alsa \
		 --without-oss \
		 --without-adplug \
		 --without-x11

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	gunzip ${PREFIX}/info/ocp.info.gz
	rm ${PREFIX}/bin/ultrafix.sh

.include <bsd.port.mk>
