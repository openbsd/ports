# $OpenBSD: Makefile,v 1.7 2021/09/10 08:43:48 rsadowski Exp $

COMMENT =	Akonadi management and debugging console
DISTNAME =	akonadiconsole-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  akonadiconsole       1.1 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiPrivate KF5AkonadiSearchCore
WANTLIB += KF5AkonadiSearchXapian KF5AkonadiWidgets KF5AkonadiXml
WANTLIB += KF5Auth KF5AuthCore KF5CalendarCore KF5CalendarSupport
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GrantleeTheme KF5I18n KF5IdentityManagement
WANTLIB += KF5ItemModels KF5ItemViews KF5KIOCore KF5Libkdepim
WANTLIB += KF5Libkleo KF5MessageCore KF5MessageViewer KF5Mime
WANTLIB += KF5MimeTreeParser KF5PimCommon KF5PimTextEdit KF5Service
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Sql Qt5Widgets Qt5Xml assuan c gpgme gpgmepp m qgpgme
WANTLIB += xapian

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost \
		devel/libinotify

LIB_DEPENDS =	databases/xapian-core \
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
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon

CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include/KF5" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include/KF5"

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
