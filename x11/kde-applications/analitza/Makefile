COMMENT =	KDE mathematical features
DISTNAME =	analitza-${VERSION}
CATEGORIES =	devel math

SHARED_LIBS +=  Analitza                  2.0 # 8.0
SHARED_LIBS +=  AnalitzaGui               2.0 # 8.0
SHARED_LIBS +=  AnalitzaPlot              2.0 # 8.0
SHARED_LIBS +=  AnalitzaWidgets           2.0 # 8.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Svg Qt6Widgets Qt6Xml
WANTLIB += m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	math/eigen3

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qt5compat \
		x11/qt6/qtsvg

.include <bsd.port.mk>
