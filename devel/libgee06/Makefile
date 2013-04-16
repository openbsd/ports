# $OpenBSD: Makefile,v 1.10 2013/04/16 13:17:01 ajacoutot Exp $

COMMENT=	GObject based collection library

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.6.8
PKGNAME=	${GNOME_PROJECT}06-${GNOME_VERSION}

SHARED_LIBS +=  gee 1.0 # .2.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/Libgee

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi pcre glib-2.0 gobject-2.0 gthread-2.0 pthread

BUILD_DEPENDS=	lang/vala

LIB_DEPENDS=	devel/glib2

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= gi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc

.include <bsd.port.mk>
