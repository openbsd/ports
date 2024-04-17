USE_WXNEEDED=		Yes
# due to devel/spidermonkey115 (matches mozilla.port.mk)
# mozilla #1626955 & #510629
# see also patches/patch-meson_build
USE_NOBTCFI=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.80.2

SHARED_LIBS += gjs                       6.2 # 0.0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c cairo cairo-gobject ffi gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gobject-2.0 intl m mozjs-115
WANTLIB += readline

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

COMPILER=		base-clang ports-clang

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey115 \
			graphics/cairo

# --with-dbus-tests
BUILD_DEPENDS +=	x11/dbus

CONFIGURE_ARGS =	-Dprofiler=disabled \
			-Dinstalled_tests=false

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
