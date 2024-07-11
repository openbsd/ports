COMMENT =	color contrast checker
DISTNAME =	kontrast-${VERSION}
# XXX Depends on FutureSQL
VERSION =	23.04.3
CATEGORIES =	x11 graphics
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Sql Qt6Svg Qt6Widgets
WANTLIB += c m

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

BUILD_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kdeclarative \
		devel/kf6/kirigami \
		devel/kf6/kpackage

RUN_DEPENDS =	devel/kf6/kirigami

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
