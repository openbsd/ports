COMMENT =	core components and tools of the Plasma Workspaces
DISTNAME =	plasma-framework-${VERSION}

SHARED_LIBS =	KF5Plasma		11.1
SHARED_LIBS +=	KF5PlasmaQuick		8.1

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Activities KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5CalendarEvents KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Declarative KF5GlobalAccel KF5GuiAddons KF5I18n
WANTLIB += KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Kirigami2 KF5Notifications KF5Package KF5QuickAddons
WANTLIB += KF5Service KF5Solid KF5WaylandClient KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5Sql
WANTLIB += Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext c
WANTLIB += m xcb xcb-composite xcb-damage xcb-render xcb-shape
WANTLIB += xcb-xfixes

BUILD_DEPENDS =	archivers/bzip2 \
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
		devel/kf5/breeze-icons>=${MODKF5_VERSION} \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/kf5/oxygen-icons>=${MODKF5_VERSION} \
		devel/kf5/qqc2-desktop-style>=${MODKF5_VERSION} \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtwayland

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

# TODO: The following tests FAILED (some dependencies missing?):
# 1 - plasma-dialogqmltest (Failed)
# 3 - plasma-fallbackpackagetest (Failed)
# 4 - plasma-packagestructuretest (Failed)
# 8 - plasma-iconitemtest (OTHER_FAULT)
# 10 - plasma-configmodeltest (Failed)
# 11 - dialognativetest (Failed)
# 13 - plasma-storagetest (Failed)

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
