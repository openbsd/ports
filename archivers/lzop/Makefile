# $OpenBSD: Makefile,v 1.32 2017/08/23 09:04:06 fcambus Exp $

COMMENT=	fast file compressor similar to gzip

DISTNAME=	lzop-1.04
CATEGORIES=	archivers
HOMEPAGE=	https://www.lzop.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	archivers/lzo2
WANTLIB=	c lzo2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
