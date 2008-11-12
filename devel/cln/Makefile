# $OpenBSD: Makefile,v 1.4 2008/11/12 23:56:07 pirofti Exp $

NOT_FOR_ARCHS=	arm

COMMENT=	library for efficient computations 

DISTNAME=	cln-1.2.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  cln                  1.0      # .5.2
CATEGORIES=	devel

HOMEPAGE=	http://www.ginac.de/CLN/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

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
