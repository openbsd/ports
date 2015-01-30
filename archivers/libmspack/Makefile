# $OpenBSD: Makefile,v 1.12 2015/01/30 13:34:40 jasper Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.4alpha
EPOCH=		0
REVISION=	0
SHARED_LIBS +=  mspack               3.0      # 1.0
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://www.cabextract.org.uk/libmspack/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
