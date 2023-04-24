COMMENT=	Xfce4 cpu/memory/swap/uptime monitor panel plugin

XFCE_VERSION=	1.3.2
XFCE_PLUGIN=	systemload
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS=	--disable-upower

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender fribidi
WANTLIB += atk-1.0 atspi cairo dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += kvm m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfce4ui-2 gthread-2.0 gtop-2.0 xfconf-0 z
WANTLIB += harfbuzz pthread graphite2 iconv intl
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy gdk-3 gtk-3
WANTLIB += Xau Xdmcp execinfo jpeg
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
