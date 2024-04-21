COMMENT =	core components and tools of the Plasma Workspaces
DISTNAME =	plasma-framework-${VERSION}
REVISION =	1

SHARED_LIBS =	KF5Plasma		12.4
SHARED_LIBS +=	KF5PlasmaQuick		9.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Activities KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5CalendarEvents KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigQml KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Declarative KF5GlobalAccel KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Kirigami2 KF5Notifications KF5Package
WANTLIB += KF5QuickAddons KF5Service KF5Solid KF5WaylandClient
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Sql Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += SM X11 Xext c m xcb xcb-composite xcb-damage xcb-render
WANTLIB += xcb-shape xcb-xfixes

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/gtar \
		devel/gettext,-tools \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/kdesu>=${MODKF5_VERSION} \
		devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/kf5/kirigami2>=${MODKF5_VERSION} \
		devel/kf5/kparts>=${MODKF5_VERSION} \
		devel/kf5/solid>=${MODKF5_VERSION} \
		x11/qt5/qtwayland \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	archivers/bzip2 \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/kf5/oxygen-icons>=${MODKF5_VERSION} \
		devel/kf5/qqc2-desktop-style>=${MODKF5_VERSION} \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtwayland

RUN_DEPENDS +=	devel/kf6/breeze-icons

LIB_DEPENDS =	devel/kf5/kactivities>=${MODKF5_VERSION} \
		devel/kf5/karchive>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kdeclarative>=${MODKF5_VERSION} \
		devel/kf5/kglobalaccel>=${MODKF5_VERSION} \
		devel/kf5/kguiaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kirigami2>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kpackage>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		devel/kf5/kwayland>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras

CONFIGURE_ARGS +=	-DBUILD_EXAMPLES=ON

# https://community.kde.org/Frameworks/6.0_Release_notes
CONFIGURE_ARGS +=	-DBUILD_DESKTOPTHEMES=OFF

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
