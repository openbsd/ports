COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
XFCE_VERSION=	4.20.1

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/gtk-3.0/modules
BUILD_DEPENDS=	www/p5-URI
# used by helper xfce-compose-mail
RUN_DEPENDS=	www/p5-URI
LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.19.5 \
		wayland/gtk-layer-shell \
		devel/libnotify \
		x11/xfce4/garcon \
		x11/xfce4/exo>=0.11.0 \
		x11/gnome/libxklavier \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atspi c cairo dbus-1 expat jpeg
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png pthread startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfconf-0 xkbfile xklavier xml2 z garcon-1
WANTLIB += harfbuzz graphite2 lzma iconv intl fribidi
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy exo-2 gdk-3
WANTLIB += gtk-3 xfce4kbd-private-3 xfce4ui-2
WANTLIB += gtk-layer-shell wayland-client wayland-cursor
WANTLIB += wayland-egl xkbcommon Xau Xdmcp epoll-shim
WANTLIB += ${COMPILER_LIBCXX}

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		menudir=${PREFIX}/share/examples/xfce4-settings \
		defaultsdir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings

CONFIGURE_ARGS=	--disable-colord \
		--disable-xorg-libinput

.include <bsd.port.mk>
