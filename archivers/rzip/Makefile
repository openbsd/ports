# $OpenBSD: Makefile,v 1.15 2016/04/29 14:05:34 jca Exp $

COMMENT=	file compressor with a high compression ratio

DISTNAME=	rzip-2.1
REVISION=	0
CATEGORIES=	archivers
HOMEPAGE=	http://rzip.samba.org/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}ftp/rzip/ \
		${HOMEPAGE}ftp/rzip/old-versions/

LIB_DEPENDS =	archivers/bzip2
WANTLIB =	c bz2

CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
