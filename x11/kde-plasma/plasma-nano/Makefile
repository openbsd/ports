COMMENT =	minimal Plasma shell package
DISTNAME =	plasma-nano-${VERSION}

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Service KF6WindowSystem KWaylandClient
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick X11 m

BUILD_DEPENDS =	devel/kf6/kitemmodels \
		devel/kf6/ki18n \
		x11/kde-plasma/libplasma>=${VERSION}

LIB_DEPENDS =	devel/kf6/kservice \
		x11/kde-plasma/kwayland>=${VERSION} \
		devel/kf6/kwindowsystem \
		x11/qt6/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
