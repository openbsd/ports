COMMENT =	markdown note taking program with nextcloud integration

V =		23.9.4
DISTNAME =	qownnotes-${V}

CATEGORIES =	editors

HOMEPAGE =	https://www.qownnotes.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB +=	Qt5Network Qt5PrintSupport Qt5Qml Qt5Sql Qt5Svg Qt5WebSockets
WANTLIB +=	Qt5Widgets Qt5X11Extras Qt5Xml X11 botan-2 c m

SITES =		https://github.com/pbek/QOwnNotes/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

MODULES =	devel/qmake x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	security/botan2 \
		x11/qt5/qtsvg \
		x11/qt5/qtwebsockets \
		x11/qt5/qtx11extras

USE_GMAKE =	Yes

MODQMAKE_ARGS =	USE_SYSTEM_BOTAN=1

.include <bsd.port.mk>
