# $OpenBSD: Makefile,v 1.22 2017/09/07 12:29:31 ajacoutot Exp $

COMMENT=		Easy Publish and Consume library

GNOME_PROJECT=		libepc
GNOME_VERSION=		0.4.6
REVISION=		0

CATEGORIES=		net

SHARED_LIBS +=  epc-1.0              0.0      # 3.0
SHARED_LIBS +=  epc-ui-1.0           0.0      # 3.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-client avahi-common avahi-glib cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz hogweed iconv
WANTLIB += idn2 intl lzma m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 unistring uuid xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		x11/gnome

# Only needed for examples.
BUILD_DEPENDS=		net/avahi,,-gtk3

LIB_DEPENDS=		devel/libsoup \
			net/avahi \
			sysutils/e2fsprogs \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

pre-test:
	sed -i 's,/bin/bash,/bin/sh,' ${WRKSRC}/tests/test-runner.sh

.include <bsd.port.mk>
