# $OpenBSD: Makefile,v 1.2 2010/06/15 18:07:42 ajacoutot Exp $

COMMENT=	GObject based collection library 

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.5.1

SHARED_LIBS +=  gee 0.0 # .2.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/Libgee

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre

BUILD_DEPENDS=	::lang/vala
LIB_DEPENDS=	glib-2.0.>=1803,gobject-2.0,gthread-2.0::devel/glib2

MODULES=	devel/gettext \
		x11/gnome

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-doc=no

.include <bsd.port.mk>
