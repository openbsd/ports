# $OpenBSD: Makefile,v 1.11 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =	core components and tools of the Plasma Workspaces
DISTNAME =	plasma-framework-${VERSION}

SHARED_LIBS =	KF5Plasma		5.1
SHARED_LIBS +=	KF5PlasmaQuick		5.1

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE KF5Activities KF5Archive
WANTLIB += KF5Auth KF5CalendarEvents KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Declarative
WANTLIB += KF5GlobalAccel KF5GuiAddons KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Notifications KF5Package
WANTLIB += KF5QuickAddons KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Sql Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml SM X11 Xext c m xcb xcb-composite xcb-damage
WANTLIB += xcb-render xcb-shape xcb-xfixes

BUILD_DEPENDS =	archivers/bzip2 \
		devel/gettext-tools \
		devel/kf5/kirigami2 \
		devel/kf5/kdbusaddons \
		devel/kf5/kdesu \
		devel/kf5/kdoctools \
		devel/kf5/kparts \
		devel/kf5/solid

RUN_DEPENDS =	archivers/bzip2 \
		devel/kf5/kdbusaddons \
		devel/kf5/kdoctools \
		devel/kf5/oxygen-icons

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kglobalaccel \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/knotifications \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras

#CONFIGURE_ARGS =	-DBUILD_EXAMPLES=Yes \
#			-DCMAKE_DISABLE_FIND_PACKAGE_KF5Wayland=Yes

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
