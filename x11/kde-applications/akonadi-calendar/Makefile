COMMENT =	PIM Akonadi calendar support library
DISTNAME =	akonadi-calendar-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KPim5AkonadiCalendar      1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5Codecs KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5ItemModels KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5Notifications KF5Service KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui KPim5AkonadiContact KPim5AkonadiCore KPim5AkonadiMime
WANTLIB += KPim5AkonadiWidgets KPim5CalendarUtils KPim5GrantleeTheme
WANTLIB += KPim5IMAP KPim5IdentityManagement KPim5IdentityManagementWidgets
WANTLIB += KPim5Libkdepim KPim5Libkleo KPim5MailTransport KPim5MessageComposer
WANTLIB += KPim5MessageCore KPim5Mime KPim5PimCommon KPim5PimCommonAkonadi
WANTLIB += KPim5TextEdit Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml X11 assuan c gpgme gpgmepp
WANTLIB += m qgpgme

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kwindowsystem \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/libassuan \
		security/gpgme \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kimap \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkleo \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
