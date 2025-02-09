COMMENT =	KDE advanced text editor
DISTNAME =	kate-${VERSION}
CATEGORIES =	editors

HOMEPAGE =	https://kate-editor.org/

SHARED_LIBS +=  kateprivate               5.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets KF6Parts
WANTLIB += KF6Service KF6Solid KF6SyntaxHighlighting KF6TextEditor
WANTLIB += KF6UserFeedbackCore KF6UserFeedbackWidgets KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Qml Qt6Sql Qt6Widgets Qt6Xml X11
WANTLIB += c intl m qt6keychain xkbcommon

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	devel/kf6/sonnet,-aspell \
		x11/kde-applications/kf6-kio-extras>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/konsole>=${MODKDE_GEAR_VERSION}

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
