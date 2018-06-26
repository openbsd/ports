# $OpenBSD $

COMMENT =	KDE mathematical features
DISTNAME =	analitza-${VERSION}
CATEGORIES =	devel math

KDE5 =		Yes

SHARED_LIBS +=  Analitza                  0.0 # 8.0
SHARED_LIBS +=  AnalitzaGui               0.0 # 8.0
SHARED_LIBS +=  AnalitzaPlot              0.0 # 8.0
SHARED_LIBS +=  AnalitzaWidgets           0.0 # 8.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5Svg Qt5Widgets Qt5Xml m

BUILD_DEPENDS +=	devel/gettext-tools \
			math/eigen3 \

LIB_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtsvg

.include <bsd.port.mk>
