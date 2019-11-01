# $OpenBSD: Makefile,v 1.65 2019/11/01 19:44:13 jasper Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.24.1

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.2      # 0.2400.1
SHARED_LIBS +=  peas-gtk-1.0         400.2      # 0.2400.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += c gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 python${MODPY_DEFAULT_VERSION_2}

MODULES=	devel/meson \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gtk+3

MODGNOME_TOOLS +=	gtk-update-icon-cache
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_ARGS +=	-Dglade_catalog=false\
			-Dlua51=false \
			-Dpython2=true

# we need support for both python2 and python3
BUILD_DEPENDS +=lang/python/${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_2} \
		devel/py-gobject3

.include <bsd.port.mk>
