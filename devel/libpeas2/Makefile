COMMENT=	GObject plugins library

GNOME_PROJECT=	libpeas
GNOME_VERSION=	2.2.0
PKGNAME=	${GNOME_PROJECT}2-${GNOME_VERSION}
REVISION=	0

CATEGORIES=	devel

SHARED_LIBS += peas-2                    0.1 # 0.200.0

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c++abi gio-2.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl mozjs-140 ${MODLUA_WANTLIB} ${MODPY_WANTLIB}

MODULES=	devel/meson \
		lang/lua \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/lua-lgi \
		devel/py-gobject3 \
		lang/luajit

RUN_DEPENDS=	devel/py-gobject3 \
		devel/lua-lgi

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		devel/spidermonkey140 \
		x11/gnome/gjs

MODGNOME_TOOLS=	gobject-introspection gtk-update-icon-cache vala

CONFIGURE_ARGS=	-Dvapi=true

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
