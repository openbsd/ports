# $OpenBSD: Makefile,v 1.19 2007/09/20 11:43:11 bluhm Exp $

COMMENT=	perl interface to SSL sockets

DISTNAME=	IO-Socket-SSL-1.09
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	:p5-Net-SSLeay->=1.21:security/p5-Net_SSLeay
BUILD_DEPENDS=	${RUN_DEPENDS}

EXDIR=		${PREFIX}/share/examples/p5-IO-Socket-SSL/

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/example/*.pl ${EXDIR}

.include <bsd.port.mk>
