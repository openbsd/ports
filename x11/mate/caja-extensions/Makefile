COMMENT=		extensions for Caja, the MATE file manager

MATE_PROJECT=		caja-extensions

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 c cairo cairo-gobject caja-extension
WANTLIB += dbus-1 dbus-glib-1 dconf epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl jpeg m mate-desktop-2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png startup-notification-1
WANTLIB += xcb xcb-render xcb-shm xcb-util z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		x11/dbus-glib \
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
