# $OpenBSD: Makefile,v 1.16 2013/03/11 11:46:10 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Javascript bindings for GNOME

GNOME_PROJECT=		gjs
GNOME_VERSION=		1.34.0
REVISION=		0

SHARED_LIBS +=  gjs                  2.0      # 0.0
SHARED_LIBS +=  gjs-dbus             2.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/Gjs

# MIT
# console modules (modules/console.c) and stack printer (gjs/stack.c)
# contain code from Mozilla which are: MPL1.1/LGPLv2+/GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm expat
WANTLIB += ffi fontconfig freetype gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m mozjs185 ncurses
WANTLIB += ncursesw nspr4 pcre pixman-1 plc4 plds4 png pthread
WANTLIB += pthread-stubs readline stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MODPY_BUILDDEP= 	No
MODPY_ADJ_FILES=	scripts/make-tests

LIBTOOL_FLAGS=		--tag=disable-static

LIB_DEPENDS=		devel/gobject-introspection>=1.32.0 \
			devel/spidermonkey \
			x11/dbus-glib

CONFIGURE_ARGS +=	--disable-static

TEST_DEPENDS +=	sysutils/e2fsprogs # uuidgen(1)
TEST_DEPENDS +=	${MODPY_RUN_DEPENDS} # scripts/make-tests needs python to run

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gjs/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/gjs/
	rm ${PREFIX}/lib/gjs-1.0/*.la

.include <bsd.port.mk>
