COMMENT =	xdg-desktop-portal Qt/KF6 backend
DISTNAME =	xdg-desktop-portal-kde-${VERSION}

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6GlobalAccel KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6Service KF6Solid KF6StatusNotifierItem KF6WidgetsAddons
WANTLIB += KF6WindowSystem KWaylandClient Qt6Concurrent Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickWidgets Qt6WaylandClient
WANTLIB += Qt6Widgets Qt6Xml X11 c m wayland-client wayland-cursor
WANTLIB += xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kirigami

BUILD_DEPENDS =	devel/kf6/kirigami

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/solid \
		wayland/wayland \
		x11/kde-plasma/kwayland>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwayland \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
