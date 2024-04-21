COMMENT=		extensions for Caja, the MATE file manager

MATE_PROJECT=		caja-extensions
REVISION=		0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 atspi brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject caja-extension dbus-1 dbus-glib-1
WANTLIB += dconf epoll-shim epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gssdp-1.6 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gupnp-1.6 harfbuzz iconv
WANTLIB += idn2 intl jpeg lzma m mate-desktop-2 nghttp2 orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png psl soup-3.0 sqlite3 startup-notification-1 unistring
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xcb-util xkbcommon xml2 z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			net/gupnp/core \
			x11/dbus-glib \
			x11/mate/desktop \
			x11/mate/caja

# XXX needs support for libgupnp-1.6
# LIB_DEPENDS +=	net/gupnp/core

CONFIGURE_STYLE=	gnu

# Adjust to new gssdp/gupnp
pre-configure:
	sed -i -e 's,gssdp-1.0,gssdp-1.2,g' -e 's,gupnp-1.0,gupnp-1.2,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
