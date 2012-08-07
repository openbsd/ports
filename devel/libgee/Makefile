# $OpenBSD: Makefile,v 1.20 2012/08/07 09:18:21 ajacoutot Exp $

COMMENT=	GObject based collection library 

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.7.3

SHARED_LIBS +=  gee-0.8                   0.0 # 0.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/Libgee

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi pcre glib-2.0 gobject-2.0 gthread-2.0

BUILD_DEPENDS=	lang/vala

LIB_DEPENDS=	devel/glib2

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= goi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc

.include <bsd.port.mk>
