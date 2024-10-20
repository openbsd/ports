COMMENT=	Xfce4 terminal

XFCE_VERSION=	1.1.3
XFCE_GOODIE=	xfce4-terminal
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf \
		devel/vte3
CONFIGURE_ARGS=	--disable-gtk-layer-shell \
		--disable-wayland

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 epoll-shim epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz hogweed iconv icudata icuuc idn2 intl
WANTLIB += jpeg lz4 m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png startup-notification-1
WANTLIB += tasn1 unistring vte-2.91 wayland-client wayland-cursor
WANTLIB += wayland-egl xcb xcb-render xcb-shm xcb-util xfce4kbd-private-3
WANTLIB += xfce4ui-2 xfce4util xfconf-0 xkbcommon z

.include <bsd.port.mk>
