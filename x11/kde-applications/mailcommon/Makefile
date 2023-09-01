COMMENT =	KDE PIM common mail library
DISTNAME =	mailcommon-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KPim5MailCommon           1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5SyntaxHighlighting KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiWidgets KPim5ContactEditor
WANTLIB += KPim5GrantleeTheme KPim5IMAP KPim5IdentityManagement
WANTLIB += KPim5IdentityManagementWidgets KPim5Libkdepim KPim5Libkleo
WANTLIB += KPim5MailImporter KPim5MailTransport KPim5MessageComposer
WANTLIB += KPim5MessageCore KPim5MessageList KPim5MessageViewer
WANTLIB += KPim5Mime KPim5MimeTreeParser KPim5PimCommon KPim5PimCommonAkonadi
WANTLIB += KPim5TemplateParser KPim5TextEdit Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 assuan
WANTLIB += gpgme gpgmepp m phonon4qt5 qgpgme

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

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
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		security/gpgme,-qt \
		devel/libinotify \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkleo \
		x11/kde-applications/mailimporter \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		multimedia/phonon

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
