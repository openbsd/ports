COMMENT =	KDE advanced text editor
DISTNAME =	kate-${VERSION}
CATEGORIES =	editors

HOMEPAGE =	https://kate-editor.org/

SHARED_LIBS +=  kateprivate               4.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Attica KF5Auth
WANTLIB += KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOGui
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5NewStuffWidgets
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextEditor KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KUserFeedbackCore KUserFeedbackWidgets
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml X11 c intl m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kinit \
		devel/kf5/kactivities \
		devel/kf5/syntax-highlighting

RUN_DEPENDS =	devel/kf5/kinit \
		devel/kf5/kactivities \
		devel/kf5/sonnet,-aspell \
		devel/kf5/syntax-highlighting \
		x11/kde-applications/kio-extras \
		x11/kde-applications/konsole

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kactivities \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		productivity/kuserfeedback

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
