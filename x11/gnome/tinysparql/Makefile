COMMENT=		low-footprint RDF triple store with SPARQL 1.1 interface

GNOME_PROJECT=		tinysparql
GNOME_VERSION=		3.9.2

SHARED_LIBS += tinysparql-3.0            1.0 # 0.902.0
# symlink to tinysparql-3.0.so
SHARED_LIBS += tracker-sparql-3.0        1.0 # 0.902.0

# LGPLv2.1+ - GPLv2+ - BSD-3-clause
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib c gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 icui18n icuuc intl json-glib-1.0
WANTLIB += m soup-3.0 sqlite3 stemmer xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

BUILD_DEPENDS=		shells/bash-completion \
			textproc/asciidoc \
			x11/dbus

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup3 \
			net/avahi,-glib \
			textproc/icu4c \
			textproc/libstemmer \
			textproc/libxml


# needed for tests
BUILD_DEPENDS +=	devel/py-gobject3
TEST_DEPENDS=		devel/py-gobject3

CONFIGURE_ARGS=		-Dsystemd_user_services=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
