COMMENT=		location, timezone and weather-lookup library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		4.0.0
PKGNAME=		libgweather4-${GNOME_VERSION}
REVISION=		1

SHARED_LIBS += gweather-4                0.0 # 0.0.0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += geocode-glib gio-2.0 glib-2.0 gobject-2.0 intl m soup-2.4
WANTLIB += xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MODGNOME_TOOLS= 	gi-docgen gobject-introspection vala

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libsoup \
			geo/geocode-glib

DEBUG_PACKAGES=		${BUILD_PACKAGES}

TEST_ENV=		XDG_CACHE_HOME=${WRKBUILD}

.include <bsd.port.mk>
