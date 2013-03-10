# $OpenBSD: Makefile,v 1.12 2013/03/10 22:28:05 espie Exp $

COMMENT=	file compressor with a high compression ratio

DISTNAME=	rzip-2.1
CATEGORIES=	archivers
HOMEPAGE=	http://rzip.samba.org/

MAINTAINER=	Lawrence Teo <lteo.openbsd1@calyptix.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}ftp/rzip/ \
		${HOMEPAGE}ftp/rzip/old-versions/

LIB_DEPENDS =	archivers/bzip2
WANTLIB =	c bz2

FAKE=lib
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
