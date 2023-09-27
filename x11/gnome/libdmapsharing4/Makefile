COMMENT=		DMAP client and server library

GNOME_PROJECT=		libdmapsharing
GNOME_VERSION=		3.9.13
PKGNAME=		${GNOME_PROJECT}4-${GNOME_VERSION}

# override gnome MODULE
SITES=			https://www.flyn.org/projects/libdmapsharing/
EXTRACT_SUFX=		.tar.gz

SHARED_LIBS +=	dmapsharing-4.0           0.0 # 12.12

HOMEPAGE=		https://www.flyn.org/projects/libdmapsharing/index.html

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib brotlicommon brotlidec
WANTLIB += dbus-1 execinfo ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gthread-2.0 iconv idn2 intl jpeg m nghttp2 pcre2-8
WANTLIB += png psl pthread soup-3.0 sqlite3 unistring z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		devel/libgee

LIB_DEPENDS=		devel/libsoup3 \
			graphics/gdk-pixbuf2 \
			multimedia/gstreamer1/plugins-base \
			net/avahi,-glib

CONFIGURE_STYLE=	gnu

# would add LDEP on devel/check
CONFIGURE_ARGS=		--disable-tests

.include <bsd.port.mk>
