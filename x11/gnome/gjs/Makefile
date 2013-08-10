# $OpenBSD: Makefile,v 1.21 2013/08/10 12:43:03 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.36.1
REVISION=		0

MASTER_SITES0=		http://distfiles.bsdfrog.org/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		gjs-gnome-3-8-js17.patch:0

SHARED_LIBS +=  gjs                  3.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/Gjs

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo cairo-gobject expat ffi fontconfig
WANTLIB += freetype gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m mozjs-17.0 ncurses ncursesw
WANTLIB += nspr4 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline stdc++ xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No

LIBTOOL_FLAGS=		--tag=disable-static

LIB_DEPENDS=		devel/gobject-introspection \
			devel/spidermonkey>=17.0,<18.0

AUTOCONF_VERSION=	2.63
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-static

TEST_DEPENDS=		sysutils/e2fsprogs #uuidgen(1)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
