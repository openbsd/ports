COMMENT =	KDE PIM data exporter
DISTNAME =	pim-data-exporter-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  pimdataexporterprivate    0.0 # 0.0
WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Bookmarks KF5CalendarCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5Contacts KF5CoreAddons KF5Crash KF5DBusAddons KF5I18n
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui KPim5AkonadiContact
WANTLIB += KPim5AkonadiCore KPim5AkonadiMime KPim5AkonadiNotes
WANTLIB += KPim5AkonadiWidgets KPim5GrantleeTheme KPim5IMAP KPim5IdentityManagement
WANTLIB += KPim5IdentityManagementWidgets KPim5Libkdepim KPim5Libkleo
WANTLIB += KPim5MailCommon KPim5MailTransport KPim5MessageComposer
WANTLIB += KPim5MessageCore KPim5Mime KPim5PimCommon KPim5PimCommonAkonadi
WANTLIB += KPim5TextEdit KUserFeedbackCore KUserFeedbackWidgets
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml X11 assuan c gpgme gpgmepp m qgpgme

WANTLIB += lib/inotify/inotify





MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

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
		devel/libinotify \
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

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
