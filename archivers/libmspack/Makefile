# $OpenBSD: Makefile,v 1.16 2018/08/01 07:32:11 jasper Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.6alpha
EPOCH=		0
REVISION=	0
SHARED_LIBS +=  mspack               3.0      # 1.0
CATEGORIES=	archivers

HOMEPAGE=	https://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	https://www.cabextract.org.uk/libmspack/

WANTLIB +=	c
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
