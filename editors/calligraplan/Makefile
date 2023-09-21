COMMENT =	KDE Calligra project management application

VERSION =	3.3.0
DISTNAME =	calligraplan-${VERSION}
REVISION =	0

CATEGORIES =	editors x11

HOMEPAGE =	https://calligra.org/plan/

SHARED_LIBS +=  plankernel                0.0 # 0.0
SHARED_LIBS +=  plankundo2                0.0 # 0.0
SHARED_LIBS +=  planmain                  0.0 # 0.0
SHARED_LIBS +=  planmodels                0.0 # 0.0
SHARED_LIBS +=  planodf                   0.0 # 0.0
SHARED_LIBS +=  planplugin                0.0 # 0.0
SHARED_LIBS +=  planprivate               0.0 # 0.0
SHARED_LIBS +=  planstore                 0.0 # 0.0
SHARED_LIBS +=  planui                    0.0 # 0.0
SHARED_LIBS +=  planwidgets               0.0 # 0.0
SHARED_LIBS +=  planwidgetutils           0.0 # 0.0
SHARED_LIBS +=  planworkfactory           0.0 # 0.0

DIST_SUBDIR =	kde
SITES =		${SITE_KDE:=stable/calligra/${VERSION}/}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

DPB_PROPERTIES =	parallel

WANTLIB += ${COMPILER_LIBCXX} ICE KChart KF5Activities KF5Archive
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5GuiAddons KF5Holidays KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIONTLM KF5KIOWidgets KF5Notifications
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KGantt Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5X11Extras Qt5Xml SM X11
WANTLIB += Xext c m qca-qt5

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		devel/kf5/threadweaver

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		devel/kf5/kinit \
		devel/kf5/threadweaver \
		misc/shared-mime-info \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs\
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons\
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		graphics/kdiagram \
		security/qca-qt5 \
		x11/qt5/qtx11extras

# Running D-Bus daemon is required
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
