# $OpenBSD: Makefile,v 1.2 2020/06/21 18:12:53 rsadowski Exp $

COMMENT =	libraries and daemons to implement searching in Akonadi
DISTNAME =	akonadi-search-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5AkonadiSearchCore           0.0 # 5.13.2
SHARED_LIBS +=  KF5AkonadiSearchDebug          0.0 # 5.13.2
SHARED_LIBS +=  KF5AkonadiSearchPIM            0.0 # 5.13.2
SHARED_LIBS +=  KF5AkonadiSearchXapian         0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiAgentBase KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5I18n
WANTLIB += KF5ItemModels KF5KCMUtils KF5Mime KF5Package KF5Plasma
WANTLIB += KF5Runner KF5Service KF5WidgetsAddons Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets Qt5Xml c m xapian

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	databases/xapian-core \
		devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kpackage \
		devel/kf5/krunner \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/plasma-framework \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
