# $OpenBSD: Makefile,v 1.99 2021/10/25 14:48:37 jasper Exp $

USE_WXNEEDED=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.70.0

SHARED_LIBS += gjs                       6.0 # 0.0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 c cairo cairo-gobject ffi gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gobject-2.0 intl m mozjs-78 readline

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

COMPILER=		base-clang ports-gcc

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey78

# --with-dbus-tests
BUILD_DEPENDS +=	x11/dbus

CONFIGURE_ARGS =	-Dprofiler=disabled \
			-Dinstalled_tests=false

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
