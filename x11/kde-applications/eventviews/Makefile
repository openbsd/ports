COMMENT =	KDE PIM library for creating events
DISTNAME =	eventviews-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5EventViews           1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5GuiAddons
WANTLIB += KF5Holidays KF5I18n KF5IconThemes KF5ItemModels KF5Service
WANTLIB += KF5WidgetsAddons KGantt KPim5AkonadiCalendar KPim5AkonadiCore
WANTLIB += KPim5AkonadiWidgets KPim5CalendarSupport KPim5CalendarUtils
WANTLIB += KPim5IdentityManagement KPim5Libkdepim KPim5Mime Qt5Core
WANTLIB += Qt5Gui Qt5PrintSupport Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		graphics/kdiagram \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/kde-applications/libkdepim

.include <bsd.port.mk>
