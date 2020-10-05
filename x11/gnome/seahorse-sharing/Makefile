# $OpenBSD: Makefile,v 1.27 2020/10/05 19:46:18 jca Exp $

COMMENT=		PGP public keys sharing via DNS-SD and HKP

GNOME_PROJECT=		seahorse-sharing
GNOME_VERSION=		3.8.0
REVISION=		11

CATEGORIES=		net security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender assuan atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-client avahi-common avahi-glib c cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme graphite2 gthread-2.0 gtk-3 harfbuzz lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread soup-2.4 sqlite3 xcb xcb-render xcb-shm
WANTLIB += xml2 z iconv intl Xtst

MODULES=		x11/gnome

LIB_DEPENDS=		devel/libsoup \
			security/gpgme \
			net/avahi \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS +=	security/gnupg>=2.2.23p1
RUN_DEPENDS +=		security/gnupg>=2.2.23p1

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse-sharing

.include <bsd.port.mk>
