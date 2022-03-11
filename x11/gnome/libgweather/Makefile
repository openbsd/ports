COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		40.0
REVISION=		0

SHARED_LIBS += gweather-3                3.5 # 15.0.0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += geocode-glib gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl m soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_RUNDEP =		No
MODGNOME_TOOLS= 	gobject-introspection vala
BUILD_DEPENDS +=	devel/py-gobject3${MODPY_FLAVOR}
LIB_DEPENDS=		geo/geocode-glib \
			x11/gtk+3

CONFIGURE_ARGS =	-Dglade_catalog=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_ENV =		XDG_CACHE_HOME=${WRKBUILD}

.include <bsd.port.mk>
