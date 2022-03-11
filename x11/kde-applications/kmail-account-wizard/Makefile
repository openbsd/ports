COMMENT =	KMail account wizard
DISTNAME =	kmail-account-wizard-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  kmailprivate       1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF5AkonadiCore KF5AkonadiMime
WANTLIB += KF5AkonadiWidgets KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5IdentityManagement
WANTLIB += KF5ItemModels KF5ItemViews KF5KCMUtils KF5KIOCore KF5KrossCore
WANTLIB += KF5Ldap KF5Libkdepim KF5Libkleo KF5MailTransport
WANTLIB += KF5Mime KF5NewStuff KF5NewStuffCore KF5Notifications
WANTLIB += KF5PimCommon KF5PimTextEdit KF5Service KF5Wallet KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Script Qt5Widgets Qt5Xml assuan c gpgme gpgmepp
WANTLIB += KF5MailTransportAkonadi m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/knotifyconfig \
		devel/kf5/ktexteditor

RUN_DEPENDS =	devel/kf5/knotifyconfig \
		misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kross \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kldap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkleo \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
