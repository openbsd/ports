COMMENT =	KDE terminal emulator
DISTNAME =	konsole-${VERSION}
CATEGORIES =	editors x11

SHARED_LIBS +=  konsoleprivate            10.1 # 17.08
SHARED_LIBS +=  konsoleapp                3.1  # 21

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6GlobalAccel KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Notifications KF6NotifyConfig
WANTLIB += KF6Parts KF6Pty KF6Service KF6Solid KF6SonnetUi KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Core
WANTLIB += Qt6Core5Compat Qt6DBus Qt6Gui Qt6Multimedia Qt6Network
WANTLIB += Qt6PrintSupport Qt6Widgets Qt6Xml X11 c icui18n icuuc
WANTLIB += m z

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kparts \
		devel/kf6/kpty \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		textproc/icu4c \
		x11/qt6/qt5compat \
		x11/qt6/qtmultimedia

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
