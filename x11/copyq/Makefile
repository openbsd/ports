COMMENT =		Qt clipboard manager
GH_ACCOUNT =		hluk
GH_PROJECT =		CopyQ
GH_TAGNAME =		v10.0.0
PKGNAME =		${DISTNAME:L}
CATEGORIES =		x11

MAINTAINER =		kikadf <kikadf.01@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6Notifications KF6StatusNotifierItem
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Svg Qt6WaylandClient
WANTLIB += Qt6Widgets Qt6Xml SM X11 Xext Xfixes Xtst c m wayland-client
WANTLIB += wayland-cursor xkbcommon

MODULES =		devel/kf6

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/kf6/knotifications \
			devel/kf6/kstatusnotifieritem \
			wayland/wayland \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg \
			x11/qt6/qtwayland \
			x11/xkbcommon \

# avoids git usage
CONFIGURE_ENV +=	GITHUB_SHA=unknown

CONFIGURE_ARGS =	-DWITH_QT6=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
