# $OpenBSD: Makefile,v 1.48 2016/10/12 09:17:57 ajacoutot Exp $

COMMENT=		GObject based collection library

GNOME_PROJECT=		libgee
GNOME_VERSION=		0.18.1

SHARED_LIBS +=  gee-0.8              3.1      # 7.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
