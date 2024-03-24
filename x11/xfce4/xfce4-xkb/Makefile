COMMENT=	Xfce4 xkb layout switcher panel plugin

XFCE_VERSION=	0.8.3
XFCE_PLUGIN=	xkb
REVISION=	5

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS =	x11/gnome/librsvg \
		devel/libwnck3 \
		x11/gnome/libxklavier>=5.4

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi garcon-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl lzma m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread rsvg-2
WANTLIB += startup-notification-1 wnck-3 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4ui-2 xfce4util xfconf-0 xkbfile xklavier xml2 z
WANTLIB += Xau Xdmcp execinfo jpeg
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
