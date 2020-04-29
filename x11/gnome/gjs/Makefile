# $OpenBSD: Makefile,v 1.84 2020/04/29 11:41:34 jasper Exp $

USE_WXNEEDED=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.58.7

SHARED_LIBS +=  gjs                  5.0      # 0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender c cairo cairo-gobject
WANTLIB += curses expat ffi fontconfig freetype gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv
WANTLIB += icudata icui18n icuuc intl m mozjs-60 nspr4 pcre pixman-1
WANTLIB += plc4 plds4 png readline xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# sync with devel/spidermonkey60 and SHARED_LIBS consumers:
# x11/gnome/documents x11/gnome/shell x11/gnome/sushi
COMPILER=		base-clang ports-gcc

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey60


# --with-dbus-tests
BUILD_DEPENDS +=	x11/dbus

# uuidgen(1)
TEST_DEPENDS=

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-profiler

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
