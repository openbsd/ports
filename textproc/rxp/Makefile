# $OpenBSD: Makefile,v 1.2 1999/09/23 21:13:39 jakob Exp $

DISTNAME=	rxp-1.0.9
CATEGORIES=	textproc

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
