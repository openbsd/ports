COMMENT =	UnifiedPush client components
VERSION =	25.04.3
DISTNAME =	kunifiedpush-${VERSION}
CATEGORIES =	devel net

HOMEPAGE =	https://invent.kde.org/libraries/kunifiedpush

SHARED_LIBS +=  KUnifiedPush              0.0 # 0.0

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6Service Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Qml Qt6WebSockets c m

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kservice \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebsockets

.include <bsd.port.mk>
