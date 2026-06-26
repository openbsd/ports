COMMENT =	style for Qt/KDE Applications
DISTNAME =	oxygen-${VERSION}

SHARED_LIBS +=  oxygenstyle6              0.1 # 0.0
SHARED_LIBS +=  oxygenstyleconfig6        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6Style KF6WidgetsAddons KF6WindowSystem
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6Widgets X11 c kdecorations3 m xcb xkbcommon

MODKDE_TRANSLATIONS = Yes

BUILD_DEPENDS =	devel/kf6/kpackage \
		x11/kde-plasma/libplasma>=${VERSION} \

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/kf5/oxygen-icons \
		devel/kf6/kpackage

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

CONFIGURE_ARGS =	-DBUILD_QT5=OFF

# duplicates devel/kf5/oxygen-icons partially
post-install:
	rm -Rf ${PREFIX}/share/icons

.include <bsd.port.mk>
