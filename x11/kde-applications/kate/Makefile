COMMENT =	KDE advanced text editor
DISTNAME =	kate-${VERSION}
CATEGORIES =	editors

HOMEPAGE =	https://kate-editor.org/

SHARED_LIBS +=  kateprivate               5.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6Bookmarks
WANTLIB += KF6BookmarksWidgets KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6Parts KF6Service KF6Solid KF6SyntaxHighlighting
WANTLIB += KF6TextEditor KF6UserFeedbackCore KF6UserFeedbackWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Sql Qt6Widgets
WANTLIB += Qt6Xml X11 c intl m qt6keychain xkbcommon

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	devel/kf6/sonnet,-aspell \
		x11/kde-applications/kf6-kio-extras>=${VERSION} \
		x11/kde-applications/konsole>=${VERSION}

LIB_DEPENDS =	devel/kf6/attica \
		devel/gettext,-runtime \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/karchive \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/syntax-highlighting \
		security/qtkeychain,qt6 \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
