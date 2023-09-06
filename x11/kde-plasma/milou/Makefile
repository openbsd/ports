COMMENT =	KDE5 Plasma Search and Launch
DISTNAME =	milou-${VERSION}

SHARED_LIBS =		milou		0.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5ItemModels KF5Package KF5Plasma KF5Runner KF5Service
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += Qt5Widgets m

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	x11/qt5/qtdeclarative

BUILD_DEPENDS =	devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		x11/qt5/qtdeclarative

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kitemmodels \
		devel/kf5/kpackage \
		devel/kf5/krunner \
		devel/kf5/kservice \
		devel/kf5/plasma-framework

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
