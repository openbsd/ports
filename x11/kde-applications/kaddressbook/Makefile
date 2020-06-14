# $OpenBSD: Makefile,v 1.1.1.1 2020/06/14 04:04:41 rsadowski Exp $

COMMENT =	addressbook viewer/frontend for KDE
DISTNAME =	kaddressbook-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  kaddressbookprivate       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiSearchDebug KF5AkonadiWidgets KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5GrantleeTheme KF5I18n KF5IMAP KF5ItemModels KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOWidgets KF5KaddressbookGrantlee
WANTLIB += KF5KaddressbookImportExport KF5KontactInterface KF5Libkdepim
WANTLIB += KF5Mime KF5Parts KF5PimCommon KF5PimCommonAkonadi KF5Prison
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
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
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/prison \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kdepim-apps-libs \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon

pre-configure:
	sed -i -e "s,QGpgme,qgpgme,g" -e "s,Gpgmepp,gpgmepp,g" \
		${WRKSRC}/src/CMakeLists.txt

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
