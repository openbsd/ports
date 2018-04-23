# $OpenBSD: Makefile,v 1.65 2018/04/23 08:56:02 jasper Exp $

USE_WXNEEDED=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.52.2
REVISION=		0

SHARED_LIBS +=  gjs                  5.0      # 0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xext Xrender c cairo cairo-gobject expat ffi fontconfig
WANTLIB += freetype gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m curses fribidi
WANTLIB += nspr4 pcre pixman-1 plc4 plds4 png pthread
WANTLIB += readline xcb xcb-render xcb-shm z Xrandr epoxy
WANTLIB += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama
WANTLIB += atk-1.0 atk-bridge-2.0 atspi dbus-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += graphite2 gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += iconv intl icudata icui18n icuuc mozjs-52

MODULES=		x11/gnome

# sync with devel/spidermonkey52 and SHARED_LIBS consumers:
# x11/gnome/documents x11/gnome/shell x11/gnome/sushi
COMPILER=		base-clang ports-clang ports-gcc

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey52>=52.0,<53.0 \
			x11/gtk+3

TEST_DEPENDS=		sysutils/e2fsprogs #uuidgen(1)

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS +=	--disable-profiler

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
