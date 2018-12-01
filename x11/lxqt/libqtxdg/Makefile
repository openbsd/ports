# $OpenBSD: Makefile,v 1.2 2018/12/01 08:44:39 landry Exp $

COMMENT =	qt implementation of freedesktop.org xdg specs

VERSION =	3.2.0
REVISION =	0

NAME =		libqtxdg
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  Qt5Xdg                    0.0 # 0.0
SHARED_LIBS +=  Qt5XdgIconLoader          0.0 # 0.0

WANTLIB +=	${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB +=	m Qt5DBus Qt5Xml

LIB_DEPENDS +=		x11/qt5/qtsvg

CONFIGURE_ARGS +=	-DBUILD_TESTS=Yes

NO_TEST =		No

.include <bsd.port.mk>
