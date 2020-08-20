# $OpenBSD: Makefile,v 1.4 2020/08/20 18:00:15 rsadowski Exp $

COMMENT =	calendar and scheduling component of kontact
DISTNAME =	korganizer-${VERSION}
CATEGORIES =	net www
REVISION =	1

SHARED_LIBS +=  korganizer_core         0.0 # 5.13.2
SHARED_LIBS +=  korganizer_interfaces   0.0 # 5.13.2
SHARED_LIBS +=  korganizerprivate       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF5AkonadiCalendar KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiNotes KF5AkonadiSearchPIM
WANTLIB += KF5AkonadiWidgets KF5Attica KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5CalendarSupport KF5CalendarUtils KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5EventViews
WANTLIB += KF5Holidays KF5I18n KF5IMAP KF5IconThemes KF5IdentityManagement
WANTLIB += KF5IncidenceEditor KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOWidgets KF5KdepimDBusInterfaces
WANTLIB += KF5KontactInterface KF5Ldap KF5Libkdepim KF5LibkdepimAkonadi
WANTLIB += KF5MailTransport KF5MailTransportAkonadi KF5Mime KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Notifications KF5Parts KF5PimCommon
WANTLIB += KF5PimCommonAkonadi KF5PimTextEdit KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c m phonon4qt5

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

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
		devel/kf5/kdbusaddons \
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
		multimedia/phonon \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/akonadi-search \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/eventviews \
		x11/kde-applications/incidenceeditor \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kdepim-apps-libs \
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
