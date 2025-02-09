COMMENT =	color contrast checker
DISTNAME =	kontrast-${VERSION}
CATEGORIES =	x11 graphics

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6Crash KF6I18n
WANTLIB += QCoro6Core Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2 Qt6Sql
WANTLIB += Qt6Svg Qt6Widgets c futuresql6 m

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kdeclarative \
		devel/kf6/kirigami \
		graphics/kirigami-addons \
		devel/kf6/kpackage

RUN_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons

LIB_DEPENDS =	databases/futuresql \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/qcoro,qt6 \
		x11/qt6/qtdeclarative \
		devel/kf6/kcrash \
		x11/qt6/qtsvg

.include <bsd.port.mk>
