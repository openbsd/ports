# $OpenBSD: Makefile,v 1.23 2009/11/20 13:35:25 ajacoutot Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

COMMENT=	fast file compressor similar to gzip

DISTNAME=	lzop-1.02rc1
CATEGORIES=	archivers
HOMEPAGE=	http://www.lzop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	lzo2::archivers/lzo2
WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"

.include <bsd.port.mk>
