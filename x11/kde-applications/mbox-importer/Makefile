COMMENT =	KMail mbox importer
DISTNAME =	mbox-importer-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiWidgets KF5Archive
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5Crash KF5GrantleeTheme KF5I18n KF5IMAP KF5IdentityManagement
WANTLIB += KF5IdentityManagementWidgets KF5ItemModels KF5KIOCore
WANTLIB += KF5Libkdepim KF5Libkleo KF5MailCommon KF5MailImporter
WANTLIB += KF5MailImporterAkonadi KF5MessageComposer KF5MessageCore
WANTLIB += KF5MessageViewer KF5Mime KF5MimeTreeParser KF5PimCommon
WANTLIB += KF5PimCommonAkonadi KF5PimCommonAutoCorrection KF5PimTextEdit
WANTLIB += KF5Service KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml assuan c gpgme
WANTLIB += gpgmepp m qgpgme

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DESKTOP_FILE = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/libinotify \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kmime \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/kde-applications/mailcommon \
		x11/kde-applications/messagelib

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/KF5/MessageViewer

.include <bsd.port.mk>
