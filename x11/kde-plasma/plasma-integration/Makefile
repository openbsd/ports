COMMENT =	Plasma Platform Theme integration plugins
DISTNAME =	plasma-integration-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Service KF6Solid KF6StatusNotifierItem
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6WaylandClient Qt6Widgets
WANTLIB += Qt6Xml X11 Xcursor m wayland-client wayland-cursor
WANTLIB += xcb xkbcommon

MODKDE_TRANSLATIONS =	Yes
MODKDE_DOCS = Yes

BUILD_DEPENDS =	wayland/plasma-wayland-protocols

RUN_DEPENDS =	fonts/noto/fonts \
		fonts/noto/emoji \
		fonts/hack-fonts

RUN_DEPENDS +=	x11/kde-plasma/xdg-desktop-portal-kde

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
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
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		wayland/wayland \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwayland \
		x11/xkbcommon

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS =	-DBUILD_QT5=OFF

# Mute annoying messages. We install the following RUNTIME packages
CONFIGURE_ARGS += \
	-DCMAKE_DISABLE_FIND_PACKAGE_FontNotoSans=ON \
	-DCMAKE_DISABLE_FIND_PACKAGE_FontNotoColorEmoji=ON  \
	-DCMAKE_DISABLE_FIND_PACKAGE_FontHack=ON \
	-DCMAKE_DISABLE_FIND_PACKAGE_XDGDesktopPortalKDE=ON

.include <bsd.port.mk>
