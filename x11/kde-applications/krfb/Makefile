COMMENT =	desktop sharing
DISTNAME =	krfb-${VERSION}
CATEGORIES =	net x11

SHARED_LIBS +=  krfbprivate               4.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6DNSSD KF6GuiAddons KF6I18n KF6Notifications
WANTLIB += KF6StatusNotifierItem KF6Wallet KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui KPipeWire KPipeWireDmaBuf KWaylandClient
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += X11 Xdamage Xext Xtst c crypto gcrypt gnutls jpeg lzo2
WANTLIB += m pipewire-0.3 png sasl2 ssl vncserver wayland-client
WANTLIB += xcb xcb-damage xcb-image xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xkbcommon z

HOMEPAGE =	https://kde.org/applications/internet/org.kde.krfb

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS +=	devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kdnssd \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/knotifications \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		net/libvncserver \
		wayland/wayland \
		multimedia/pipewire/pipewire,-libs \
		x11/kde-plasma/kpipewire \
		x11/kde-plasma/kwayland \
		x11/xkbcommon

CXXFLAGS +=	-I${LOCALBASE}/include -DNONETWORK=0

.include <bsd.port.mk>
