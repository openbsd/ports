# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:29 sthen Exp $

COMMENT=	fast file compressor similar to gzip

DISTNAME=	lzop-1.04
CATEGORIES=	archivers
HOMEPAGE=	https://www.lzop.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	archivers/lzo2
WANTLIB=	c lzo2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
