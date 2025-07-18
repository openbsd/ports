USE_WXNEEDED =	Yes

COMMENT =	map management tool

GH_ACCOUNT =	Maproom
GH_PROJECT =	qmapshack
GH_TAGNAME =	V_1.18.0

CATEGORIES =	geo

HOMEPAGE =	https://github.com/Maproom/qmapshack/wiki

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6DBus
WANTLIB += Qt6Gui Qt6Help Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6Sql Qt6UiTools Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += bz2 c gdal jpeg m proj routino z

MODULES =		devel/cmake x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		archivers/bzip2 \
			devel/proj \
			geo/gdal,-main \
			geo/routino \
			graphics/jpeg \
			x11/qt6/qt5compat \
			x11/qt6/qtdeclarative \
			x11/qt6/qtpositioning \
			x11/qt6/qttools \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine

CONFIGURE_ARGS =	-Wno-dev

NO_TEST =		Yes

.include <bsd.port.mk>
