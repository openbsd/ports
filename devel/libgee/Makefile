# $OpenBSD: Makefile,v 1.26 2012/11/11 08:45:31 ajacoutot Exp $

COMMENT=	GObject based collection library

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.8.2

SHARED_LIBS +=  gee-0.8                   1.0 # 1.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/Libgee

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 gthread-2.0 pcre pthread

BUILD_DEPENDS=	lang/vala

# XXX see patch-gee_Makefile_in
BUILD_DEPENDS+=	textproc/gsed

LIB_DEPENDS=	devel/glib2

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= goi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc

.include <bsd.port.mk>
