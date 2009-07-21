# $OpenBSD: Makefile,v 1.11 2009/07/21 13:52:52 jasper Exp $

COMMENT=	provide framework for multiple event loops

MODULES=	cpan
DISTNAME=	AnyEvent-4.85
CATEGORIES=	devel
CPAN_AUTHOR=	MLEHMANN

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EG_DIR= 	${PREFIX}/share/examples/p5-AnyEvent/

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/eg/* ${EG_DIR}

.include <bsd.port.mk>
