COMMENT =	KDE Mastodon client
DISTNAME =	tokodon-${VERSION}
CATEGORIES =	net

HOMEPAGE =	https://apps.kde.org/tokodon/

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6DBusAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Purpose KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6WindowSystem Kirigami KirigamiPlatform MpvQt Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6WebSockets Qt6WebView
WANTLIB += Qt6Widgets X11 c m mpv qt6keychain

BUILD_DEPENDS =	graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style \

RUN_DEPENDS =	graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style \

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
		devel/kf6/solid \
		security/qtkeychain,qt6 \
		multimedia/mpvqt \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebsockets \
		x11/qt6/qtwebview

# XXX
# KUnifiedPush, <https://invent.kde.org/libraries/kunifiedpush>

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
