# $OpenBSD: Makefile,v 1.2 1998/10/07 05:14:56 marc Exp $
#

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.tohoku.ac.jp/pub/net/telnet/telnetx/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs ${PREFIX}/bin/bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
