# $OpenBSD: Makefile,v 1.19 2019/10/07 18:26:07 jca Exp $

COMMENT=	file compressor with a high compression ratio

DISTNAME=	rzip-2.1
REVISION=	2
CATEGORIES=	archivers
HOMEPAGE=	https://rzip.samba.org/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://filedump.se.rit.edu/pub/distfiles/ \
		${HOMEPAGE}ftp/rzip/ \
		${HOMEPAGE}ftp/rzip/old-versions/

LIB_DEPENDS =	archivers/bzip2
WANTLIB =	c bz2

CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
