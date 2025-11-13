USE_WXNEEDED=		Yes
# due to devel/spidermonkey140 (matches mozilla.port.mk)
# mozilla #1626955 & #510629
# see also patches/patch-meson_build
USE_NOBTCFI=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.86.0

SHARED_LIBS += gjs                       6.5 # 0.0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c cairo cairo-gobject ffi gio-2.0
WANTLIB += girepository-2.0 glib-2.0 gobject-2.0 intl m mozjs-140
WANTLIB += readline

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

DEBUG_PACKAGES =	${BUILD_PACKAGES}

COMPILER=		base-clang ports-clang

LIB_DEPENDS=		devel/glib2 \
			devel/spidermonkey140 \
			graphics/cairo

# needed for tests: skip_dbus_tests is set to false by default
BUILD_DEPENDS +=	x11/dbus

RUN_DEPENDS=		devel/gobject-introspection

TEST_DEPENDS=		x11/gtk+3 \
			x11/gtk+4

CONFIGURE_ARGS=		-Dprofiler=disabled \
			-Dinstalled_tests=false

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
