COMMENT=		DMAP client and server library

GNOME_PROJECT=		libdmapsharing
GNOME_VERSION=		3.9.11
PKGNAME=		${GNOME_PROJECT}4-${GNOME_VERSION}

# override gnome MODULE
MASTER_SITES=		https://www.flyn.org/projects/libdmapsharing/
EXTRACT_SUFX=		.tar.gz

SHARED_LIBS +=	dmapsharing-4.0           0.0 # 12.11

HOMEPAGE=		https://www.flyn.org/projects/libdmapsharing/index.html

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib brotlicommon brotlidec
WANTLIB += dbus-1 execinfo ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gthread-2.0 iconv idn2 intl jpeg m nghttp2 pcre2-8
WANTLIB += png psl pthread soup-3.0 sqlite3 unistring z

MODULES=		x11/gnome

MODGNOME_TOOLS=		vala

BUILD_DEPENDS=		devel/libgee

LIB_DEPENDS=		devel/libsoup3 \
			multimedia/gstreamer1/plugins-base \
			net/avahi,-libs

CONFIGURE_STYLE=	gnu

# would add LDEP on devel/check
CONFIGURE_ARGS=		--disable-tests

# XXX
# find: ./../libdmapsharing/.libs/libdmapsharing-3.0.so: No such file or directory
# find: ./../libdmapsharing/.libs/libdmapsharing-3.0.so: No such file or directory
# In file included from <stdin>:1:
# libdmapsharing/daap-connection.h:22:10: fatal error: 'libdmapsharing/dmap-connection.h' file not found
# ** (gen-introspect-0.54:16069): ERROR **: 09:29:44.472: cpp returned error code: 256
# MODGNOME_TOOLS +=	gobject-introspection

.include <bsd.port.mk>
