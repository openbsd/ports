COMMENT =	KDE Calligra project management application

VERSION =	4.0.1
DISTNAME =	calligraplan-${VERSION}
REVISION =	0

CATEGORIES =	editors x11

HOMEPAGE =	https://calligra.org/plan/

SHARED_LIBS +=	calligraplankernel        0.0 # 0.0
SHARED_LIBS +=	calligraplankundo2        0.0 # 0.0
SHARED_LIBS +=	calligraplanmain          0.0 # 0.0
SHARED_LIBS +=	calligraplanmodels        0.0 # 0.0
SHARED_LIBS +=	calligraplanodf           0.0 # 0.0
SHARED_LIBS +=	calligraplanplugin        0.0 # 0.0
SHARED_LIBS +=	calligraplanportfolioprivate 0.0 # 0.0
SHARED_LIBS +=	calligraplanprivate       0.0 # 0.0
SHARED_LIBS +=	calligraplanstore         0.0 # 0.0
SHARED_LIBS +=	calligraplantjscheduler   0.0 # 0.0
SHARED_LIBS +=	calligraplanui            0.0 # 0.0
SHARED_LIBS +=	calligraplanwidgets       0.0 # 0.0
SHARED_LIBS +=	calligraplanwidgetutils   0.0 # 0.0
SHARED_LIBS +=	calligraplanworkprivate   0.0 # 0.0

DIST_SUBDIR =	kde
SITES =		${SITE_KDE:=stable/calligraplan/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

DPB_PROPERTIES =	parallel

WANTLIB += ${COMPILER_LIBCXX} GL ICE KChart6 KF6Archive KF6Bookmarks
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6DBusAddons KF6GuiAddons
WANTLIB += KF6Holidays KF6I18n KF6IconThemes KF6IconWidgets KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6Parts KF6Service
WANTLIB += KF6Solid KF6SonnetUi KF6TextWidgets KF6Wallet KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KGantt6 Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6PrintSupport Qt6Widgets Qt6Xml SM X11
WANTLIB += Xext c m qca-qt6

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools \
		x11/kde-plasma/plasma-activities \
		devel/kf6/threadweaver

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		x11/kde-plasma/plasma-activities \
		devel/kf6/threadweaver \
		misc/shared-mime-info \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons\
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		graphics/kdiagram \
		security/qca-qt6

# Running D-Bus daemon is required
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
