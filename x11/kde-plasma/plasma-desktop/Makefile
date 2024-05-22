COMMENT =	KDE tools and widgets for the desktop
DISTNAME =	plasma-desktop-${VERSION}

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_ICON_CACHE =	Yes
MODKDE5_DOCS =		Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6AuthCore KF6Baloo
WANTLIB += KF6Bookmarks KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6FileMetaData KF6GlobalAccel
WANTLIB += KF6GuiAddons KF6I18n KF6I18nLocaleData KF6IconThemes
WANTLIB += KF6IconWidgets KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6Notifications KF6NotifyConfig KF6Package KF6Runner
WANTLIB += KF6Service KF6Solid KF6SonnetCore KF6SonnetUi KF6Svg
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui KSysGuardFormatter
WANTLIB += Plasma PlasmaActivities PlasmaActivitiesStats PlasmaQuick
WANTLIB += Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickWidgets Qt6Sql
WANTLIB += Qt6WaylandClient Qt6Widgets Qt6Xml SDL2 X11 X11-xcb
WANTLIB += Xext Xi accounts-qt6 c canberra icui18n icuuc kaccounts6
WANTLIB += kworkspace6 m notificationmanager processcore taskmanager
WANTLIB += wayland-client wayland-cursor xcb xcb-record xcb-util
WANTLIB += xcb-xkb xkbcommon xkbfile

BUILD_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/qqc2-desktop-style \
		textproc/intltool \
		wayland/libevdev-openbsd \
		wayland/plasma-wayland-protocols \
		wayland/wayland-protocols \
		x11/kde-plasma/kwin>=${VERSION} \
		x11/kde-plasma/plasma5support>=${VERSION}

RUN_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/qqc2-desktop-style \
		x11/kde-applications/kaccounts-providers \
		devel/desktop-file-utils \
		x11/dbus,-suid

LIB_DEPENDS =	audio/libcanberra \
		devel/kf6/attica \
		devel/kf6/baloo \
		devel/kf6/kauth \
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
		devel/kf6/kfilemetadata \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kpackage \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/ksvg \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/sdl2 \
		net/libaccounts-qt,qt6 \
		wayland/wayland \
		x11/kde-applications/kf6-kaccounts-integration \
		x11/kde-plasma/libksysguard>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/kde-plasma/plasma-activities-stats>=${VERSION} \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/kde-plasma/plasma-workspace>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwayland \
		x11/xkbcommon

CONFIGURE_ARGS = \
	-DCMAKE_DISABLE_FIND_PACKAGE_KF5NetworkManagerQt=Yes

# XXX
CONFIGURE_ARGS +=	-DBUILD_KCM_MOUSE_X11=OFF

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=		-I${LOCALBASE}/include/
CXXFLAGS +=		-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
