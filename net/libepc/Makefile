# $OpenBSD: Makefile,v 1.7 2011/11/22 09:03:46 jasper Exp $

COMMENT=		Easy Publish and Consume library

GNOME_PROJECT=		libepc
GNOME_VERSION=		0.4.3
SHARED_LIBS +=  epc-1.0              0.0      # 3.0
SHARED_LIBS +=  epc-ui-1.0           0.0      # 3.0
CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/libepc/

# LGPLv2.1
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib cairo cairo-gobject dbus-1
WANTLIB += drm e2fs-uuid expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gthread-2.0 gtk-3 hogweed m nettle p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 tasn1 xcb xcb-render xcb-shm
WANTLIB += xml2 z stdc++

# Only needed for examples.
BUILD_DEPENDS=		net/avahi,-gtk3,no_mono,no_qt3,no_qt4
LIB_DEPENDS=		devel/libsoup \
			net/avahi \
			sysutils/e2fsprogs \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

# Not much of use without a proper SIOCGIFINDEX
NO_REGRESS=		Yes

.include <bsd.port.mk>
