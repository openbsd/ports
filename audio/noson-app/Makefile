COMMENT =		fast and smart SONOS controller
DIST_TUPLE =		github	janbar	noson-app	5.6.7	.
CATEGORIES =		audio net

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} FLAC FLAC++ Qt5Core Qt5DBus Qt5Gui
WANTLIB +=		Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB +=		Qt5Svg Qt5Widgets Qt5Xml c crypto m noson ssl z

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		audio/noson>=2.12.9 \
			x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			x11/qt5/qtgraphicaleffects

CONFIGURE_ARGS =	-DBUILD_LIBNOSON=OFF

.include <bsd.port.mk>
