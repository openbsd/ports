COMMENT =	color contrast checker
DISTNAME =	kontrast-${VERSION}
CATEGORIES =	x11 graphics

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n QCoro6Core
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6QuickControls2 Qt6Sql Qt6Svg
WANTLIB += Qt6Widgets c futuresql6 m

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kdeclarative \
		devel/kf6/kirigami \
		devel/kf6/kpackage

RUN_DEPENDS =	devel/kf6/kirigami

LIB_DEPENDS =	databases/futuresql \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/qcoro,qt6 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
