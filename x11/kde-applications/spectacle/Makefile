COMMENT =	KDE screen capture and screenshot program
DISTNAME =	spectacle-${VERSION}
CATEGORIES =	x11
REVISION =	1

HOMEPAGE =	https://apps.kde.org/spectacle/

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5GlobalAccel KF5GuiAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Kirigami2 KF5Notifications
WANTLIB += KF5Purpose KF5PurposeWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KPipeWire KPipeWireRecord
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5QuickTemplates2
WANTLIB += Qt5WaylandClient Qt5Widgets Qt5X11Extras Qt5Xml X11
WANTLIB += c m wayland-client xcb xcb-cursor xcb-image xcb-render
WANTLIB += xcb-shape xcb-shm xcb-util xcb-xfixes

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	lang/python

BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kirigami2 \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwayland \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/purpose \
		x11/kde-plasma/kpipewire \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtx11extras

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kconf_update/50-clipboard_settings_change.py

.include <bsd.port.mk>
