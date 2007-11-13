# $OpenBSD: Makefile,v 1.12 2007/11/13 17:10:26 steven Exp $

COMMENT=	medical image conversion

DISTNAME=	xmedcon-0.5.2
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	mdc	0.0
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmedcon/}

HOMEPAGE=	http://xmedcon.sourceforge.net

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

LIB_DEPENDS=	gtk.>=1.2::x11/gtk+ \
		gdk_pixbuf::graphics/gdk-pixbuf
		
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext Xi c gdk glib gmodule jpeg m png tiff z

MODULES=	devel/gettext

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static 

.include <bsd.port.mk>
