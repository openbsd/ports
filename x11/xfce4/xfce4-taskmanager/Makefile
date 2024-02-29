COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.5.7
XFCE_GOODIE=	xfce4-taskmanager

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 XRes Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xmu Xrandr Xrender Xt atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread wnck-3
WANTLIB += xcb xcb-render xcb-shm z X11-xcb startup-notification-1 xcb-util
WANTLIB += gthread-2.0 xfce4ui-2 xfce4util xfconf-0
WANTLIB += Xau Xdmcp execinfo jpeg atspi dbus-1
WANTLIB += epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon
WANTLIB += ${COMPILER_LIBCXX}

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf \
		devel/libwnck3


.include <bsd.port.mk>
