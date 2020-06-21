# $OpenBSD: Makefile,v 1.3 2020/06/21 18:12:53 rsadowski Exp $

COMMENT =	PIM calendar support library
DISTNAME =	calendarsupport-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5CalendarSupport       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiCore
WANTLIB += KF5AkonadiWidgets KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5CalendarUtils KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5Holidays KF5I18n KF5IdentityManagement KF5ItemModels
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5KdepimDBusInterfaces
WANTLIB += KF5Mime KF5PimCommon KF5PimTextEdit KF5Service KF5WidgetsAddons
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/kdepim-apps-libs \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime  \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
