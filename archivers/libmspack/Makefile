# $OpenBSD: Makefile,v 1.10 2013/04/04 16:03:55 brad Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.3alpha
REVISION=	0
EPOCH=		0
SHARED_LIBS +=	mspack               2.0      # .1.0
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${HOMEPAGE}


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

.include <bsd.port.mk>
