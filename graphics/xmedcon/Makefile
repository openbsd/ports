# $OpenBSD: Makefile,v 1.3 2002/05/20 00:15:23 brad Exp $

COMMENT=	"medical image conversion"

DISTNAME=	xmedcon-0.5.2
CATEGORIES=	graphics
NEED_VERSION=	1.402

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmedcon/}

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
