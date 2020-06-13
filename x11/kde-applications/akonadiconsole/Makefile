# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 19:13:08 rsadowski Exp $

COMMENT =	Akonadi management and debugging console
DISTNAME =	akonadiconsole-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  akonadiconsole       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiPrivate KF5AkonadiSearchCore
WANTLIB += KF5AkonadiSearchXapian KF5AkonadiWidgets KF5AkonadiXml
WANTLIB += KF5Auth KF5AuthCore KF5CalendarCore KF5CalendarSupport
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5IdentityManagement KF5ItemModels
WANTLIB += KF5ItemViews KF5KIOCore KF5Libkdepim KF5Libkleo KF5MessageCore
WANTLIB += KF5MessageViewer KF5Mime KF5MimeTreeParser KF5PimCommon
WANTLIB += KF5PimTextEdit KF5Service KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml c gpgmepp m qgpgme xapian

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

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

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
