# $OpenBSD: Makefile,v 1.1.1.1 2003/04/21 15:00:41 sturm Exp $

COMMENT=	"simple library designed for DVD navigation"

DISTNAME=	libdvdplay-1.0.1
CATEGORIES=	devel
MASTER_SITES=	http://www.videolan.org/pub/libdvdplay/1.0.1/

HOMEPAGE=	http://developers.videolan.org/libdvdplay/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	dvdread::devel/libdvdread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
