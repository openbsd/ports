# $OpenBSD: Makefile,v 1.5 1999/04/01 02:16:35 brad Exp $

DISTNAME=       bzip-0.21
CATEGORIES=	archivers
NO_CDROM=       "NOFEE: can not sell"
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

MAINTAINER=     ports@openbsd.org

pre-install:
	@${CAT} ${FILESDIR}/COPYRIGHT

do-install:
	${RM} -f ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin/bzip
	ln -fs ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bzip.1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
