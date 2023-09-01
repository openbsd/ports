COMMENT =	PIM calendar support library
DISTNAME =	calendarsupport-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5CalendarSupport      1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5GuiAddons KF5Holidays
WANTLIB += KF5I18n KF5ItemModels KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem KPim5AkonadiCalendar KPim5AkonadiCore
WANTLIB += KPim5AkonadiNotes KPim5AkonadiWidgets KPim5CalendarUtils
WANTLIB += KPim5IdentityManagement KPim5Mime KPim5TextEdit Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml X11 m

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

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
		devel/libinotify \
		textproc/ktextaddons \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime  \
		x11/kde-applications/kpimtextedit

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
