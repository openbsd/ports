# $OpenBSD: Makefile,v 1.9 1999/04/20 00:13:48 brad Exp $

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
	ln -sf ${PREFIX}/bin/bzip2 ${PREFIX}/bin/bzcat
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2recover ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bzlib.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libbz2.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/bzip2.1 ${PREFIX}/man/man1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bunzip2.1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bzcat.1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bzip2recover.1

.include <bsd.port.mk>
