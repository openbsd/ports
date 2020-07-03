# $OpenBSD: Makefile,v 1.67 2020/07/03 21:12:39 sthen Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.26.0
REVISION=	0

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.3      # 0.2600.0
SHARED_LIBS +=  peas-gtk-1.0         400.3      # 0.2600.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl ${MODPY_WANTLIB}

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
			-Dpython2=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
