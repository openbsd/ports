USE_WXNEEDED =	Yes

COMMENT =	KDE File Manager & Web Browser
DISTNAME =	konqueror-${VERSION}
CATEGORIES =	www

SHARED_LIBS +=	KF6Konq                   0.0 # 0.0
SHARED_LIBS +=  konquerorprivate     1.1 # 5.97.0
SHARED_LIBS +=  konqsidebarplugin    1.1 # 20.08.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6ItemViews KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6Parts KF6Pty KF6Service
WANTLIB += KF6Solid KF6SonnetCore KF6SonnetUi KF6Su KF6TextWidgets
WANTLIB += KF6Wallet KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += PlasmaActivities Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml X11 c m xkbcommon z

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	textproc/hunspell

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kdesu \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kparts \
		devel/kf6/kpty \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		x11/kde-plasma/plasma-activities \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/xkbcommon

.include <bsd.port.mk>
