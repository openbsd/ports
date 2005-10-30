# $OpenBSD: Makefile,v 1.34 2005/10/30 00:10:39 fgsch Exp $

COMMENT=	"portable speedy lossless data compression library"

DISTNAME=	lzo-1.08
PKGNAME=	${DISTNAME}p0
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

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
