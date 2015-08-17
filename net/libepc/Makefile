# $OpenBSD: Makefile,v 1.15 2015/08/17 20:34:20 sthen Exp $

COMMENT=		Easy Publish and Consume library

GNOME_PROJECT=		libepc
GNOME_VERSION=		0.4.4
REVISION=		5
SHARED_LIBS +=  epc-1.0              0.0      # 3.0
SHARED_LIBS +=  epc-ui-1.0           0.0      # 3.0
CATEGORIES=		net

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-client avahi-common avahi-glib cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz hogweed lzma m
WANTLIB += nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += tasn1 uuid xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

# Only needed for examples.
BUILD_DEPENDS=		net/avahi,-gtk3,no_mono,no_qt3,no_qt4
LIB_DEPENDS=		devel/libsoup \
			net/avahi \
			sysutils/e2fsprogs>=1.42.7 \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

# Not much of use without a proper SIOCGIFINDEX
NO_TEST=		Yes

.include <bsd.port.mk>
