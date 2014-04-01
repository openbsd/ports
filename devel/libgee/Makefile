# $OpenBSD: Makefile,v 1.44 2014/04/01 18:06:28 jasper Exp $

COMMENT=	GObject based collection library

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.14.0

SHARED_LIBS +=  gee-0.8              3.0      # 6.0

CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS += gobject-introspection vala

LIB_DEPENDS=	devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
