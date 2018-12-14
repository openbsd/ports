# $OpenBSD: Makefile,v 1.71 2018/12/14 19:00:20 landry Exp $

USE_WXNEEDED=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.52.5

SHARED_LIBS +=  gjs                  5.0      # 0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject curses dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv icudata
WANTLIB += icui18n icuuc intl m mozjs-52 nspr4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png readline
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		x11/gnome

# sync with devel/spidermonkey52 and SHARED_LIBS consumers:
# x11/gnome/documents x11/gnome/shell x11/gnome/sushi
COMPILER=		base-clang ports-gcc

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey52 \
			x11/gtk+3

TEST_DEPENDS=		sysutils/e2fsprogs #uuidgen(1)

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS +=	--disable-profiler

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
