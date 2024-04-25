COMMENT=		efficient search engine and triplestore

GNOME_PROJECT=		tracker
GNOME_VERSION=		3.7.2
PKGNAME=		tracker3-${GNOME_VERSION}

SHARED_LIBS += tracker-sparql-3.0        0.4 # 0.702.0

# LGPLv2.1+ - GPLv2+ - BSD-3-clause
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib c gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 icui18n icuuc intl json-glib-1.0
WANTLIB += m soup-3.0 sqlite3 stemmer xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

BUILD_DEPENDS=		shells/bash-completion \
			textproc/asciidoc \
			x11/dbus

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup3 \
			net/avahi,-glib \
			textproc/icu4c \
			textproc/libstemmer \
			textproc/libxml

TEST_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

# needed for tests
BUILD_DEPENDS +=	devel/py-gobject3${MODPY_FLAVOR}

CONFIGURE_ARGS=		-Dsystemd_user_services=false \
			-Dsoup=soup3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
