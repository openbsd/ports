COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.11.3
XFCE_PLUGIN=	weather
REVISION=	1

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	textproc/libxml \
		devel/json-c \
		devel/libsoup \
		sysutils/upower

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 harfbuzz iconv idn2
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 png psl pthread soup-2.4 sqlite3
WANTLIB += startup-notification-1 unistring upower-glib xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util xml2 z brotlicommon brotlidec
WANTLIB += Xau Xdmcp jpeg gthread-2.0 xfconf-0
WANTLIB += epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon json-c polkit-gobject-1 gtk-layer-shell
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
