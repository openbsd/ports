COMMENT =	KDE Mastodon client
DISTNAME =	tokodon-${VERSION}
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	https://apps.kde.org/tokodon/

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6I18n KF6I18nQml KF6IconThemes KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Purpose
WANTLIB += KF6Service KF6WidgetsAddons KF6WindowSystem Kirigami
WANTLIB += KirigamiAddonsStatefulApp KirigamiPlatform QCoro6Core
WANTLIB += QCoro6Network Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6QuickControls2 Qt6WebSockets
WANTLIB += Qt6WebView Qt6Widgets X11 c m qt6keychain

BUILD_DEPENDS =	devel/kf6/qqc2-desktop-style

RUN_DEPENDS =	devel/kf6/qqc2-desktop-style

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kirigami \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/purpose \
		devel/qcoro \
		graphics/kirigami-addons \
		security/qtkeychain,qt6 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtwebsockets \
		x11/qt6/qtwebview

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
