COMMENT =	libraries and daemons to implement searching in Akonadi
DISTNAME =	akonadi-search-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5AkonadiSearchCore           1.0 # 5.13.2
SHARED_LIBS +=  KPim5AkonadiSearchDebug          3.0 # 5.13.2
SHARED_LIBS +=  KPim5AkonadiSearchPIM            1.0 # 5.13.2
SHARED_LIBS +=  KPim5AkonadiSearchXapian         1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5I18n
WANTLIB += KF5ItemModels KF5KCMUtils KF5Package KF5Plasma KF5Runner
WANTLIB += KF5Service KF5WidgetsAddons KPim5AkonadiAgentBase KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5Mime Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml c m xapian

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes

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
		devel/libinotify \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
