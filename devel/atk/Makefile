# $OpenBSD: Makefile,v 1.67 2017/09/25 09:16:12 robert Exp $

COMMENT=		accessibility toolkit used by gtk+

GNOME_PROJECT=		atk
GNOME_VERSION=		2.24.0

REVISION=		0

SHARED_LIBS +=  atk-1.0              21809.1  # 22409.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 iconv intl pcre pthread

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
