# $OpenBSD: Makefile,v 1.8 2013/03/10 22:28:04 espie Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.3alpha
EPOCH=		0
SHARED_LIBS +=	mspack               2.0      # .1.0
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${HOMEPAGE}

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

.include <bsd.port.mk>
