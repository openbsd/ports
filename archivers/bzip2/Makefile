# OpenBSD makefile for:    bzip2
# Version required:     0.1pl2
# Date created:         24 Nov 1997
# Whom:                 angelos@openbsd.org
#
# $OpenBSD: Makefile,v 1.2 1997/11/25 21:36:28 angelos Exp $
#

DISTNAME=	bzip2-0.1pl2
PKGNAME=	bzip2-0.1p2
CATEGORIES=	archivers
MASTER_SITES=	http://www.muraroa.demon.co.uk/

MAINTAINER=	angelos@openbsd.org

MAN1=		bzip2.1 bunzip2.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2 ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/bzip2 ${PREFIX}/bin/bunzip2
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2recover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bzip2.1 ${PREFIX}/man/man1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bunzip2.1

.include <bsd.port.mk>
