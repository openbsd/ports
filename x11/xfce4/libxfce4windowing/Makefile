COMMENT=	Xfce4 windowing library

XFCE_PROJECT=	libxfce4windowing
REVISION=	0

SHARED_LIBS +=  xfce4windowing-0          0.0 # 0.0
SHARED_LIBS +=  xfce4windowingui-0        0.0 # 0.0

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
BUILD_DEPENDS =	x11/xfce4/xfce4-dev-tools>=4.19.3 \
		devel/gobject-introspection \
		wayland/wayland-protocols
LIB_DEPENDS =	devel/libwnck3 \
		wayland/wayland \
		sysutils/libdisplay-info \
		x11/xkbcommon

WANTLIB += ${COMPILER_LIBCXX} X11 X11-xcb XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject
WANTLIB += dbus-1 display-info epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 harfbuzz iconv intl jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png startup-notification-1 wnck-3 xcb xcb-render xcb-shm
WANTLIB += xcb-util xkbcommon z epoll-shim wayland-client wayland-cursor wayland-egl

.include <bsd.port.mk>
