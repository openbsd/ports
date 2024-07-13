COMMENT =	PIM Akonadi import wizard
DISTNAME =	akonadi-import-wizard-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6ImportWizard         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6I18n KF6ItemModels
WANTLIB += KF6KIOCore KF6Service KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6WidgetsAddons
WANTLIB += KF6XmlGui KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiWidgets
WANTLIB += KPim6GrantleeTheme KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6IdentityManagementWidgets KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MailCommon KPim6MailImporter KPim6MailImporterAkonadi
WANTLIB += KPim6MailTransport KPim6MessageComposer KPim6MessageCore
WANTLIB += KPim6MessageViewer KPim6Mime KPim6MimeTreeParser KPim6PimCommon
WANTLIB += KPim6PimCommonAkonadi KPim6TextEdit Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml assuan c gpgme
WANTLIB += gpgmepp m qgpgmeqt6 qt6keychain

MODKDE_TRANSLATIONS = yes
MODKDE_ICON_CACHE = yes
MODKDE_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		security/gpgme,-qt \
		security/libassuan \
		security/qtkeychain,qt6 \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_VERSION} \
		x11/kde-applications/mailimporter>=${MODKDE_VERSION} \
		x11/kde-applications/messagelib>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION}

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
