# $OpenBSD: Makefile,v 1.15 2003/06/06 18:55:36 naddy Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

COMMENT=	"fast file compressor similar to gzip"

DISTNAME=	lzop-1.01
CATEGORIES=	archivers
HOMEPAGE=	http://www.oberhumer.com/opensource/lzop/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	lzo.1::archivers/lzo

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/acconfig

.include <bsd.port.mk>
