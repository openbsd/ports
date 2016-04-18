# $OpenBSD: Makefile,v 1.64 2016/04/18 06:46:54 ajacoutot Exp $

COMMENT=		accessibility toolkit used by gtk+

GNOME_PROJECT=		atk
GNOME_VERSION=		2.20.0

SHARED_LIBS +=  atk-1.0              21809.1  # 22009.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 iconv intl pcre pthread

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2>=2.48.0

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
