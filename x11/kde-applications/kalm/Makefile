COMMENT =	breathing techniques application
DISTNAME =	kalm-${VERSION}
CATEGORIES =	productivity

HOMEPAGE =	https://invent.kde.org/utilities/kalm

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_ICON_CACHE = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6Crash KF6I18n Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6Widgets c m

BUILD_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons

RUN_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
