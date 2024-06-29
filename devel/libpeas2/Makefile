COMMENT=	GObject plugins library

GNOME_PROJECT=	libpeas
GNOME_VERSION=	2.0.3
PKGNAME=	${GNOME_PROJECT}2-${GNOME_VERSION}

CATEGORIES=	devel

SHARED_LIBS += peas-2                    0.0 # 0.0.3

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c++abi gio-2.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl mozjs-115 ${MODPY_WANTLIB}

MODULES=	devel/meson \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		x11/gnome/gjs

MODGNOME_TOOLS=	gobject-introspection gtk-update-icon-cache vala

CONFIGURE_ARGS= -Dlua51=false \
		-Dvapi=true

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
