COMMENT =	certificate manager and a universal crypto GUI
DISTNAME =	kleopatra-${VERSION}
CATEGORIES =	security x11

SHARED_LIBS +=  kleopatraclientcore     1.0 # 1.3.0
SHARED_LIBS +=  kleopatraclientgui      1.0 # 1.3.0

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiMime KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5I18n KF5IconThemes
WANTLIB += KF5IdentityManagement KF5ItemModels KF5Libkleo KF5MailTransport
WANTLIB += KF5MailTransportAkonadi KF5Mime KF5Notifications KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml X11 assuan c gpg-error gpgme gpgmepp
WANTLIB += m qgpgme

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

RUN_DEPENDS =	security/gnupg \
		misc/shared-mime-info

BUILD_DEPENDS =	devel/boost \
		devel/git

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/knotifications \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		security/gpgme,-qt \
		security/libassuan \
		security/libgpg-error \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime \
		x11/kde-applications/libkleo

CXXFLAGS +=	-I${LOCALBASE}/include/KF5/Libkleo/
CFLAGS +=	-I${LOCALBASE}/include/KF5/Libkleo/

.include <bsd.port.mk>
