# $OpenBSD: Makefile,v 1.60 2014/04/02 09:36:10 jasper Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.12.0

SHARED_LIBS +=  atk-1.0              21209.1  # 21209.1

CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 pcre pthread

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=	devel/glib2>=2.40.0

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
