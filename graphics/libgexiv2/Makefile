# $OpenBSD: Makefile,v 1.13 2014/03/18 07:49:10 ajacoutot Exp $

COMMENT=	GObject wrapper around exiv2

GNOME_VERSION=	0.10.0
GNOME_PROJECT=	gexiv2
PKGNAME=	lib${DISTNAME}

CATEGORIES=	graphics

SHARED_LIBS +=  gexiv2               2.0      # 2.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 m pcre pthread
WANTLIB += stdc++ z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gi

LIB_DEPENDS=	graphics/exiv2 \
		devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
