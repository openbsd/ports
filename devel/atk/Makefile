# $OpenBSD: Makefile,v 1.72 2019/07/12 20:44:03 sthen Exp $

COMMENT=		accessibility toolkit used by gtk+

GNOME_PROJECT=		atk
GNOME_VERSION=		2.32.0

SHARED_LIBS +=  atk-1.0              21809.3  # 0.23209.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

.include <bsd.port.mk>
