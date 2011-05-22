# $OpenBSD: Makefile,v 1.6 2011/05/22 18:25:39 jasper Exp $

COMMENT=	library for handling microsoft compression formats

DISTNAME=	libmspack-0.3alpha
EPOCH=		0
SHARED_LIBS +=	mspack               2.0      # .1.0
CATEGORIES=	archivers

HOMEPAGE=	http://www.cabextract.org.uk/libmspack/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-silent-rules

.include <bsd.port.mk>
