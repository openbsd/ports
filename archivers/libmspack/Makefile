# $OpenBSD: Makefile,v 1.19 2019/01/21 15:27:29 sthen Exp $

COMMENT=	library for handling Microsoft compression formats

DISTNAME=	libmspack-0.9.1alpha
EPOCH=		0
SHARED_LIBS +=  mspack               3.0      # 1.0
CATEGORIES=	archivers

HOMEPAGE=	https://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	https://www.cabextract.org.uk/libmspack/

WANTLIB +=	c

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes

.include <bsd.port.mk>
