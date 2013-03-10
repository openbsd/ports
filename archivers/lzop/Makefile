# $OpenBSD: Makefile,v 1.31 2013/03/10 22:28:04 espie Exp $

COMMENT=	fast file compressor similar to gzip

DISTNAME=	lzop-1.03
CATEGORIES=	archivers
HOMEPAGE=	http://www.lzop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	archivers/lzo2
WANTLIB=	c lzo2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
