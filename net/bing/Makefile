# $OpenBSD: Makefile,v 1.21 2007/09/15 22:36:52 merdely Exp $

COMMENT=	point-to-point bandwidth measurement tool

DISTNAME=	bing-1.0.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.ens.fr/pub/unix/syst/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bing
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bing

.include <bsd.port.mk>
