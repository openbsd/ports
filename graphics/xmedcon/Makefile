# $OpenBSD: Makefile,v 1.9 2006/08/03 12:53:18 espie Exp $

COMMENT=	"medical image conversion"

DISTNAME=	xmedcon-0.5.2
PKGNAME=	${DISTNAME}p0
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
WANTLIB=		X11 Xext Xi c gdk glib gmodule iconv intl jpeg m png \
			tiff z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static 

.include <bsd.port.mk>
