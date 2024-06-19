COMMENT =	integration of QML and KDE workspaces
DISTNAME =	kdeclarative-${VERSION}

SHARED_LIBS +=  KF6CalendarEvents         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6GlobalAccel
WANTLIB += KF6GuiAddons KF6I18n KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6Widgets m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt6/qtshadertools

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kglobalaccel>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
