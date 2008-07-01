# $OpenBSD: Makefile,v 1.22 2008/07/01 16:41:19 ajacoutot Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

COMMENT=	fast file compressor similar to gzip

DISTNAME=	lzop-1.01
PKGNAME=	${DISTNAME}p0
CATEGORIES=	archivers
HOMEPAGE=	http://www.lzop.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	lzo.>=1::archivers/lzo
WANTLIB=	c

FAKE=		lib
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib" \
		ac_cv_header_io_h=no

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/acconfig

.include <bsd.port.mk>
