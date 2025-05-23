COMMENT =	KDE PIM common mail library
DISTNAME =	mailcommon-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6MailCommon           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6IconWidgets KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6Solid
WANTLIB += KF6SyntaxHighlighting KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6WidgetsAddons
WANTLIB += KF6XmlGui KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiWidgets
WANTLIB += KPim6GrantleeTheme KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6IdentityManagementWidgets KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MailImporter KPim6MailTransport KPim6MessageComposer
WANTLIB += KPim6MessageCore KPim6MessageList KPim6MessageViewer
WANTLIB += KPim6Mime KPim6MimeTreeParser KPim6PimCommon KPim6PimCommonActivities
WANTLIB += KPim6PimCommonAkonadi KPim6TemplateParser KPim6TextEdit
WANTLIB += PlasmaActivities Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Widgets Qt6Xml assuan gpgme gpgmepp m
WANTLIB += qgpgmeqt6

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/syntax-highlighting \
		x11/kde-plasma/plasma-activities  \
		security/gpgme,-qt \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/mailimporter>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtmultimedia

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
