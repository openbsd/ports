# $OpenBSD: Makefile,v 1.22 2020/03/26 19:55:08 jca Exp $

COMMENT=	library for handling Microsoft compression formats

DISTNAME=	libmspack-0.10.1alpha
EPOCH=		2

SHARED_LIBS +=  mspack               3.0      # 1.0

CATEGORIES=	archivers

HOMEPAGE=	https://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB +=	c

MASTER_SITES=	https://www.cabextract.org.uk/libmspack/

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes

.include <bsd.port.mk>
