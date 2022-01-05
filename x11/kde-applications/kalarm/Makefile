# $OpenBSD: Makefile,v 1.13 2022/01/05 08:02:53 rsadowski Exp $

COMMENT =	personal alarm message, command and email scheduler
DISTNAME =	kalarm-${VERSION}
CATEGORIES =	productivity

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiWidgets KF5AlarmCalendar
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5CalendarCore KF5CalendarUtils
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GlobalAccel KF5GrantleeTheme KF5GuiAddons
WANTLIB += KF5Holidays KF5I18n KF5IdentityManagement KF5IdleTime
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5MailTransport
WANTLIB += KF5MailTransportAkonadi KF5Mime KF5Notifications KF5NotifyConfig
WANTLIB += KF5PimCommon KF5PimTextEdit KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml X11 c m phonon4qt5

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		x11/kde-applications/mailcommon

RUN_DEPENDS =	x11/dbus,-suid \
		x11/kde-applications/kdepim-runtime \
		x11/kde-applications/mailcommon

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/knotifyconfig \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kidletime \
		devel/kf5/kdbusaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/kguiaddons \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		multimedia/phonon \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kalarmcal \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/pimcommon \
		x11/qt5/qtx11extras

pre-configure:
	find ${WRKSRC} -type f \( -name \*.cpp -o -name \*.h \) -exec \
		sed -i -e 's,#include <phonon,#include <phonon4qt5/phonon,g' {} +

.include <bsd.port.mk>
