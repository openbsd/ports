# $OpenBSD: Makefile,v 1.27 2014/04/01 13:21:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.40.0
REVISION=		1

SHARED_LIBS +=  gjs                  4.0      # 0.0

CATEGORIES=		devel

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo cairo-gobject expat ffi fontconfig
WANTLIB += freetype gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m mozjs-24 ncurses ncursesw
WANTLIB += nspr4 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline stdc++ xcb xcb-render xcb-shm z Xrandr
WANTLIB += ICE SM Xcomposite Xcursor Xdamage Xfixes Xi Xinerama
WANTLIB += atk-1.0 atk-bridge-2.0 atspi dbus-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += graphite2 gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0

MODULES=		devel/gettext \
			lang/clang \
			x11/gnome

# sync with devel/spidermonkey
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		powerpc sparc64 alpha i386
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64
MODCLANG_LANGS =	c c++

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey>=24.0,<25.0 \
			x11/gtk+3

TEST_DEPENDS=		sysutils/e2fsprogs #uuidgen(1)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
