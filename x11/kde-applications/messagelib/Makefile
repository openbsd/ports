# $OpenBSD: Makefile,v 1.2 2020/06/24 18:56:34 rsadowski Exp $

COMMENT =	KDE PIM messaging library
DISTNAME =	messagelib-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5MessageComposer       0.0 # 5.13.2
SHARED_LIBS +=  KF5MessageCore           0.0 # 5.13.2
SHARED_LIBS +=  KF5MessageList           0.0 # 5.13.2
SHARED_LIBS +=  KF5MessageViewer         0.0 # 5.13.2
SHARED_LIBS +=  KF5MimeTreeParser        0.0 # 5.13.2
SHARED_LIBS +=  KF5TemplateParser        0.0 # 5.13.2
SHARED_LIBS +=  KF5WebEngineViewer       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates Grantlee_TextDocument
WANTLIB += KF5AkonadiContact KF5AkonadiCore KF5AkonadiMime KF5AkonadiSearchPIM
WANTLIB += KF5AkonadiWidgets KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5FollowupReminder KF5GrantleeTheme KF5Gravatar KF5I18n
WANTLIB += KF5IMAP KF5IconThemes KF5IdentityManagement KF5ItemModels
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5KaddressbookGrantlee KF5Libkdepim
WANTLIB += KF5LibkdepimAkonadi KF5Libkleo KF5MailTransport KF5MailTransportAkonadi
WANTLIB += KF5Mbox KF5Mime KF5PimCommon KF5PimCommonAkonadi KF5PimTextEdit
WANTLIB += KF5SendLater KF5Service KF5Solid KF5SonnetCore KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += c gpgmepp m qca-qt5 qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost \
		devel/libinotify

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
		security/qca-qt5 \
		x11/grantlee-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kdepim-apps-libs \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmbox \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libgravatar \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/qt5/qtlocation \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Inotify=On

pre-configure:
	find ${WRKSRC}/{messagecomposer,templateparser,mimetreeparser,messageviewer} \
		-type f -name *.txt -exec sed -i \
		-e "s,QGpgme,qgpgme,g" -e "s,Gpgmepp,gpgmepp,g" {} +

.include <bsd.port.mk>
