# $OpenBSD: Makefile,v 1.18 2011/09/23 09:09:22 jasper Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		0.14.0

SHARED_LIBS +=  json-glib-1.0        4.0      # 1400.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://live.gnome.org/JsonGlib

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
