COMMENT =	PIM calendar support library
DISTNAME =	calendarsupport-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6CalendarSupport      1.0 # 0.0

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6GuiAddons KF6Holidays KF6I18n KF6ItemModels
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service
WANTLIB += KF6TextCustomEditor KF6WidgetsAddons KPim6AkonadiCalendar
WANTLIB += KPim6AkonadiCalendarCore KPim6AkonadiCore KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiWidgets KPim6CalendarUtils KPim6IdentityManagementCore
WANTLIB += KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport
WANTLIB += Qt6Widgets m

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime>=${VERSION}

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
