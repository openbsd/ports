# $OpenBSD: Makefile,v 1.13 2022/01/05 08:03:03 rsadowski Exp $

COMMENT =	KDE PIM data exporter
DISTNAME =	pim-data-exporter-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  pimdataexporterprivate       3.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiNotes KF5AkonadiWidgets
WANTLIB += KF5Archive KF5Auth KF5AuthCore KF5Bookmarks KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GrantleeTheme KF5I18n KF5IMAP KF5IdentityManagement
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5Libkdepim
WANTLIB += KF5Libkleo KF5MailCommon KF5MailTransport KF5MessageComposer
WANTLIB += KF5MessageCore KF5MessageViewer KF5Mime KF5MimeTreeParser
WANTLIB += KF5Notifications KF5PimCommon KF5PimCommonAkonadi KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui KUserFeedbackCore KUserFeedbackWidgets Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += X11 assuan c gpgme gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

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
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		security/gpgme,-qt \
		productivity/kuserfeedback \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/mailcommon \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
