COMMENT =	KDE Mastodon client
DISTNAME =	tokodon-${VERSION}
CATEGORIES =	net

HOMEPAGE =	https://apps.kde.org/tokodon/

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6I18n KF6I18nQml KF6IconThemes KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Purpose
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons KF6WindowSystem
WANTLIB += Kirigami KirigamiAddonsStatefulApp KirigamiPlatform
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6WebSockets Qt6WebView Qt6Widgets
WANTLIB += X11 c m qt6keychain

BUILD_DEPENDS =	devel/kf6/qqc2-desktop-style \

RUN_DEPENDS =	devel/kf6/qqc2-desktop-style \

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kirigami \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/purpose \
		graphics/kirigami-addons \
		devel/kf6/solid \
		security/qtkeychain,qt6 \
		devel/kf6/kcrash \
		devel/kf6/kiconthemes \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebsockets \
		x11/qt6/qtwebview \
		x11/qt6/qtmultimedia

# XXX
# KUnifiedPush, <https://invent.kde.org/libraries/kunifiedpush>

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
