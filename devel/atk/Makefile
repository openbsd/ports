# $OpenBSD: Makefile,v 1.61 2014/10/01 08:40:07 ajacoutot Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.14.0

SHARED_LIBS +=  atk-1.0              21409.1  # 21409.1

CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 pcre pthread

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=	devel/glib2>=2.42.0

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
