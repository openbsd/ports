# $OpenBSD: Makefile,v 1.20 2006/08/01 10:50:19 espie Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

COMMENT=	"fast file compressor similar to gzip"

DISTNAME=	lzop-1.01
CATEGORIES=	archivers
HOMEPAGE=	http://www.lzop.org/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

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
