COMMENT =	KDE PIM library for creating events
DISTNAME =	eventviews-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6EventViews           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6GuiAddons KF6Holidays
WANTLIB += KF6I18n KF6IconThemes KF6ItemModels KF6Service KF6WidgetsAddons
WANTLIB += KGantt6 KPim6AkonadiCalendar KPim6AkonadiCore KPim6AkonadiWidgets
WANTLIB += KPim6CalendarSupport KPim6CalendarUtils KPim6IdentityManagementCore
WANTLIB += KPim6Libkdepim KPim6Mime Qt6Core Qt6Gui Qt6PrintSupport
WANTLIB += Qt6Widgets m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime>=${MODKDE_GEAR_VERSION}

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kitemmodels \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		graphics/kdiagram-qt6 \
		x11/kde-applications/akonadi-calendar>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/calendarsupport>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kcalutils>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_GEAR_VERSION}

.include <bsd.port.mk>
