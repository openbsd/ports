# $OpenBSD: Makefile,v 1.1.1.1 2007/11/20 12:09:52 steven Exp $

NOT_FOR_ARCHS=	sparc64

COMMENT=	library for efficient computations 

DISTNAME=	cln-1.1.13
SHARED_LIBS +=  cln                  0.0      # .4.2
CATEGORIES=	devel

HOMEPAGE=	http://www.ginac.de/CLN/

MAINTAINER=	Paul Irofti <bulibuta@gmail.com>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	gmp::devel/gmp 

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
