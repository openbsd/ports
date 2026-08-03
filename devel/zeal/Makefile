USE_NOBTCFI =	Yes

COMMENT =	simple offline API documentation browser

V =		0.9.1
DISTNAME =	zeal-${V}

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Quick Qt6Svg Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets archive c m sqlite3
WANTLIB += xcb xcb-keysyms xkbcommon z

SITES =		https://github.com/zealdocs/zeal/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

MODULES =	x11/qt6 devel/cmake

BUILD_DEPENDS =	devel/kf6/extra-cmake-modules

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	archivers/libarchive \
		databases/sqlite3 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtsvg \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/xkbcommon

CONFIGURE_ARGS =	-DZEAL_RELEASE_BUILD=ON

NO_TEST =	Yes

.include <bsd.port.mk>
