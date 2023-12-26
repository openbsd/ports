COMMENT =	xdg-desktop-portal Qt/KF5 backend
DISTNAME =	xdg-desktop-portal-kde-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Declarative KF5GlobalAccel
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Notifications KF5Package KF5Service KF5Solid KF5WaylandClient
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5WaylandClient
WANTLIB += Qt5Widgets Qt5Xml X11 c m wayland-client xkbcommon

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/knotifications \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/solid \
		devel/kf5/kwayland \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
