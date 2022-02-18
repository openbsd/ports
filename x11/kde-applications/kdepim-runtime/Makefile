# $OpenBSD: Makefile,v 1.16 2022/02/18 09:49:50 rsadowski Exp $

USE_WXNEEDED =	Yes

COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-runtime-${VERSION}
PKGNAME =	kdepim-runtime-kf5-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  akonadi-filestore           1.0 # 5.13.2
SHARED_LIBS +=  akonadi-singlefileresource  1.0 # 5.13.2
SHARED_LIBS +=  folderarchivesettings       1.0 # 5.13.2
SHARED_LIBS +=  kmindexreader               1.0 # 5.13.2
SHARED_LIBS +=  maildir                     1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiAgentBase
WANTLIB += KF5AkonadiCalendar KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiNotes KF5AkonadiWidgets KF5AlarmCalendar
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5CalendarCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5Contacts KF5CoreAddons KF5DAV KF5GrantleeTheme KF5Holidays
WANTLIB += KF5I18n KF5IMAP KF5IdentityManagement KF5ItemModels
WANTLIB += KF5ItemViews KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIONTLM KF5KIOWidgets KF5Ldap KF5Libkdepim
WANTLIB += KF5MailTransport KF5MailTransportAkonadi KF5Mbox KF5Mime
WANTLIB += KF5Notifications KF5NotifyConfig KF5PimTextEdit KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KPimGAPICalendar KPimGAPIContacts
WANTLIB += KPimGAPICore KPimGAPITasks Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5NetworkAuth Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5TextToSpeech Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += X11 c m qca-qt5 qt5keychain sasl2


MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdav \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		security/cyrus-sasl2 \
		security/qca-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/kalarmcal \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kldap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmbox \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkgapi \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtnetworkauth \
		x11/qt5/qtspeech \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
