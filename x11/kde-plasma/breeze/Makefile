COMMENT =	Breeze KDE desktop theme
DISTNAME =	breeze-${VERSION}

MODKDE_TRANSLATIONS = Yes
MODKDE_ICON_CACHE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6Style KF6WidgetsAddons KF6WindowSystem KirigamiPlatform
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6Widgets X11 c kdecorations2
WANTLIB += m

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/breeze-icons

LIB_DEPENDS =	devel/kf6/frameworkintegration \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kirigami \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/qt6/qtdeclarative

CONFIGURE_ARGS =	-DBUILD_QT6=ON \
			-DBUILD_QT5=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
