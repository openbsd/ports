COMMENT =	terminal-based music player

GH_ACCOUNT =	clangen
GH_PROJECT =	musikcube
GH_TAGNAME =	3.0.2
CATEGORIES =	audio

HOMEPAGE =	https://musikcube.com/

# BSD-3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c crypto
WANTLIB += curl curses ev m microhttpd mp3lame mpg123 openmpt
WANTLIB += panel sndio ssl swresample tag z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS+=	devel/asio \
		textproc/nlohmann-json
LIB_DEPENDS =	audio/lame \
		audio/libopenmpt \
		audio/taglib \
		devel/libev \
		graphics/ffmpeg \
		net/curl \
		www/libmicrohttpd

NO_TEST	=	Yes

.include <bsd.port.mk>
