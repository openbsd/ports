COMMENT=		DMAP client and server library

GNOME_PROJECT=		libdmapsharing
GNOME_VERSION=		2.9.41

# override gnome MODULE
MASTER_SITES=		https://www.flyn.org/projects/libdmapsharing/
EXTRACT_SUFX=		.tar.gz

SHARED_LIBS +=  dmapsharing-3.0      0.0    # 11.41

HOMEPAGE=		https://www.flyn.org/projects/libdmapsharing/index.html

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib brotlicommon brotlidec
WANTLIB += dbus-1 execinfo ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gthread-2.0 iconv idn2 intl jpeg lzma m pcre png psl
WANTLIB += pthread soup-2.4 sqlite3 unistring xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS=		vala

BUILD_DEPENDS=		devel/check \
			devel/libgee

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
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
CONFIGURE_ARGS +=	--disable-introspection
# MODGNOME_TOOLS +=	gobject-introspection

.include <bsd.port.mk>
