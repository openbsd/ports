COMMENT =	KMail mbox importer
DISTNAME =	mbox-importer-${VERSION}

CATEGORIES =	devel
WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5ItemModels KF5KIOCore KF5Service KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5WidgetsAddons KPim5AkonadiContact
WANTLIB += KPim5AkonadiCore KPim5AkonadiMime KPim5AkonadiWidgets
WANTLIB += KPim5GrantleeTheme KPim5IMAP KPim5IdentityManagement
WANTLIB += KPim5IdentityManagementWidgets KPim5Libkdepim KPim5Libkleo
WANTLIB += KPim5MailCommon KPim5MailImporter KPim5MailImporterAkonadi
WANTLIB += KPim5MessageComposer KPim5MessageCore KPim5Mime KPim5PimCommon
WANTLIB += KPim5PimCommonAkonadi KPim5TextEdit Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml assuan
WANTLIB += c gpgme gpgmepp m qgpgme

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

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
