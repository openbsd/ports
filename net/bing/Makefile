# $OpenBSD: Makefile,v 1.26 2013/03/11 11:35:45 espie Exp $

COMMENT=	point-to-point bandwidth measurement tool

DISTNAME=	bing-1.0.5
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.ens.fr/pub/unix/syst/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bing
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bing

.include <bsd.port.mk>
