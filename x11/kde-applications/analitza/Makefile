# $OpenBSD $

COMMENT =	KDE mathematical features
DISTNAME =	analitza-${VERSION}
CATEGORIES =	devel math

SHARED_LIBS +=  Analitza                  1.0 # 8.0
SHARED_LIBS +=  AnalitzaGui               1.0 # 8.0
SHARED_LIBS +=  AnalitzaPlot              1.0 # 8.0
SHARED_LIBS +=  AnalitzaWidgets           1.0 # 8.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5Svg Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	math/eigen3 \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtsvg

.include <bsd.port.mk>
