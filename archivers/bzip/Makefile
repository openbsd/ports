# OpenBSD makefile for:    bzip
# Version required:     0.21
# Date created:         14 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.3 1997/12/29 17:12:55 joey Exp $
#

DISTNAME=       bzip-0.21
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

MAINTAINER=     joey@OpenBSD.ORG

NO_CDROM=       "Restrictive copyright (don't sell for profit)"
MAN1=		bzip.1 bunzip.1

pre-install:
	@${CAT} ${FILESDIR}/COPYRIGHT

do-install:
	${RM} -f ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin/bzip
	ln -fs ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bzip.1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
