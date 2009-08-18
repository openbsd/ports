# $OpenBSD: Makefile,v 1.29 2009/08/18 20:48:58 bluhm Exp $

COMMENT=	perl interface to SSL sockets

DISTNAME=	IO-Socket-SSL-1.27

CATEGORIES=	security

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Net-SSLeay->=1.21:security/p5-Net_SSLeay
REGRESS_DEPENDS=	::net/p5-IO-Socket-INET6

EXDIR=		${PREFIX}/share/examples/p5-IO-Socket-SSL/

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/example/*.pl ${EXDIR}

.include <bsd.port.mk>
