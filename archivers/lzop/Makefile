# $OpenBSD: Makefile,v 1.10 2002/04/24 17:15:38 danh Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

COMMENT=	"fast file compressor similar to gzip"

DISTNAME=	lzop-1.00
CATEGORIES=	archivers
NEED_VERSION=	1.384
MASTER_SITES=	http://www.oberhumer.com/opensource/lzop/download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzop/

LIB_DEPENDS=	lzo.1::archivers/lzo

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/acconfig

.include <bsd.port.mk>
