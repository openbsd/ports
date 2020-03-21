# $OpenBSD: Makefile,v 1.15 2020/03/21 16:14:54 robert Exp $

COMMENT=		extensions for Caja, the MATE file manager

MATE_PROJECT=		caja-extensions

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject caja-extension dbus-1 dbus-glib-1 dconf epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gssdp-1.2
WANTLIB += gthread-2.0 gtk-3 gupnp-1.2 harfbuzz iconv idn2 intl lzma m
WANTLIB += mate-desktop-2 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png psl pthread soup-2.4 sqlite3
WANTLIB += startup-notification-1 unistring xcb xcb-render xcb-shm
WANTLIB += xcb-util xml2 z
WANTLIB += brotlicommon brotlidec

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		net/gupnp/core>=1.1.2 \
			x11/dbus-glib \
			x11/mate/desktop \
			x11/mate/caja

CONFIGURE_STYLE=	gnu

# Adjust to new gssdp/gupnp
pre-configure:
	sed -i -e 's,gssdp-1.0,gssdp-1.2,g' -e 's,gupnp-1.0,gupnp-1.2,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
