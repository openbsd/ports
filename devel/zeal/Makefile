USE_NOBTCFI =	Yes

COMMENT =	simple offline API documentation browser

V =		0.8.1
DISTNAME =	zeal-${V}

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets SM X11 Xext archive c m sqlite3 xcb xcb-keysyms
WANTLIB += xkbcommon

SITES =		https://github.com/zealdocs/zeal/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

MODULES =	x11/qt6 devel/cmake

BUILD_DEPENDS =	devel/kf6/extra-cmake-modules

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	archivers/libarchive \
		databases/sqlite3 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebengine

CONFIGURE_ARGS =	-DZEAL_RELEASE_BUILD=ON

NO_TEST =	Yes

.include <bsd.port.mk>
