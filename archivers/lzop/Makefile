# $OpenBSD: Makefile,v 1.26 2010/10/19 19:45:53 espie Exp $
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

LIB_DEPENDS=	::archivers/lzo2
WANTLIB=	c lzo2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
