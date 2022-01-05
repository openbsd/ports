# $OpenBSD: Makefile,v 1.10 2022/01/05 08:03:02 rsadowski Exp $

COMMENT =	KDE PIM messaging library
DISTNAME =	messagelib-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5MessageComposer       9.0 # 5.13.2
SHARED_LIBS +=  KF5MessageCore           3.0 # 5.13.2
SHARED_LIBS +=  KF5MessageList           5.0 # 5.13.2
SHARED_LIBS +=  KF5MessageViewer         6.0 # 5.13.2
SHARED_LIBS +=  KF5MimeTreeParser        4.0 # 5.13.2
SHARED_LIBS +=  KF5TemplateParser        3.0 # 5.13.2
SHARED_LIBS +=  KF5WebEngineViewer       6.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiSearchPIM KF5AkonadiWidgets
WANTLIB += KF5Archive KF5Auth KF5AuthCore KF5Bookmarks KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5GrantleeTheme
WANTLIB += KF5Gravatar KF5GuiAddons KF5I18n KF5IMAP KF5IconThemes
WANTLIB += KF5IdentityManagement KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Libkdepim KF5Libkleo KF5MailTransport KF5MailTransportAkonadi
WANTLIB += KF5Mbox KF5Mime KF5PimCommon KF5PimCommonAkonadi KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetCore KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml X11 assuan gpgme gpgmepp m qca-qt5
WANTLIB += qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

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
		security/libassuan \
		security/qca-qt5 \
		x11/grantlee-qt5 \
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
		x11/qt5/qtlocation \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Inotify=On
# XXX fix me
#CONFIGURE_ARGS +=	-DKDEPIM_RUN_AKONADI_TEST=OFF
CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib"

pre-configure:
	find ${WRKSRC}/{messagecomposer,templateparser,mimetreeparser,messageviewer} \
		-type f -name *.txt -exec sed -i \
		-e "s,QGpgme,qgpgme,g" -e "s,Gpgmepp,gpgmepp,g" {} +

.include <bsd.port.mk>
