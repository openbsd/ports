COMMENT =	KMail mbox importer
DISTNAME =	mbox-importer-${VERSION}

CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6Crash KF6I18n KF6IconThemes KF6ItemModels
WANTLIB += KF6KIOCore KF6Mime KF6Service KF6SonnetUi KF6SyntaxHighlighting
WANTLIB += KF6TextAddonsWidgets KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6WidgetsAddons
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiWidgets KPim6GrantleeTheme KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6IdentityManagementWidgets KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MailCommon KPim6MailImporter KPim6MailImporterAkonadi
WANTLIB += KPim6MessageComposer KPim6MessageCore KPim6MessageList
WANTLIB += KPim6MessageViewer KPim6MimeTreeParser KPim6PimCommon
WANTLIB += KPim6PimCommonAkonadi KPim6TextEdit Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets c gpg-error gpgme gpgmepp
WANTLIB += m qgpgmeqt6

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/ktexttemplate \
		devel/kf6/kmime \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kservice \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		security/qgpgme \
		textproc/ktextaddons \
		devel/kf6/kiconthemes \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/mailcommon>=${VERSION} \
		x11/kde-applications/mailimporter>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
