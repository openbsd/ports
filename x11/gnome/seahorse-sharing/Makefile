# $OpenBSD: Makefile,v 1.13 2013/09/28 08:51:28 ajacoutot Exp $

COMMENT=	PGP public keys sharing via DNS-SD and HKP

GNOME_PROJECT=	seahorse-sharing
GNOME_VERSION=	3.8.0
REVISION=	1

CATEGORIES=	net security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender assuan atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=	devel/libsoup \
		security/gpgme \
		net/avahi \
		x11/gtk+3

MODULES=	devel/gettext \
		x11/gnome

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/seahorse-sharing

.include <bsd.port.mk>
