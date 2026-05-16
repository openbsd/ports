COMMENT =	collaborative drawing program

V =		2.3.0
DISTNAME =	drawpile-${V}

CATEGORIES =	graphics x11

DIST_TUPLE +=	github drawpile Drawpile ${V} .

HOMEPAGE =	https://drawpile.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Svg Qt6WebSockets Qt6Widgets
WANTLIB += Qt6Xml avcodec avfilter avformat avutil c m qt6keychain
WANTLIB += sharpyuv sodium swscale webp webpdemux webpmux z zip
WANTLIB += zstd

MODULES =	devel/kf6

LIB_DEPENDS =	archivers/libzip \
		archivers/zstd \
		graphics/ffmpeg \
		graphics/libwebp \
		security/libsodium \
		security/qtkeychain,qt6 \
		x11/qt6/qtsvg \
		x11/qt6/qtwebsockets

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

WRKDIST =	${WRKDIR}/Drawpile-${V}
CXXFLAGS +=	-I${LOCALBASE}/include

NO_TEST =	Yes

.include <bsd.port.mk>
