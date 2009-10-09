# $OpenBSD: Makefile,v 1.12 2009/10/09 23:24:21 sthen Exp $

COMMENT=	provide framework for multiple event loops

MODULES=	cpan
DISTNAME=	AnyEvent-5.201
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
