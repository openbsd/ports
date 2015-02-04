# $OpenBSD: Makefile,v 1.13 2015/02/04 09:45:49 sthen Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.5alpha
EPOCH=		0
SHARED_LIBS +=  mspack               3.0      # 1.0
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://www.cabextract.org.uk/libmspack/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
