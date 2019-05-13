# $OpenBSD: Makefile,v 1.11 2019/05/13 02:09:15 robert Exp $

COMMENT=		extensions for Caja, the MATE file manager

MATE_PROJECT=		caja-extensions
REVISION=		0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject caja-extension dbus-1 dbus-glib-1
WANTLIB += dconf epoxy expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gssdp-1.2 gthread-2.0 gtk-3 gupnp-1.2 harfbuzz
WANTLIB += iconv idn2 intl lzma m mate-desktop-2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16 psl pthread soup-2.4
WANTLIB += sqlite3 startup-notification-1 unistring xcb xcb-render
WANTLIB += xcb-shm xcb-util xml2 z

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
