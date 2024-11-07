USE_WXNEEDED =	Yes
USE_NOBTCFI =		Yes

COMMENT =	cross-platform Qt-based web browser
DISTNAME =	falkon-${VERSION}
CATEGORIES =	www

SHARED_LIBS +=  FalkonPrivate             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Completion KF6ConfigCore
WANTLIB += KF6CoreAddons KF6Crash KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Purpose KF6PurposeWidgets KF6Service
WANTLIB += KF6Solid KF6Wallet KF6WidgetsAddons Qt6Core Qt6Core5Compat
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickWidgets
WANTLIB += Qt6Sql Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets c crypto execinfo intl m xcb

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/kf6/karchive \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/purpose \
		devel/kf6/solid \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
