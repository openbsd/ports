# $OpenBSD: Makefile,v 1.3 1999/04/01 02:57:55 brad Exp $

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.tohoku.ac.jp/pub/net/telnet/telnetx/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs ${PREFIX}/bin/bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
