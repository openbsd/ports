# $OpenBSD: Makefile,v 1.32 2004/07/31 15:36:46 naddy Exp $

COMMENT=	"portable speedy lossless data compression library"

DISTNAME=	lzo-1.08
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acconfig

REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
