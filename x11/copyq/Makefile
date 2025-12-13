COMMENT =		Qt clipboard manager
GH_ACCOUNT =		hluk
GH_PROJECT =		CopyQ
GH_TAGNAME =		v13.0.0
PKGNAME =		${DISTNAME:L}
CATEGORIES =		x11

MAINTAINER =		kikadf <kikadf.01@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6GuiAddons KF6Notifications
WANTLIB += KF6StatusNotifierItem Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Svg Qt6Widgets Qt6Xml SM X11 Xext Xfixes
WANTLIB += Xtst c m xkbcommon

MODULES =		devel/kf6

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/kf6/knotifications \
			devel/kf6/kstatusnotifieritem \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg \
			x11/xkbcommon \

# avoids git usage
CONFIGURE_ENV +=	GITHUB_SHA=unknown

CONFIGURE_ARGS =	-DWITH_QT6=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

LIB_DEPENDS += devel/kf6/kguiaddons
.include <bsd.port.mk>
