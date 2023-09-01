COMMENT =	KDE PIM incidence editor
DISTNAME =	incidenceeditor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5IncidenceEditor      1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KGantt KPim5AkonadiCalendar KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiWidgets KPim5CalendarSupport
WANTLIB += KPim5CalendarUtils KPim5EventViews KPim5GrantleeTheme
WANTLIB += KPim5IMAP KPim5IdentityManagement KPim5Ldap KPim5Libkdepim
WANTLIB += KPim5Mime KPim5PimCommon KPim5PimCommonAkonadi KPim5TextEdit
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml X11 c m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	graphics/kdiagram \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kcalendarcore \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/kde-applications/pimcommon \
		x11/kde-applications/kldap \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/eventviews


TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
