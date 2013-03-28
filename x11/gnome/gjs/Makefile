# $OpenBSD: Makefile,v 1.17 2013/03/28 19:32:50 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.36.0

SHARED_LIBS +=  gjs                  3.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/Gjs

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo cairo-gobject expat ffi fontconfig
WANTLIB += freetype gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m mozjs185 ncurses ncursesw
WANTLIB += nspr4 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline stdc++ xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No
MODPY_ADJ_FILES=	scripts/make-tests

LIBTOOL_FLAGS=		--tag=disable-static

LIB_DEPENDS=		devel/gobject-introspection>=1.36.0 \
			devel/spidermonkey

CONFIGURE_ARGS +=	--disable-static

TEST_DEPENDS +=	sysutils/e2fsprogs # uuidgen(1)
TEST_DEPENDS +=	${MODPY_RUN_DEPENDS} # scripts/make-tests needs python to run

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/

.include <bsd.port.mk>
