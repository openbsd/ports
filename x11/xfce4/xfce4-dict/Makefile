COMMENT=	Xfce4 dictionary application

XFCE_VERSION=	0.8.8
XFCE_GOODIE=	xfce4-dict
REVISION=	1

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

LIB_DEPENDS=	x11/xfce4/xfce4-panel

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender iconv intl fribidi
WANTLIB += atk-1.0 c cairo expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4panel-2.0 xfce4util z harfbuzz graphite2 xfce4ui-2
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy gdk-3 gtk-3 ${COMPILER_LIBCXX}
WANTLIB += Xau Xdmcp jpeg atspi dbus-1 xfconf-0
WANTLIB += epoll-shim gtk-layer-shell wayland-client wayland-cursor
WANTLIB += wayland-egl xkbcommon

.include <bsd.port.mk>
