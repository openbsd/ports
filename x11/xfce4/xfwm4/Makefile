COMMENT=	Xfce4 window manager

XFCE_PROJECT=	xfwm4
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.11.0 \
		devel/libwnck3 \
		x11/xfce4/xfconf>=4.8.0

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xpresent
WANTLIB += atk-1.0 atspi c cairo dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread
WANTLIB += startup-notification-1 wnck-3 xcb xcb-util
WANTLIB += xcb-render xcb-shm xfce4kbd-private-3 xfce4ui-2 xfce4util
WANTLIB += xfconf-0 z graphite2 harfbuzz iconv intl epoxy
WANTLIB += atk-bridge-2.0 cairo-gobject fribidi ${COMPILER_LIBCXX}
WANTLIB += epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += Xau Xdmcp jpeg xkbcommon

.include <bsd.port.mk>
