# $OpenBSD: Makefile,v 1.4 2008/10/28 01:23:34 jasper Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.0.20060920alpha
SHARED_LIBS +=	mspack               2.0      # .1.0
PKGNAME=	libmspack-20060920a
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
