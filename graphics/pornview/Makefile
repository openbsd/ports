# $OpenBSD: Makefile,v 1.1.1.1 2003/07/04 20:52:20 naddy Exp $

COMMENT=	"image viewer/manager"
DISTNAME=	pornview-0.2.0pre1
CATEGORIES=	graphics

HOMEPAGE=	http://pornview.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pornview/}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		  -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" 

.include <bsd.port.mk>
