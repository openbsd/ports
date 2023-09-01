COMMENT =	calendar and scheduling component of kontact
DISTNAME =	korganizer-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  korganizer_core         3.1 # 5.13.2
SHARED_LIBS +=  korganizer_interfaces   1.1 # 5.13.2
SHARED_LIBS +=  korganizerprivate       7.1 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL Grantlee_Templates KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5CalendarCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5Crash KF5Holidays KF5I18n KF5IconThemes
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5NewStuffWidgets KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KPim5AkonadiCalendar KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiNotes KPim5AkonadiWidgets
WANTLIB += KPim5CalendarSupport KPim5CalendarUtils KPim5ContactEditor
WANTLIB += KPim5EventViews KPim5GrantleeTheme KPim5IMAP KPim5IdentityManagement
WANTLIB += KPim5IncidenceEditor KPim5KontactInterface KPim5Ldap
WANTLIB += KPim5Libkdepim KPim5MailTransport KPim5Mime KPim5PimCommon
WANTLIB += KPim5PimCommonAkonadi KPim5TextEdit KUserFeedbackCore
WANTLIB += KUserFeedbackWidgets Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += X11 c m

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		productivity/kuserfeedback \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/eventviews \
		x11/kde-applications/incidenceeditor \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kldap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

pre-configure:
	find ${WRKSRC} -type f \( -name \*.cpp -o -name \*.h \) -exec \
		sed -i -e 's,#include <phonon,#include <phonon4qt5/phonon,g' {} +

.include <bsd.port.mk>
