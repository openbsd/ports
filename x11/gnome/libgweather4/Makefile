COMMENT=		location, timezone and weather-lookup library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		4.4.2
PKGNAME=		libgweather4-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS += gweather-4                0.1 # 0.400.2

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += geocode-glib-2 gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += m soup-3.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MODGNOME_TOOLS= 	gi-docgen gobject-introspection vala

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libsoup3 \
			geo/geocode-glib

DEBUG_PACKAGES=		${BUILD_PACKAGES}

TEST_ENV=		XDG_CACHE_HOME=${WRKBUILD}

.include <bsd.port.mk>
