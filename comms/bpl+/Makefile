# $OpenBSD: Makefile,v 1.4 1999/08/18 02:09:45 angelos Exp $

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms

MAINTAINER=	ports@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs ${PREFIX}/bin/bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
