COMMENT =	powerful yet simple to use screenshot software
CATEGORIES =	graphics x11

GH_ACCOUNT =	flameshot-org
GH_PROJECT =	flameshot
GH_TAGNAME =	v13.1.0

HOMEPAGE =	https://flameshot.org/
MAINTAINER =	Denis Fondras <denis@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Svg Qt6Widgets QtColorWidgets c kdsingleapplication-qt6
WANTLIB += m

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	x11/qt6/qtsvg \
		x11/kdsingleapplication \
		x11/qt-color-widgets

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS +=	-DENABLE_CACHE=OFF \
			-DDISABLE_UPDATE_CHECKER=OFF \
			-DUSE_BUNDLED_KDSINGLEAPPLICATION=OFF

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-Wno-dev

NO_TEST =	Yes

.include <bsd.port.mk>
