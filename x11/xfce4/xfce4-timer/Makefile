COMMENT=	Xfce4 timer/timeout plugin

XFCE_VERSION=	1.7.2
XFCE_PLUGIN=	timer
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB=	xfce4panel-2.0

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject
WANTLIB += dbus-1 epoll-shim epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png startup-notification-1
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util xfconf-0 xkbcommon
WANTLIB += z gtk-layer-shell

.include <bsd.port.mk>
