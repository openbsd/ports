# $OpenBSD: Makefile,v 1.1.1.1 2000/12/26 12:35:05 reinhard Exp $

DISTNAME=	xmedcon-0.5.2
CATEGORIES=	graphics
NEED_VERSION=	1.346

MASTER_SITES=	http://download.sourceforge.net/xmedcon/

HOMEPAGE=	http://xmedcon.sourceforge.net

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

LIB_DEPENDS=	gdk_pixbuf::graphics/gdk-pixbuf \
		gtk.1.2::x11/gtk+
		
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static 
CONFIGURE_ARGS+= --prefix=${PREFIX}
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" 

.include <bsd.port.mk>
