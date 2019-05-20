# $OpenBSD: Makefile,v 1.14 2019/05/20 22:15:05 naddy Exp $

COMMENT =		legacy support for kdelibs-4.x compatibility
DISTNAME =		kdelibs4support-${VERSION}

SHARED_LIBS =		KF5KDELibs4Support	6.3

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5GlobalAccel
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Designer
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg Qt5Test Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 Xext c m

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kded \
			devel/kf5/kdesignerplugin \
			devel/kf5/kdoctools \
			devel/kf5/kemoticons \
			www/p5-URI

RUN_DEPENDS =		devel/kf5/kded \
			devel/kf5/kdesignerplugin \
			devel/kf5/kdoctools \
			devel/kf5/kemoticons \
			devel/kf5/kitemmodels

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/kglobalaccel \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/knotifications \
			devel/kf5/kparts \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kunitconversion \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			x11/qt5/qtsvg \
			x11/qt5/qttools \
			x11/qt5/qtx11extras

IS_PORTING_AID =	Yes

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_NetworkManager=Yes
# sucks
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
