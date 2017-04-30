# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:28 robert Exp $

COMMENT=	extensions for Caja, the MATE file manager

MATE_PROJECT=	caja-extensions
MATE_VERSION=	1.18.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender c dconf epoxy expat
WANTLIB += ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl m pcre pixman-1
WANTLIB += pthread pthread-stubs sqlite3 xcb xcb-render xcb-shm
WANTLIB += xcb-util z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo
WANTLIB += caja-extension dbus-1 dbus-glib-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += graphite2 gssdp-1.0 gtk-3 gupnp-1.0 harfbuzz lzma
WANTLIB += mate-desktop-2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png soup-2.4 startup-notification-1 xml2

MODULES=	devel/dconf \
		x11/gnome

LIB_DEPENDS=	net/gupnp/core \
		x11/dbus-glib \
		x11/mate/desktop \
		x11/mate/caja

.include <bsd.port.mk>
