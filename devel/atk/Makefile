# $OpenBSD: Makefile,v 1.71 2019/04/28 06:29:29 ajacoutot Exp $

COMMENT=		accessibility toolkit used by gtk+

GNOME_PROJECT=		atk
GNOME_VERSION=		2.32.0

SHARED_LIBS +=  atk-1.0              21809.3  # 0.23209.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

.include <bsd.port.mk>
