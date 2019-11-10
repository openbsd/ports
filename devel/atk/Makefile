# $OpenBSD: Makefile,v 1.76 2019/11/10 21:44:06 ajacoutot Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.34.1
REVISION=	1

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

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	devel/glib2

.include <bsd.port.mk>
