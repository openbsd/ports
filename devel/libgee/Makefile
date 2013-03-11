# $OpenBSD: Makefile,v 1.31 2013/03/11 10:50:10 espie Exp $

COMMENT=	GObject based collection library

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.8.5

SHARED_LIBS +=  gee-0.8                   1.0 # 1.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/Libgee

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 gthread-2.0 pcre pthread

BUILD_DEPENDS=	lang/vala

LIB_DEPENDS=	devel/glib2

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= goi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc

.include <bsd.port.mk>
