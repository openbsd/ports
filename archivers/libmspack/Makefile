# $OpenBSD: Makefile,v 1.15 2017/11/09 15:07:02 jasper Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.6alpha
EPOCH=		0
SHARED_LIBS +=  mspack               3.0      # 1.0
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://www.cabextract.org.uk/libmspack/

WANTLIB +=	c
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
