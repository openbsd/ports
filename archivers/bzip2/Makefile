# $OpenBSD: Makefile,v 1.6 1999/02/11 05:51:07 fgsch Exp $
#

DISTNAME=	bzip2-0.9.0c
PKGNAME=	bzip2-0.9.0c
CATEGORIES=	archivers

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.digistar.com/bzip2/ \
		http://www.muraroa.demon.co.uk/

USE_GMAKE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2 ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/bzip2 ${PREFIX}/bin/bunzip2
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2recover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bzip2.1 ${PREFIX}/man/man1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bunzip2.1

.include <bsd.port.mk>
