# $OpenBSD: Makefile,v 1.1.1.1 2021/08/29 13:04:47 solene Exp $

COMMENT =	terminal-based music player

GH_ACCOUNT =	clangen
GH_PROJECT =	musikcube
GH_TAGNAME =	0.96.5

CATEGORIES =	audio

HOMEPAGE =	https://musikcube.com/

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# BSD-3
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} avcodec avformat avutil boost_atomic-mt
WANTLIB +=	boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB +=	boost_system-mt boost_thread-mt c crypto curl curses
WANTLIB +=	ev m microhttpd mp3lame openmpt panel sndio ssl swresample
WANTLIB +=	tag z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libopenmpt \
		audio/taglib \
		devel/boost \
		devel/libev \
		graphics/ffmpeg \
		net/curl \
		www/libmicrohttpd

NO_TEST	=	Yes

.include <bsd.port.mk>
