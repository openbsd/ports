# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:12 sthen Exp $

COMMENT=	library for handling Microsoft compression formats

DISTNAME=	libmspack-0.10.1alpha

# XXX packages-specs(7) does not treat "alpha" specially; there is just an
# alphanumeric comparison so 0.9alpha is "higher than" 0.10alpha.
EPOCH=		1

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
