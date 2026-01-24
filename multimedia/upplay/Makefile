USE_NOBTCFI =		Yes
USE_WXNEEDED =		Yes

COMMENT =		UPnP audio control point
DISTNAME =		upplay-1.9.8

CATEGORIES =		multimedia net

HOMEPAGE =		https://www.lesbonscomptes.com/upplay/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

SITES =			https://www.lesbonscomptes.com/upplay/downloads/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Positioning Qt6PrintSupport Qt6Qml Qt6Quick
WANTLIB += Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets c jsoncpp m upnpp

MODULES =		devel/qmake \
			x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/jsoncpp \
			net/libupnpp \
			x11/qt6/qtdeclarative \
			x11/qt6/qtpositioning \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine

NO_TEST =		Yes

.include <bsd.port.mk>
