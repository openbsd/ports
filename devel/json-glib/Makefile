# $OpenBSD: Makefile,v 1.25 2013/09/28 08:50:45 ajacoutot Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		0.16.2
REVISION=		0

SHARED_LIBS +=  json-glib-1.0        5.0      # 1600.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pthread
WANTLIB += pcre z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
