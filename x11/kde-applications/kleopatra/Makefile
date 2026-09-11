COMMENT =	certificate manager and a universal crypto GUI
DISTNAME =	kleopatra-${VERSION}
CATEGORIES =	security x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6ItemModels KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Mime KF6Notifications KF6Service KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiPrivate KPim6IdentityManagementCore KPim6Libkleo
WANTLIB += KPim6MailTransport KPim6MimeTreeParserWidgets Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport Qt6Widgets
WANTLIB += Qt6Xml X11 assuan c gpg-error gpgme gpgmepp kdsingleapplication-qt6
WANTLIB += m qgpgmeqt6

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

RUN_DEPENDS =	security/gnupg \
		misc/shared-mime-info

BUILD_DEPENDS =	devel/boost \
		devel/git

LIB_DEPENDS =	devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kmime \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/kguiaddons \
		security/qgpgme \
		security/libassuan \
		security/libgpg-error \
		x11/kdsingleapplication \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/mimetreeparser>=${VERSION}

.include <bsd.port.mk>
