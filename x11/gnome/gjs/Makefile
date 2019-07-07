# $OpenBSD: Makefile,v 1.75 2019/07/07 11:20:52 ajacoutot Exp $

USE_WXNEEDED=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.56.2

SHARED_LIBS +=  gjs                  5.0      # 0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject curses
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv icudata
WANTLIB += icui18n icuuc intl m mozjs-60 nspr4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png readline
WANTLIB += xcb xcb-render xcb-shm z ${COMPILER_LIBCXX}

MODULES=		x11/gnome

# sync with devel/spidermonkey60 and SHARED_LIBS consumers:
# x11/gnome/documents x11/gnome/shell x11/gnome/sushi
COMPILER=		base-clang ports-gcc

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey60 \
			x11/gtk+3

TEST_DEPENDS=		sysutils/e2fsprogs #uuidgen(1)

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS +=	--disable-profiler

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
