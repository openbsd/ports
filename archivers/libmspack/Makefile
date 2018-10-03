# $OpenBSD: Makefile,v 1.17 2018/10/03 20:28:54 sthen Exp $

COMMENT=	library for handling Microsoft compression formats

DISTNAME=	libmspack-0.7.1alpha
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
