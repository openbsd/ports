# $OpenBSD: Makefile,v 1.3 2006/01/03 14:55:18 bernd Exp $

COMMENT=	"simple library designed for DVD navigation"

DISTNAME=	libdvdplay-1.0.1
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	dvdplay 0.1
CATEGORIES=	devel
MASTER_SITES=	http://www.videolan.org/pub/libdvdplay/1.0.1/

HOMEPAGE=	http://developers.videolan.org/libdvdplay/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	dvdread::devel/libdvdread

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
