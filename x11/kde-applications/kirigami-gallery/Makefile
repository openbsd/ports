COMMENT =	kirigami component gallery application
DISTNAME =	kirigami-gallery-${VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://apps.kde.org/de/kirigami2.gallery/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ItemModels Kirigami KirigamiPlatform
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Svg Qt6Widgets c m

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/kpackage

LIB_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/kitemmodels \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
