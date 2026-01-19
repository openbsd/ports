COMMENT =	themeable window decoration for KWin
DISTNAME =	aurorae-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6Package
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Qml Qt6Quick Qt6UiTools
WANTLIB += Qt6Widgets kdecorations3 m

MODKDE_TRANSLATIONS = Yes

BUILD_DEPENDS =	devel/kf6/knewstuff

RUN_DEPENDS =	devel/kf6/ksvg \
		devel/kf6/knewstuff

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kpackage \
		devel/kf6/kwidgetsaddons \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qttools

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
