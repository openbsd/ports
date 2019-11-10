# $OpenBSD: Makefile,v 1.74 2019/11/10 16:05:54 ajacoutot Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.34.1
REVISION=	0

SHARED_LIBS +=  atk-1.0              21809.3  # 0.23410.1

CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 gobject-2.0 intl

MODULES=	devel/meson \
		x11/gnome

MODGNOME_TOOLS=	gobject-introspection

LIB_DEPENDS=	devel/glib2

DEBUG_PACKAGES=	-
DEBUG_FILES=	lib/libatk-1.0.so.${LIBatk-1.0_VERSION}

.include <bsd.port.mk>
