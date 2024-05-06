COMMENT =	KDE Mastodon client
DISTNAME =	tokodon-${VERSION}
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	https://apps.kde.org/tokodon/

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Kirigami2 KF5Notifications KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickControls2 Qt5WebSockets Qt5Widgets
WANTLIB += Qt5Xml KF5Purpose X11 c m mpv qt5keychain

BUILD_DEPENDS =	graphics/kirigami-addons \
		devel/kf5/qqc2-desktop-style \

RUN_DEPENDS =	graphics/kirigami-addons \
		devel/kf5/qqc2-desktop-style \

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem \
		devel/kf5/solid \
		devel/kf5/purpose \
		devel/kf5/kirigami2 \
		multimedia/mpv \
		x11/qt5/qtwebsockets \
		security/qtkeychain \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
