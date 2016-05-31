# $OpenBSD: Makefile,v 1.2 2016/05/31 06:25:18 zhuk Exp $

COMMENT =		legacy support for kdelibs-4.x compatibility
DISTNAME =		kdelibs4support-${VERSION}

SHARED_LIBS =		KF5KDELibs4Support	0.0

WANTLIB =  ICE KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GlobalAccel KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5UnitConversion
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Designer Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Test Qt5Widgets Qt5X11Extras Qt5Xml SM X11
WANTLIB += Xext c m

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kded \
			devel/kf5/kdesignerplugin \
			devel/kf5/kdoctools \
			www/p5-URI

RUN_DEPENDS =		devel/kf5/kded \
			devel/kf5/kdesignerplugin \
			devel/kf5/kdoctools \
			devel/kf5/kemoticons \
			devel/kf5/kitemmodels

LIB_DEPENDS =		devel/kf5/kcompletion \
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
			devel/kf5/kxmlgui

IS_PORTING_AID =	Yes

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_NetworkManager=Yes

# TODO: The following tests FAILED:
#         18 - ktabwidget_unittest (Failed)
#         24 - ksavefiletest (Failed)
#         27 - kmimetypetest (Failed)
#         29 - kstandarddirstest (Failed)

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
