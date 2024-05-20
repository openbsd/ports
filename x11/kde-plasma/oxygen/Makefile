COMMENT =		style for Qt/KDE Applications
DISTNAME =		oxygen-${VERSION}

SHARED_LIBS =   oxygenstyle5              1.0 # 0.0
SHARED_LIBS +=  oxygenstyleconfig5        0.0 # 0.0

SHARED_LIBS +=  oxygenstyle6              0.0 # 0.0
SHARED_LIBS +=  oxygenstyleconfig6        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5GuiAddons KF5I18n KF5Style KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6Style KF6WidgetsAddons KF6WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets X11
WANTLIB += c kdecorations2 m xcb xkbcommon

MODKDE5_TRANSLATIONS = Yes

MODULES +=	x11/qt5

BUILD_DEPENDS =	devel/kf6/kpackage \
		devel/kf5/kpackage \
		x11/kde-plasma/libplasma>=${VERSION} \

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/kf6/kpackage \
		devel/kf6/breeze-icons

# KDE5
LIB_DEPENDS =	devel/kf5/frameworkintegration \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		x11/qt5/qtdeclarative \
		x11/qt5/qtx11extras

# KDE5
LIB_DEPENDS +=	devel/kf6/kcolorscheme \
		devel/kf6/frameworkintegration \
		devel/kf6/kcmutils \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem  \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/xkbcommon


# duplicates devel/kf5/oxygen-icons partially
post-install:
	rm -Rf ${PREFIX}/share/icons

.include <bsd.port.mk>
