# $OpenBSD: Makefile,v 1.19 2016/10/26 08:38:46 ajacoutot Exp $

COMMENT=	GObject wrapper around exiv2

GNOME_VERSION=	0.10.4
GNOME_PROJECT=	gexiv2
PKGNAME=	lib${DISTNAME}

CATEGORIES=	graphics

SHARED_LIBS +=  gexiv2               2.1      # 2.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 iconv intl m pcre
WANTLIB += pthread stdc++ z

MODULES=	x11/gnome

MODGNOME_TOOLS=	gobject-introspection vala

LIB_DEPENDS=	graphics/exiv2 \
		devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
