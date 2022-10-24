COMMENT =	KDE PIM messaging library
DISTNAME =	messagelib-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5MessageComposer       11.0 # 5.13.2
SHARED_LIBS +=  KF5MessageCore           3.1 # 5.13.2
SHARED_LIBS +=  KF5MessageList           6.0 # 5.13.2
SHARED_LIBS +=  KF5MessageViewer         6.3 # 5.13.2
SHARED_LIBS +=  KF5MimeTreeParser        4.1 # 5.13.2
SHARED_LIBS +=  KF5TemplateParser        3.0 # 5.13.2
SHARED_LIBS +=  KF5WebEngineViewer       7.1 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiSearchPIM KF5AkonadiWidgets
WANTLIB += KF5Archive KF5Auth KF5AuthCore KF5Bookmarks KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5GrantleeTheme
WANTLIB += KF5Gravatar KF5GuiAddons KF5I18n KF5IMAP KF5IconThemes
WANTLIB += KF5IdentityManagement KF5IdentityManagementWidgets
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5Libkdepim
WANTLIB += KF5Libkleo KF5MailTransport KF5MailTransportAkonadi
WANTLIB += KF5Mbox KF5Mime KF5Notifications KF5PimCommon KF5PimCommonAkonadi
WANTLIB += KF5PimTextEdit KF5Service KF5Solid KF5SonnetCore KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 assuan gpgme
WANTLIB += gpgmepp m qca-qt5 qgpgme

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		devel/libinotify \
		security/libassuan \
		security/qca-qt5 \
		x11/grantlee-qt5 \
		security/gpgme,-qt \
		security/gpgme \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmbox \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libgravatar \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/kde-applications/libkleo \
		x11/qt5/qtlocation \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/QGpgME -I${LOCALBASE}/include/gpgme++
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

# XXX fix me
#CONFIGURE_ARGS +=	-DKDEPIM_RUN_AKONADI_TEST=OFF

pre-configure:
	find ${WRKSRC}/{messagecomposer,templateparser,mimetreeparser,messageviewer} \
		-type f -name *.txt -exec sed -i \
		-e "s,QGpgme,qgpgme,g" -e "s,Gpgmepp,gpgmepp,g" {} +

.include <bsd.port.mk>
