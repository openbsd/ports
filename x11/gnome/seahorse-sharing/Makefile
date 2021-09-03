# $OpenBSD: Makefile,v 1.30 2021/09/03 12:51:35 ajacoutot Exp $

COMMENT=		PGP public keys sharing via DNS-SD and HKP

GNOME_PROJECT=		seahorse-sharing
GNOME_VERSION=		3.8.0
REVISION=		14

CATEGORIES=		net security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender assuan atk-1.0
WANTLIB += atk-bridge-2.0 avahi-client avahi-common avahi-glib
WANTLIB += brotlicommon brotlidec c cairo cairo-gobject dbus-1
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpgme graphite2 gthread-2.0 gtk-3 harfbuzz iconv idn2
WANTLIB += intl jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png psl soup-2.4 sqlite3 unistring xcb
WANTLIB += xcb-render xcb-shm xml2 z execinfo

MODULES=		x11/gnome

LIB_DEPENDS=		devel/libsoup \
			security/gpgme \
			net/avahi,-glib \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS +=	security/gnupg
RUN_DEPENDS +=		net/avahi \
			security/gnupg

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse-sharing

.include <bsd.port.mk>
