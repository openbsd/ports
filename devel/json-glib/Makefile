# $OpenBSD: Makefile,v 1.27 2014/03/27 07:52:14 jasper Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		1.0.0

SHARED_LIBS +=  json-glib-1.0        5.1      # 0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pthread
WANTLIB += pcre z

MODULES=		devel/gettext \
			x11/gnome
# man pages
BUILD_DEPENDS=		textproc/docbook-xsl

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
