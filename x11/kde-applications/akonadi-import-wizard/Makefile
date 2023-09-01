COMMENT =	PIM Akonadi import wizard
DISTNAME =	akonadi-import-wizard-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5ImportWizard         1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5ItemModels KF5KIOCore KF5Service
WANTLIB += KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiWidgets KPim5GrantleeTheme
WANTLIB += KPim5IMAP KPim5IdentityManagement KPim5IdentityManagementWidgets
WANTLIB += KPim5Libkdepim KPim5Libkleo KPim5MailCommon KPim5MailImporter
WANTLIB += KPim5MailImporterAkonadi KPim5MailTransport KPim5MessageComposer
WANTLIB += KPim5MessageCore KPim5MessageViewer KPim5Mime KPim5MimeTreeParser
WANTLIB += KPim5PimCommon KPim5PimCommonAkonadi KPim5TextEdit
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml assuan c gpgme gpgmepp m qgpgme qt5keychain

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/gpgme,-qt \
		devel/libinotify \
		x11/kde-applications/akonadi \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkleo \
		x11/kde-applications/mailimporter \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		x11/kde-applications/mailcommon

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
