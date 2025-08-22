COMMENT=	GObject plugins library

GNOME_PROJECT=	libpeas
GNOME_VERSION=	2.0.7
PKGNAME=	${GNOME_PROJECT}2-${GNOME_VERSION}
REVISION=	0

CATEGORIES=	devel

SHARED_LIBS += peas-2                    0.0 # 0.0.7

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c++abi gio-2.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl mozjs-128

MODULES=	devel/meson \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3

RUN_DEPENDS=	devel/py-gobject3

LIB_DEPENDS=	devel/spidermonkey128 \
		x11/gnome/gjs

MODGNOME_TOOLS=	gobject-introspection gtk-update-icon-cache vala

CONFIGURE_ARGS= -Dlua51=false \
		-Dvapi=true

# XXX unbreak at least www/liferea; should be fixed for GNOME 49.
# https://gedit-text-editor.org/blog/2025-04-30-no-more-pythons-in-gedit.html
# https://gitlab.gnome.org/GNOME/libpeas/-/issues/58
CONFIGURE_ARGS +=	-Dpython3=false

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
