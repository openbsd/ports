COMMENT =	markdown note taking program with nextcloud integration

V =		26.11.14
DISTNAME =	qownnotes-${V}

CATEGORIES =	editors

HOMEPAGE =	https://www.qownnotes.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB +=	Qt6Gui Qt6Network Qt6OpenGL Qt6PrintSupport Qt6Qml
WANTLIB +=	Qt6Quick Qt6Sql Qt6Svg Qt6WebSockets Qt6Widgets Qt6Xml
WANTLIB +=	X11 botan-3 c gio-2.0 glib-2.0 gobject-2.0 intl m secret-1

SITES =		https://github.com/pbek/QOwnNotes/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

MODULES =	devel/qmake x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	security/botan3 \
		x11/gnome/libsecret \
		x11/qt6/qtsvg \
		x11/qt6/qtwebsockets

USE_GMAKE =	Yes

MODQMAKE_ARGS =	USE_SYSTEM_BOTAN=1 CONFIG+=c++20

.include <bsd.port.mk>
