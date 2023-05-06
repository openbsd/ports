COMMENT =	terminal-based music player

GH_ACCOUNT =	clangen
GH_PROJECT =	musikcube
GH_TAGNAME =	0.98.1

CATEGORIES =	audio

HOMEPAGE =	https://musikcube.com/

# BSD-3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil boost_atomic-mt
WANTLIB += boost_chrono-mt boost_filesystem-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto curl curses ev m microhttpd
WANTLIB += mp3lame mpg123 openmpt panel sndio ssl swresample tag z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS += -DENABLE_BUNDLED_TAGLIB=false

LIB_DEPENDS =	audio/libopenmpt \
		audio/taglib \
		devel/boost \
		devel/libev \
		graphics/ffmpeg \
		net/curl \
		www/libmicrohttpd

NO_TEST	=	Yes

.include <bsd.port.mk>
