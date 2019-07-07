# $OpenBSD: Makefile,v 1.26 2019/07/07 11:20:54 ajacoutot Exp $

COMMENT=		PGP public keys sharing via DNS-SD and HKP

GNOME_PROJECT=		seahorse-sharing
GNOME_VERSION=		3.8.0
REVISION=		10

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

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 2.X
BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2
CONFIGURE_ENV +=	ac_cv_path_GNUPG=${LOCALBASE}/bin/gpg2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse-sharing

.include <bsd.port.mk>
