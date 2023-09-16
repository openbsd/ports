COMMENT =		Qt5 based clipboard manager
GH_ACCOUNT =		hluk
GH_PROJECT =		CopyQ
GH_TAGNAME =		v7.1.0
PKGNAME =		${DISTNAME:L}
CATEGORIES =		x11

MAINTAINER =		kikadf <kikadf.01@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Notifications Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Svg Qt5WaylandClient Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 Xext Xfixes Xtst c m wayland-client

MODULES =		devel/kf5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/kf5/knotifications \
			x11/qt5/qtsvg \
			x11/qt5/qtwayland

# avoids git usage
CONFIGURE_ENV +=	GITHUB_SHA=unknown

.include <bsd.port.mk>
