# $OpenBSD: Makefile,v 1.6 1999/08/13 06:09:32 brad Exp $

DISTNAME=       bzip-0.21
CATEGORIES=	archivers
NO_CDROM=       "NOFEE: can not sell"
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

MAINTAINER=     ports@openbsd.org

pre-install:
	@${CAT} ${FILESDIR}/COPYRIGHT

do-install:
	@${RM} -f ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin/bzip
	@${LN} -fs ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bzip.1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
